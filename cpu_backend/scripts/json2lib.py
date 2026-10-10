#!/usr/bin/env python3
"""Convert sky130_fd_sc_hd .lib.json (coriolis format) to text .lib (NLDM).
Merges 428 per-cell JSONs + library header into one Liberty file with
explicit lu_table_templates (required by ABC/OpenSTA parsers)."""
import glob, json, os

TIMING_DIR = "skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing"
CELLS_DIR  = "skywater-pdk/libraries/sky130_fd_sc_hd/latest/cells"
CORNER     = "tt_025C_1v80"
OUT        = "skywater-pdk/libraries/sky130_fd_sc_hd/sky130_fd_sc_hd__tt_025C_1v80.lib"

def fmt(v):
    return f"{v:.10g}" if isinstance(v, (int, float)) else str(v)

def fmt_list(lst):
    return ", ".join(fmt(x) for x in lst)

def fmt_matrix(m):
    if m and not isinstance(m[0], (list, tuple)):
        return "      " + fmt_list(m)
    rows = ["      " + fmt_list(r) for r in m]
    return ",\n".join(rows)

def esc(s):
    return s.replace("\\", "\\\\").replace('"', '\\"')

TPL_NAMES, TPL_DEFS = {}, {}
def register_template(idx1, idx2):
    key = (tuple(idx1), tuple(idx2 or []))
    if key not in TPL_NAMES:
        nm = f"tpl_{len(TPL_NAMES)+1}"
        TPL_NAMES[key] = nm
        TPL_DEFS[nm] = (list(idx1), list(idx2 or []))
    return TPL_NAMES[key]

def conv_timing_table(tbl):
    if not isinstance(tbl, dict):
        return ""
    s = ""
    for k, v in tbl.items():
        if not isinstance(v, dict) or "index_1" not in v:
            continue
        tname = k.split(",")[0]
        tpl = register_template(v.get("index_1", []), v.get("index_2", []))
        s += f"      {tname}({tpl}) {{\n"
        s += f"        values(\n{fmt_matrix(v.get('values', []))}\n        );\n"
        s += "      }\n"
    return s

def conv_power_table(tbl):
    if isinstance(tbl, list):
        return "".join(conv_power_table(x) for x in tbl)
    if not isinstance(tbl, dict):
        return ""
    s = ""
    for k, v in tbl.items():
        if not isinstance(v, dict) or "values" not in v:
            continue
        tpl = register_template(v.get("index_1", []), v.get("index_2", []))
        s += f"      {k.split(',')[0]}({tpl}) {{\n"
        s += f"        values(\n{fmt_matrix(v.get('values', []))}\n        );\n"
        s += "      }\n"
    return s

# ---- header ----
with open(f"{TIMING_DIR}/sky130_fd_sc_hd__{CORNER}.lib.json") as f:
    g = json.load(f)

out = []
out.append("library(sky130_fd_sc_hd) {")
out.append('  delay_model : table_lookup;')
out.append('  time_unit : "1ns";')
out.append('  voltage_unit : "1V";')
out.append('  current_unit : "1mA";')
out.append('  capacitance_unit : "1pF";')
out.append('  pulling_resistance_unit : "1kohm";')
out.append('  leakage_power_unit : "1nW";')
out.append(f"  nom_temperature : {fmt(g.get('nom_temperature', 25))};")
out.append(f"  nom_voltage : {fmt(g.get('nom_voltage', 1.8))};")
out.append(f"  default_max_transition : {fmt(g.get('default_max_transition', 1.5))};")
out.append(f"  operating_conditions({CORNER}) {{")
out.append("    process : 1;")
out.append(f"    voltage : {fmt(g.get('nom_voltage', 1.8))};")
out.append(f"    temperature : {fmt(g.get('nom_temperature', 25))};")
out.append("  }")
out.append("  default_operating_conditions : tt_025C_1v80;")

# ---- cells ----
cells_parsed = 0
for jf in sorted(glob.glob(f"{CELLS_DIR}/*/*__{CORNER}.lib.json")):
    with open(jf) as f:
        c = json.load(f)
    cname = os.path.basename(jf).replace(f"__{CORNER}.lib.json", "")
    out.append(f"  cell({cname}) {{")
    for a in ("area", "cell_footprint", "cell_leakage_power"):
        if a in c:
            out.append(f'    {a} : {fmt(c[a])};' if a != "cell_footprint" else f'    {a} : "{esc(c[a])}";')
    # note: leakage_power() group omitted - ABC's liberty parser aborts on it
    # cell_leakage_power scalar is kept for power estimation
    # ff / lat groups
    has_ff = any(fk.startswith("ff,") or fk.startswith("lat,") for fk in c)
    for fk, fv in c.items():
        if (fk.startswith("ff,") or fk.startswith("lat,")) and isinstance(fv, dict):
            parts = fk.split(",")
            gname = "ff" if fk.startswith("ff,") else "lat"
            out.append(f"    {gname}({parts[1]}, {parts[2]}) {{")
            for a, b in (("clocked_on", "clocked_on"), ("next_state", "next_state"),
                         ("data_in", "data_in"), ("enable", "enable")):
                if a in fv:
                    out.append(f'      {b} : "{esc(fv[a])}";')
            out.append("    }")
    # pins
    for pk, pv in c.items():
        if not (pk.startswith("pin,") or pk.startswith("pg_pin,")):
            continue
        pname = pk.split(",", 1)[1]
        is_pg = pk.startswith("pg_pin,")
        out.append(f"    {'pg_pin' if is_pg else 'pin'}({pname}) {{")
        if is_pg:
            for a in ("pg_type", "voltage_name", "related_bias_pin", "physical_connection"):
                if a in pv:
                    out.append(f"      {a} : {pv[a]};")
            out.append("    }")
            continue
        if "direction" in pv:
            out.append(f"      direction : {pv['direction']};")
        if "function" in pv:
            fn = pv["function"].replace("~", "!").replace("&&", "&").replace("||", "|")
            out.append(f'      function : "{esc(fn)}";')
        for a in ("capacitance", "rise_capacitance", "fall_capacitance", "max_transition", "max_capacitance"):
            if a in pv:
                out.append(f"      {a} : {fmt(pv[a])};")
        if "timing" in pv and isinstance(pv["timing"], list):
            for arc in pv["timing"]:
                if not isinstance(arc, dict):
                    continue
                out.append("      timing () {")
                if "related_pin" in arc:
                    out.append(f'        related_pin : "{esc(arc["related_pin"])}";')
                if "timing_sense" in arc:
                    out.append(f"        timing_sense : {arc['timing_sense']};")
                if "timing_type" in arc:
                    out.append(f"        timing_type : {arc['timing_type']};")
                out.append(conv_timing_table(arc))
                out.append("      }")
        # internal_power group omitted: ABC parser aborts cell parse when it
        # appears before timing; power estimated from leakage + OpenSTA later
        out.append("    }")
    out.append("  }")
    cells_parsed += 1

out.append("}")
text = "\n".join(out)
idx = text.find("  cell(")
tpls = []
for nm, (idx1, idx2) in TPL_DEFS.items():
    tpls.append(f"  lu_table_template({nm}) {{")
    tpls.append("    variable_1 : input_net_transition;")
    if idx2:
        tpls.append("    variable_2 : total_output_net_capacitance;")
    tpls.append(f'    index_1("{fmt_list(idx1)}");')
    if idx2:
        tpls.append(f'    index_2("{fmt_list(idx2)}");')
    tpls.append("  }")
final = text[:idx] + "\n".join(tpls) + "\n" + text[idx:]
with open(OUT, "w") as f:
    f.write(final)
print(f"converted {cells_parsed} cells, {len(TPL_DEFS)} templates -> {OUT}")
