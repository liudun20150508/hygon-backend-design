module picorv32 (clk,
    mem_instr,
    mem_la_read,
    mem_la_write,
    mem_ready,
    mem_valid,
    pcpi_ready,
    pcpi_valid,
    pcpi_wait,
    pcpi_wr,
    resetn,
    trace_valid,
    trap,
    eoi,
    irq,
    mem_addr,
    mem_la_addr,
    mem_la_wdata,
    mem_la_wstrb,
    mem_rdata,
    mem_wdata,
    mem_wstrb,
    pcpi_insn,
    pcpi_rd,
    pcpi_rs1,
    pcpi_rs2,
    trace_data);
 input clk;
 output mem_instr;
 output mem_la_read;
 output mem_la_write;
 input mem_ready;
 output mem_valid;
 input pcpi_ready;
 output pcpi_valid;
 input pcpi_wait;
 input pcpi_wr;
 input resetn;
 output trace_valid;
 output trap;
 output [31:0] eoi;
 input [31:0] irq;
 output [31:0] mem_addr;
 output [31:0] mem_la_addr;
 output [31:0] mem_la_wdata;
 output [3:0] mem_la_wstrb;
 input [31:0] mem_rdata;
 output [31:0] mem_wdata;
 output [3:0] mem_wstrb;
 output [31:0] pcpi_insn;
 input [31:0] pcpi_rd;
 output [31:0] pcpi_rs1;
 output [31:0] pcpi_rs2;
 output [35:0] trace_data;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire clknet_leaf_88_clk;
 wire clknet_leaf_87_clk;
 wire clknet_leaf_86_clk;
 wire _0875_;
 wire clknet_leaf_85_clk;
 wire clknet_leaf_84_clk;
 wire clknet_leaf_83_clk;
 wire clknet_leaf_82_clk;
 wire clknet_leaf_81_clk;
 wire clknet_leaf_80_clk;
 wire _0882_;
 wire _0883_;
 wire clknet_leaf_79_clk;
 wire _0885_;
 wire _0886_;
 wire clknet_leaf_78_clk;
 wire _0888_;
 wire clknet_leaf_77_clk;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire clknet_leaf_76_clk;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire clknet_leaf_75_clk;
 wire clknet_leaf_74_clk;
 wire clknet_leaf_73_clk;
 wire _0962_;
 wire clknet_leaf_72_clk;
 wire clknet_leaf_71_clk;
 wire _0965_;
 wire clknet_leaf_70_clk;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire clknet_leaf_69_clk;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire clknet_leaf_68_clk;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire clknet_leaf_67_clk;
 wire clknet_leaf_66_clk;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire clknet_leaf_65_clk;
 wire clknet_leaf_64_clk;
 wire _1002_;
 wire clknet_leaf_63_clk;
 wire _1004_;
 wire clknet_leaf_62_clk;
 wire clknet_leaf_61_clk;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire clknet_leaf_60_clk;
 wire _1012_;
 wire _1013_;
 wire clknet_leaf_59_clk;
 wire _1015_;
 wire _1016_;
 wire clknet_leaf_58_clk;
 wire _1018_;
 wire _1019_;
 wire clknet_leaf_57_clk;
 wire clknet_leaf_56_clk;
 wire clknet_leaf_55_clk;
 wire _1023_;
 wire clknet_leaf_54_clk;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire clknet_leaf_53_clk;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire clknet_leaf_52_clk;
 wire clknet_leaf_51_clk;
 wire _1034_;
 wire clknet_leaf_50_clk;
 wire _1036_;
 wire _1037_;
 wire clknet_leaf_49_clk;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire clknet_leaf_48_clk;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire clknet_leaf_47_clk;
 wire clknet_leaf_46_clk;
 wire clknet_leaf_45_clk;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire clknet_leaf_44_clk;
 wire _1058_;
 wire clknet_leaf_43_clk;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire clknet_leaf_42_clk;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire _1101_;
 wire _1102_;
 wire _1103_;
 wire _1104_;
 wire clknet_leaf_41_clk;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire clknet_leaf_40_clk;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire clknet_leaf_39_clk;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1138_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire _1150_;
 wire _1151_;
 wire _1152_;
 wire _1153_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1167_;
 wire _1168_;
 wire _1169_;
 wire _1170_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1174_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire clknet_leaf_38_clk;
 wire clknet_leaf_37_clk;
 wire clknet_leaf_36_clk;
 wire _1187_;
 wire _1188_;
 wire clknet_leaf_35_clk;
 wire clknet_leaf_34_clk;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1219_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire clknet_leaf_33_clk;
 wire _1232_;
 wire clknet_leaf_32_clk;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1237_;
 wire _1238_;
 wire _1239_;
 wire clknet_leaf_31_clk;
 wire _1241_;
 wire _1242_;
 wire clknet_leaf_30_clk;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1248_;
 wire clknet_leaf_29_clk;
 wire _1250_;
 wire _1251_;
 wire _1252_;
 wire clknet_leaf_28_clk;
 wire _1254_;
 wire _1255_;
 wire _1256_;
 wire _1257_;
 wire _1258_;
 wire _1259_;
 wire _1260_;
 wire _1261_;
 wire _1262_;
 wire clknet_leaf_27_clk;
 wire _1264_;
 wire _1265_;
 wire _1266_;
 wire _1267_;
 wire _1268_;
 wire _1269_;
 wire _1270_;
 wire _1271_;
 wire _1272_;
 wire clknet_leaf_26_clk;
 wire clknet_leaf_25_clk;
 wire _1275_;
 wire _1276_;
 wire _1277_;
 wire _1278_;
 wire _1279_;
 wire _1280_;
 wire _1281_;
 wire _1282_;
 wire _1283_;
 wire _1284_;
 wire _1285_;
 wire _1286_;
 wire _1287_;
 wire _1288_;
 wire _1289_;
 wire _1290_;
 wire _1291_;
 wire _1292_;
 wire _1293_;
 wire _1294_;
 wire _1295_;
 wire _1296_;
 wire _1297_;
 wire _1298_;
 wire _1299_;
 wire _1300_;
 wire _1301_;
 wire _1302_;
 wire _1303_;
 wire _1304_;
 wire _1305_;
 wire _1306_;
 wire _1307_;
 wire _1308_;
 wire _1309_;
 wire _1310_;
 wire _1311_;
 wire _1312_;
 wire _1313_;
 wire _1314_;
 wire _1315_;
 wire _1316_;
 wire _1317_;
 wire _1318_;
 wire _1319_;
 wire _1320_;
 wire _1321_;
 wire _1322_;
 wire _1323_;
 wire _1324_;
 wire _1325_;
 wire _1326_;
 wire _1327_;
 wire _1328_;
 wire _1329_;
 wire _1330_;
 wire _1331_;
 wire _1332_;
 wire _1333_;
 wire _1334_;
 wire _1335_;
 wire _1336_;
 wire _1337_;
 wire _1338_;
 wire _1339_;
 wire _1340_;
 wire _1341_;
 wire _1342_;
 wire _1343_;
 wire _1344_;
 wire _1345_;
 wire _1346_;
 wire _1347_;
 wire _1348_;
 wire _1349_;
 wire _1350_;
 wire _1351_;
 wire _1352_;
 wire _1353_;
 wire _1354_;
 wire _1355_;
 wire _1356_;
 wire _1357_;
 wire _1358_;
 wire _1359_;
 wire _1360_;
 wire _1361_;
 wire _1362_;
 wire _1363_;
 wire _1364_;
 wire _1365_;
 wire _1366_;
 wire _1367_;
 wire _1368_;
 wire _1369_;
 wire _1370_;
 wire _1371_;
 wire _1372_;
 wire _1373_;
 wire _1374_;
 wire _1375_;
 wire _1376_;
 wire _1377_;
 wire _1378_;
 wire _1379_;
 wire _1380_;
 wire _1381_;
 wire _1382_;
 wire _1383_;
 wire _1384_;
 wire _1385_;
 wire _1386_;
 wire _1387_;
 wire _1388_;
 wire _1389_;
 wire _1390_;
 wire _1391_;
 wire _1392_;
 wire _1393_;
 wire _1394_;
 wire _1395_;
 wire _1396_;
 wire _1397_;
 wire _1398_;
 wire _1399_;
 wire _1400_;
 wire _1401_;
 wire _1402_;
 wire _1403_;
 wire _1404_;
 wire _1405_;
 wire _1406_;
 wire _1407_;
 wire _1408_;
 wire _1409_;
 wire _1410_;
 wire _1411_;
 wire _1412_;
 wire _1413_;
 wire _1414_;
 wire _1415_;
 wire _1416_;
 wire _1417_;
 wire _1418_;
 wire _1419_;
 wire _1420_;
 wire _1421_;
 wire _1422_;
 wire _1423_;
 wire _1424_;
 wire _1425_;
 wire _1426_;
 wire _1427_;
 wire _1428_;
 wire _1429_;
 wire _1430_;
 wire _1431_;
 wire _1432_;
 wire _1433_;
 wire _1434_;
 wire _1435_;
 wire _1436_;
 wire _1437_;
 wire _1438_;
 wire _1439_;
 wire _1440_;
 wire _1441_;
 wire _1442_;
 wire _1443_;
 wire _1444_;
 wire _1445_;
 wire _1446_;
 wire _1447_;
 wire _1448_;
 wire _1449_;
 wire _1450_;
 wire _1451_;
 wire _1452_;
 wire _1453_;
 wire _1454_;
 wire _1455_;
 wire _1456_;
 wire _1457_;
 wire _1458_;
 wire _1459_;
 wire _1460_;
 wire _1461_;
 wire _1462_;
 wire _1463_;
 wire _1464_;
 wire _1465_;
 wire _1466_;
 wire _1467_;
 wire _1468_;
 wire _1469_;
 wire _1470_;
 wire _1471_;
 wire _1472_;
 wire _1473_;
 wire _1474_;
 wire _1475_;
 wire _1476_;
 wire _1477_;
 wire _1478_;
 wire _1479_;
 wire _1480_;
 wire _1481_;
 wire _1482_;
 wire _1483_;
 wire _1484_;
 wire _1485_;
 wire _1486_;
 wire _1487_;
 wire _1488_;
 wire _1489_;
 wire _1490_;
 wire _1491_;
 wire _1492_;
 wire _1493_;
 wire _1494_;
 wire _1495_;
 wire _1496_;
 wire _1497_;
 wire _1498_;
 wire _1499_;
 wire _1500_;
 wire _1501_;
 wire _1502_;
 wire _1503_;
 wire _1504_;
 wire clknet_leaf_24_clk;
 wire clknet_leaf_23_clk;
 wire clknet_leaf_22_clk;
 wire clknet_leaf_21_clk;
 wire _1509_;
 wire _1510_;
 wire _1511_;
 wire _1512_;
 wire _1513_;
 wire _1514_;
 wire clknet_leaf_20_clk;
 wire _1516_;
 wire _1517_;
 wire _1518_;
 wire _1519_;
 wire _1520_;
 wire _1521_;
 wire _1522_;
 wire _1523_;
 wire _1524_;
 wire _1525_;
 wire _1526_;
 wire _1527_;
 wire _1528_;
 wire _1529_;
 wire _1530_;
 wire _1531_;
 wire _1532_;
 wire _1533_;
 wire _1534_;
 wire _1535_;
 wire _1536_;
 wire _1537_;
 wire _1538_;
 wire _1539_;
 wire _1540_;
 wire _1541_;
 wire clknet_leaf_19_clk;
 wire _1543_;
 wire _1544_;
 wire _1545_;
 wire clknet_leaf_18_clk;
 wire _1547_;
 wire _1548_;
 wire _1549_;
 wire _1550_;
 wire _1551_;
 wire _1552_;
 wire _1553_;
 wire _1554_;
 wire _1555_;
 wire _1556_;
 wire _1557_;
 wire _1558_;
 wire _1559_;
 wire _1560_;
 wire _1561_;
 wire _1562_;
 wire _1563_;
 wire _1564_;
 wire clknet_leaf_17_clk;
 wire _1566_;
 wire _1567_;
 wire _1568_;
 wire _1569_;
 wire clknet_leaf_16_clk;
 wire _1571_;
 wire _1572_;
 wire _1573_;
 wire _1574_;
 wire _1575_;
 wire _1576_;
 wire _1577_;
 wire _1578_;
 wire _1579_;
 wire _1580_;
 wire _1581_;
 wire _1582_;
 wire _1583_;
 wire _1584_;
 wire _1585_;
 wire _1586_;
 wire _1587_;
 wire _1588_;
 wire _1589_;
 wire _1590_;
 wire _1591_;
 wire _1592_;
 wire _1593_;
 wire _1594_;
 wire _1595_;
 wire _1596_;
 wire _1597_;
 wire _1598_;
 wire _1599_;
 wire _1600_;
 wire _1601_;
 wire _1602_;
 wire _1603_;
 wire _1604_;
 wire _1605_;
 wire _1606_;
 wire _1607_;
 wire _1608_;
 wire _1609_;
 wire _1610_;
 wire _1611_;
 wire _1612_;
 wire _1613_;
 wire _1614_;
 wire _1615_;
 wire clknet_leaf_15_clk;
 wire _1617_;
 wire _1618_;
 wire _1619_;
 wire _1620_;
 wire _1621_;
 wire _1622_;
 wire _1623_;
 wire _1624_;
 wire _1625_;
 wire _1626_;
 wire _1627_;
 wire _1628_;
 wire _1629_;
 wire _1630_;
 wire _1631_;
 wire _1632_;
 wire _1633_;
 wire _1634_;
 wire _1635_;
 wire _1636_;
 wire _1637_;
 wire _1638_;
 wire _1639_;
 wire _1640_;
 wire _1641_;
 wire _1642_;
 wire _1643_;
 wire _1644_;
 wire _1645_;
 wire _1646_;
 wire _1647_;
 wire _1648_;
 wire _1649_;
 wire _1650_;
 wire _1651_;
 wire _1652_;
 wire _1653_;
 wire _1654_;
 wire _1655_;
 wire _1656_;
 wire clknet_leaf_14_clk;
 wire clknet_leaf_13_clk;
 wire _1659_;
 wire _1660_;
 wire _1661_;
 wire _1662_;
 wire _1663_;
 wire _1664_;
 wire _1665_;
 wire clknet_leaf_12_clk;
 wire _1667_;
 wire clknet_leaf_11_clk;
 wire _1669_;
 wire _1670_;
 wire _1671_;
 wire clknet_leaf_10_clk;
 wire clknet_leaf_9_clk;
 wire _1674_;
 wire _1675_;
 wire clknet_leaf_8_clk;
 wire _1677_;
 wire _1678_;
 wire _1679_;
 wire _1680_;
 wire clknet_leaf_7_clk;
 wire _1682_;
 wire _1683_;
 wire _1684_;
 wire _1685_;
 wire _1686_;
 wire _1687_;
 wire clknet_leaf_6_clk;
 wire clknet_leaf_5_clk;
 wire clknet_leaf_4_clk;
 wire clknet_leaf_3_clk;
 wire net774;
 wire net773;
 wire _1694_;
 wire net772;
 wire net771;
 wire _1697_;
 wire _1698_;
 wire net762;
 wire net761;
 wire net760;
 wire net759;
 wire _1703_;
 wire net757;
 wire net756;
 wire net754;
 wire net747;
 wire _1708_;
 wire net746;
 wire net745;
 wire _1711_;
 wire net743;
 wire net742;
 wire net741;
 wire _1715_;
 wire _1716_;
 wire net739;
 wire net738;
 wire _1719_;
 wire _1720_;
 wire net737;
 wire net736;
 wire _1723_;
 wire _1724_;
 wire net733;
 wire _1726_;
 wire _1727_;
 wire _1728_;
 wire net702;
 wire _1730_;
 wire net701;
 wire net697;
 wire net691;
 wire net690;
 wire _1735_;
 wire _1736_;
 wire _1737_;
 wire _1738_;
 wire net685;
 wire net684;
 wire _1741_;
 wire _1742_;
 wire _1743_;
 wire _1744_;
 wire _1745_;
 wire _1746_;
 wire net683;
 wire _1748_;
 wire _1749_;
 wire _1750_;
 wire _1751_;
 wire _1752_;
 wire _1753_;
 wire _1754_;
 wire _1755_;
 wire _1756_;
 wire _1757_;
 wire _1758_;
 wire _1759_;
 wire _1760_;
 wire _1761_;
 wire _1762_;
 wire _1763_;
 wire _1764_;
 wire _1765_;
 wire _1766_;
 wire _1767_;
 wire _1768_;
 wire _1769_;
 wire _1770_;
 wire _1771_;
 wire _1772_;
 wire _1773_;
 wire _1774_;
 wire _1775_;
 wire _1776_;
 wire _1777_;
 wire _1778_;
 wire _1779_;
 wire _1780_;
 wire _1781_;
 wire _1782_;
 wire _1783_;
 wire _1784_;
 wire _1785_;
 wire _1786_;
 wire _1787_;
 wire _1788_;
 wire _1789_;
 wire _1790_;
 wire _1791_;
 wire _1792_;
 wire net682;
 wire _1794_;
 wire net678;
 wire _1796_;
 wire _1797_;
 wire _1798_;
 wire _1799_;
 wire _1800_;
 wire _1801_;
 wire _1802_;
 wire net677;
 wire net676;
 wire net675;
 wire _1806_;
 wire _1807_;
 wire _1808_;
 wire _1809_;
 wire _1810_;
 wire _1811_;
 wire _1812_;
 wire _1813_;
 wire _1814_;
 wire _1815_;
 wire _1816_;
 wire net674;
 wire _1818_;
 wire _1819_;
 wire _1820_;
 wire net670;
 wire _1822_;
 wire _1823_;
 wire _1824_;
 wire net669;
 wire _1826_;
 wire _1827_;
 wire net668;
 wire _1829_;
 wire _1830_;
 wire _1831_;
 wire _1832_;
 wire _1833_;
 wire _1834_;
 wire _1835_;
 wire _1836_;
 wire _1837_;
 wire _1838_;
 wire _1839_;
 wire _1840_;
 wire _1841_;
 wire _1842_;
 wire _1843_;
 wire _1844_;
 wire net667;
 wire _1846_;
 wire _1847_;
 wire _1848_;
 wire net666;
 wire net665;
 wire net664;
 wire net663;
 wire _1853_;
 wire net659;
 wire net657;
 wire _1856_;
 wire net656;
 wire net655;
 wire _1859_;
 wire net654;
 wire net653;
 wire _1862_;
 wire net621;
 wire net619;
 wire _1865_;
 wire net618;
 wire net617;
 wire _1868_;
 wire net616;
 wire net615;
 wire _1871_;
 wire _1872_;
 wire net614;
 wire net613;
 wire _1875_;
 wire net611;
 wire net610;
 wire _1878_;
 wire net609;
 wire _1880_;
 wire net607;
 wire _1882_;
 wire _1883_;
 wire net599;
 wire _1885_;
 wire _1886_;
 wire _1887_;
 wire _1888_;
 wire _1889_;
 wire _1890_;
 wire net600;
 wire net660;
 wire clknet_leaf_0_clk;
 wire _1894_;
 wire _1895_;
 wire net661;
 wire net658;
 wire _1898_;
 wire _1899_;
 wire _1900_;
 wire _1901_;
 wire _1902_;
 wire _1903_;
 wire net603;
 wire clknet_leaf_1_clk;
 wire _1906_;
 wire _1907_;
 wire _1908_;
 wire _1909_;
 wire _1910_;
 wire _1911_;
 wire _1912_;
 wire _1913_;
 wire _1914_;
 wire _1915_;
 wire _1916_;
 wire _1917_;
 wire _1918_;
 wire clknet_leaf_2_clk;
 wire _1920_;
 wire _1921_;
 wire _1922_;
 wire _1923_;
 wire _1924_;
 wire _1925_;
 wire _1926_;
 wire _1927_;
 wire _1928_;
 wire _1929_;
 wire _1930_;
 wire _1931_;
 wire net776;
 wire net775;
 wire _1934_;
 wire net770;
 wire net767;
 wire _1937_;
 wire net765;
 wire net602;
 wire _1940_;
 wire net764;
 wire net601;
 wire _1943_;
 wire net598;
 wire _1945_;
 wire _1946_;
 wire _1947_;
 wire _1948_;
 wire _1949_;
 wire _1950_;
 wire _1951_;
 wire _1952_;
 wire _1953_;
 wire _1954_;
 wire _1955_;
 wire _1956_;
 wire _1957_;
 wire _1958_;
 wire _1959_;
 wire _1960_;
 wire _1961_;
 wire _1962_;
 wire _1963_;
 wire _1964_;
 wire _1965_;
 wire _1966_;
 wire _1967_;
 wire _1968_;
 wire _1969_;
 wire _1970_;
 wire _1971_;
 wire _1972_;
 wire net688;
 wire _1974_;
 wire _1975_;
 wire _1976_;
 wire _1977_;
 wire _1978_;
 wire _1979_;
 wire _1980_;
 wire _1981_;
 wire _1982_;
 wire _1983_;
 wire _1984_;
 wire _1985_;
 wire _1986_;
 wire _1987_;
 wire _1988_;
 wire _1989_;
 wire _1990_;
 wire _1991_;
 wire _1992_;
 wire _1993_;
 wire _1994_;
 wire _1995_;
 wire _1996_;
 wire _1997_;
 wire _1998_;
 wire _1999_;
 wire _2000_;
 wire _2001_;
 wire _2002_;
 wire _2003_;
 wire _2004_;
 wire _2005_;
 wire _2006_;
 wire _2007_;
 wire _2008_;
 wire _2009_;
 wire _2010_;
 wire _2011_;
 wire _2012_;
 wire _2013_;
 wire _2014_;
 wire net671;
 wire _2016_;
 wire _2017_;
 wire _2018_;
 wire _2019_;
 wire _2020_;
 wire _2021_;
 wire _2022_;
 wire _2023_;
 wire _2024_;
 wire _2025_;
 wire net769;
 wire _2027_;
 wire _2028_;
 wire _2029_;
 wire _2030_;
 wire _2031_;
 wire _2032_;
 wire _2033_;
 wire _2034_;
 wire _2035_;
 wire _2036_;
 wire _2037_;
 wire _2038_;
 wire _2039_;
 wire _2040_;
 wire _2041_;
 wire _2042_;
 wire _2043_;
 wire _2044_;
 wire _2045_;
 wire _2046_;
 wire _2047_;
 wire _2048_;
 wire _2049_;
 wire _2050_;
 wire _2051_;
 wire _2052_;
 wire _2053_;
 wire _2054_;
 wire _2055_;
 wire _2056_;
 wire _2057_;
 wire _2058_;
 wire _2059_;
 wire _2060_;
 wire _2061_;
 wire _2062_;
 wire net768;
 wire net763;
 wire _2065_;
 wire _2066_;
 wire _2067_;
 wire _2068_;
 wire _2069_;
 wire _2070_;
 wire _2071_;
 wire _2072_;
 wire _2073_;
 wire _2074_;
 wire _2075_;
 wire _2076_;
 wire _2077_;
 wire _2078_;
 wire _2079_;
 wire _2080_;
 wire _2081_;
 wire net766;
 wire net758;
 wire _2084_;
 wire _2085_;
 wire _2086_;
 wire _2087_;
 wire _2088_;
 wire _2089_;
 wire _2090_;
 wire _2091_;
 wire _2092_;
 wire _2093_;
 wire _2094_;
 wire _2095_;
 wire _2096_;
 wire _2097_;
 wire _2098_;
 wire _2099_;
 wire _2100_;
 wire _2101_;
 wire _2102_;
 wire _2103_;
 wire _2104_;
 wire _2105_;
 wire _2106_;
 wire _2107_;
 wire _2108_;
 wire _2109_;
 wire _2110_;
 wire _2111_;
 wire _2112_;
 wire _2113_;
 wire _2114_;
 wire _2115_;
 wire _2116_;
 wire _2117_;
 wire _2118_;
 wire _2119_;
 wire _2120_;
 wire net755;
 wire net753;
 wire _2123_;
 wire _2124_;
 wire _2125_;
 wire net752;
 wire _2127_;
 wire _2128_;
 wire _2129_;
 wire _2130_;
 wire _2131_;
 wire _2132_;
 wire _2133_;
 wire _2134_;
 wire _2135_;
 wire _2136_;
 wire _2137_;
 wire _2138_;
 wire _2139_;
 wire _2140_;
 wire _2141_;
 wire _2142_;
 wire _2143_;
 wire _2144_;
 wire _2145_;
 wire _2146_;
 wire _2147_;
 wire _2148_;
 wire _2149_;
 wire _2150_;
 wire _2151_;
 wire _2152_;
 wire _2153_;
 wire _2154_;
 wire _2155_;
 wire _2156_;
 wire _2157_;
 wire _2158_;
 wire _2159_;
 wire _2160_;
 wire _2161_;
 wire _2162_;
 wire _2163_;
 wire _2164_;
 wire net749;
 wire _2166_;
 wire _2167_;
 wire _2168_;
 wire _2169_;
 wire _2170_;
 wire _2171_;
 wire _2172_;
 wire _2173_;
 wire _2174_;
 wire _2175_;
 wire _2176_;
 wire _2177_;
 wire _2178_;
 wire _2179_;
 wire _2180_;
 wire _2181_;
 wire _2182_;
 wire _2183_;
 wire _2184_;
 wire _2185_;
 wire _2186_;
 wire _2187_;
 wire _2188_;
 wire _2189_;
 wire _2190_;
 wire _2191_;
 wire _2192_;
 wire _2193_;
 wire _2194_;
 wire _2195_;
 wire _2196_;
 wire _2197_;
 wire _2198_;
 wire _2199_;
 wire _2200_;
 wire _2201_;
 wire _2202_;
 wire _2203_;
 wire _2204_;
 wire _2205_;
 wire _2206_;
 wire _2207_;
 wire _2208_;
 wire _2209_;
 wire _2210_;
 wire _2211_;
 wire _2212_;
 wire _2213_;
 wire _2214_;
 wire _2215_;
 wire _2216_;
 wire _2217_;
 wire _2218_;
 wire _2219_;
 wire _2220_;
 wire _2221_;
 wire _2222_;
 wire _2223_;
 wire _2224_;
 wire _2225_;
 wire _2226_;
 wire _2227_;
 wire _2228_;
 wire _2229_;
 wire _2230_;
 wire _2231_;
 wire _2232_;
 wire _2233_;
 wire _2234_;
 wire _2235_;
 wire _2236_;
 wire _2237_;
 wire _2238_;
 wire _2239_;
 wire _2240_;
 wire _2241_;
 wire _2242_;
 wire _2243_;
 wire _2244_;
 wire _2245_;
 wire _2246_;
 wire _2247_;
 wire _2248_;
 wire _2249_;
 wire _2250_;
 wire _2251_;
 wire _2252_;
 wire _2253_;
 wire _2254_;
 wire _2255_;
 wire _2256_;
 wire _2257_;
 wire _2258_;
 wire _2259_;
 wire _2260_;
 wire _2261_;
 wire _2262_;
 wire _2263_;
 wire _2264_;
 wire _2265_;
 wire _2266_;
 wire _2267_;
 wire _2268_;
 wire _2269_;
 wire _2270_;
 wire _2271_;
 wire _2272_;
 wire _2273_;
 wire _2274_;
 wire _2275_;
 wire _2276_;
 wire _2277_;
 wire _2278_;
 wire _2279_;
 wire _2280_;
 wire _2281_;
 wire _2282_;
 wire _2283_;
 wire _2284_;
 wire _2285_;
 wire _2286_;
 wire _2287_;
 wire _2288_;
 wire _2289_;
 wire _2290_;
 wire _2291_;
 wire _2292_;
 wire _2293_;
 wire _2294_;
 wire _2295_;
 wire _2296_;
 wire _2297_;
 wire _2298_;
 wire _2299_;
 wire _2300_;
 wire _2301_;
 wire _2302_;
 wire _2303_;
 wire _2304_;
 wire _2305_;
 wire _2306_;
 wire _2307_;
 wire _2308_;
 wire _2309_;
 wire _2310_;
 wire _2311_;
 wire _2312_;
 wire _2313_;
 wire _2314_;
 wire _2315_;
 wire _2316_;
 wire _2317_;
 wire _2318_;
 wire _2319_;
 wire _2320_;
 wire _2321_;
 wire _2322_;
 wire _2323_;
 wire _2324_;
 wire _2325_;
 wire _2326_;
 wire _2327_;
 wire _2328_;
 wire _2329_;
 wire _2330_;
 wire _2331_;
 wire _2332_;
 wire _2333_;
 wire _2334_;
 wire _2335_;
 wire _2336_;
 wire _2337_;
 wire _2338_;
 wire _2339_;
 wire _2340_;
 wire _2341_;
 wire _2342_;
 wire _2343_;
 wire _2344_;
 wire _2345_;
 wire _2346_;
 wire _2347_;
 wire _2348_;
 wire _2349_;
 wire _2350_;
 wire _2351_;
 wire _2352_;
 wire _2353_;
 wire _2354_;
 wire _2355_;
 wire _2356_;
 wire _2357_;
 wire _2358_;
 wire _2359_;
 wire _2360_;
 wire _2361_;
 wire _2362_;
 wire _2363_;
 wire _2364_;
 wire _2365_;
 wire _2366_;
 wire _2367_;
 wire _2368_;
 wire _2369_;
 wire _2370_;
 wire _2371_;
 wire _2372_;
 wire _2373_;
 wire _2374_;
 wire _2375_;
 wire _2376_;
 wire _2377_;
 wire _2378_;
 wire _2379_;
 wire _2380_;
 wire _2381_;
 wire _2382_;
 wire _2383_;
 wire _2384_;
 wire net748;
 wire net744;
 wire net696;
 wire net694;
 wire net693;
 wire net692;
 wire net689;
 wire _2392_;
 wire net687;
 wire net686;
 wire net695;
 wire _2396_;
 wire _2397_;
 wire net681;
 wire net680;
 wire net698;
 wire net699;
 wire net679;
 wire _2403_;
 wire net700;
 wire net703;
 wire net704;
 wire net673;
 wire _2408_;
 wire _2409_;
 wire _2410_;
 wire _2411_;
 wire _2412_;
 wire _2413_;
 wire net707;
 wire net705;
 wire _2416_;
 wire _2417_;
 wire _2418_;
 wire _2419_;
 wire _2420_;
 wire _2421_;
 wire net706;
 wire _2423_;
 wire net662;
 wire net672;
 wire _2426_;
 wire net708;
 wire net709;
 wire _2429_;
 wire net710;
 wire net711;
 wire _2432_;
 wire net727;
 wire net712;
 wire _2435_;
 wire net714;
 wire net713;
 wire _2438_;
 wire net652;
 wire net651;
 wire _2441_;
 wire net650;
 wire net649;
 wire _2444_;
 wire _2445_;
 wire net648;
 wire net647;
 wire _2448_;
 wire net646;
 wire net645;
 wire _2451_;
 wire net715;
 wire net644;
 wire _2454_;
 wire net643;
 wire _2456_;
 wire net642;
 wire _2458_;
 wire net641;
 wire net640;
 wire _2461_;
 wire _2462_;
 wire _2463_;
 wire net716;
 wire net639;
 wire _2466_;
 wire _2467_;
 wire net638;
 wire net637;
 wire _2470_;
 wire net636;
 wire net635;
 wire _2473_;
 wire _2474_;
 wire _2475_;
 wire _2476_;
 wire _2477_;
 wire _2478_;
 wire _2479_;
 wire _2480_;
 wire net634;
 wire net717;
 wire _2483_;
 wire _2484_;
 wire _2485_;
 wire _2486_;
 wire _2487_;
 wire _2488_;
 wire _2489_;
 wire _2490_;
 wire _2491_;
 wire _2492_;
 wire _2493_;
 wire net633;
 wire net718;
 wire _2496_;
 wire net632;
 wire net631;
 wire _2499_;
 wire _2500_;
 wire _2501_;
 wire _2502_;
 wire net719;
 wire net630;
 wire _2505_;
 wire _2506_;
 wire _2507_;
 wire _2508_;
 wire _2509_;
 wire _2510_;
 wire net720;
 wire net629;
 wire _2513_;
 wire _2514_;
 wire _2515_;
 wire net721;
 wire net628;
 wire _2518_;
 wire net627;
 wire net722;
 wire _2521_;
 wire _2522_;
 wire _2523_;
 wire _2524_;
 wire net626;
 wire net625;
 wire _2527_;
 wire _2528_;
 wire _2529_;
 wire _2530_;
 wire _2531_;
 wire _2532_;
 wire _2533_;
 wire _2534_;
 wire _2535_;
 wire _2536_;
 wire _2537_;
 wire _2538_;
 wire _2539_;
 wire net723;
 wire net624;
 wire _2542_;
 wire _2543_;
 wire _2544_;
 wire _2545_;
 wire _2546_;
 wire _2547_;
 wire _2548_;
 wire _2549_;
 wire _2550_;
 wire _2551_;
 wire net724;
 wire net623;
 wire _2554_;
 wire _2555_;
 wire _2556_;
 wire _2557_;
 wire _2558_;
 wire _2559_;
 wire _2560_;
 wire _2561_;
 wire _2562_;
 wire _2563_;
 wire _2564_;
 wire _2565_;
 wire _2566_;
 wire _2567_;
 wire _2568_;
 wire _2569_;
 wire _2570_;
 wire net620;
 wire _2572_;
 wire _2573_;
 wire _2574_;
 wire _2575_;
 wire _2576_;
 wire _2577_;
 wire _2578_;
 wire _2579_;
 wire _2580_;
 wire _2581_;
 wire _2582_;
 wire _2583_;
 wire _2584_;
 wire _2585_;
 wire _2586_;
 wire _2587_;
 wire net622;
 wire net725;
 wire _2590_;
 wire _2591_;
 wire _2592_;
 wire _2593_;
 wire _2594_;
 wire _2595_;
 wire net726;
 wire _2597_;
 wire _2598_;
 wire _2599_;
 wire _2600_;
 wire _2601_;
 wire _2602_;
 wire _2603_;
 wire _2604_;
 wire _2605_;
 wire _2606_;
 wire _2607_;
 wire _2608_;
 wire _2609_;
 wire _2610_;
 wire _2611_;
 wire _2612_;
 wire _2613_;
 wire _2614_;
 wire _2615_;
 wire _2616_;
 wire _2617_;
 wire _2618_;
 wire _2619_;
 wire _2620_;
 wire _2621_;
 wire _2622_;
 wire _2623_;
 wire _2624_;
 wire _2625_;
 wire _2626_;
 wire _2627_;
 wire _2628_;
 wire _2629_;
 wire _2630_;
 wire _2631_;
 wire _2632_;
 wire _2633_;
 wire _2634_;
 wire _2635_;
 wire _2636_;
 wire _2637_;
 wire _2638_;
 wire _2639_;
 wire _2640_;
 wire _2641_;
 wire _2642_;
 wire _2643_;
 wire _2644_;
 wire _2645_;
 wire _2646_;
 wire _2647_;
 wire _2648_;
 wire _2649_;
 wire _2650_;
 wire _2651_;
 wire _2652_;
 wire _2653_;
 wire _2654_;
 wire _2655_;
 wire _2656_;
 wire _2657_;
 wire _2658_;
 wire _2659_;
 wire _2660_;
 wire _2661_;
 wire _2662_;
 wire _2663_;
 wire _2664_;
 wire _2665_;
 wire _2666_;
 wire _2667_;
 wire _2668_;
 wire _2669_;
 wire _2670_;
 wire _2671_;
 wire _2672_;
 wire _2673_;
 wire _2674_;
 wire _2675_;
 wire _2676_;
 wire _2677_;
 wire _2678_;
 wire _2679_;
 wire _2680_;
 wire _2681_;
 wire _2682_;
 wire _2683_;
 wire _2684_;
 wire _2685_;
 wire _2686_;
 wire _2687_;
 wire _2688_;
 wire _2689_;
 wire _2690_;
 wire _2691_;
 wire _2692_;
 wire _2693_;
 wire _2694_;
 wire _2695_;
 wire _2696_;
 wire _2697_;
 wire _2698_;
 wire _2699_;
 wire _2700_;
 wire _2701_;
 wire _2702_;
 wire _2703_;
 wire _2704_;
 wire _2705_;
 wire _2706_;
 wire _2707_;
 wire _2708_;
 wire _2709_;
 wire _2710_;
 wire _2711_;
 wire _2712_;
 wire _2713_;
 wire _2714_;
 wire _2715_;
 wire _2716_;
 wire _2717_;
 wire net728;
 wire _2719_;
 wire _2720_;
 wire _2721_;
 wire _2722_;
 wire _2723_;
 wire _2724_;
 wire _2725_;
 wire _2726_;
 wire _2727_;
 wire _2728_;
 wire _2729_;
 wire _2730_;
 wire _2731_;
 wire _2732_;
 wire _2733_;
 wire _2734_;
 wire _2735_;
 wire _2736_;
 wire _2737_;
 wire _2738_;
 wire _2739_;
 wire _2740_;
 wire _2741_;
 wire _2742_;
 wire _2743_;
 wire _2744_;
 wire _2745_;
 wire _2746_;
 wire _2747_;
 wire _2748_;
 wire _2749_;
 wire _2750_;
 wire _2751_;
 wire _2752_;
 wire _2753_;
 wire _2754_;
 wire _2755_;
 wire _2756_;
 wire _2757_;
 wire _2758_;
 wire _2759_;
 wire _2760_;
 wire _2761_;
 wire _2762_;
 wire _2763_;
 wire _2764_;
 wire _2765_;
 wire _2766_;
 wire _2767_;
 wire _2768_;
 wire _2769_;
 wire _2770_;
 wire _2771_;
 wire _2772_;
 wire _2773_;
 wire _2774_;
 wire _2775_;
 wire _2776_;
 wire _2777_;
 wire _2778_;
 wire _2779_;
 wire net612;
 wire _2781_;
 wire _2782_;
 wire net729;
 wire net730;
 wire _2785_;
 wire net608;
 wire _2787_;
 wire _2788_;
 wire _2789_;
 wire _2790_;
 wire _2791_;
 wire _2792_;
 wire _2793_;
 wire _2794_;
 wire _2795_;
 wire _2796_;
 wire _2797_;
 wire _2798_;
 wire _2799_;
 wire _2800_;
 wire _2801_;
 wire _2802_;
 wire _2803_;
 wire _2804_;
 wire _2805_;
 wire _2806_;
 wire _2807_;
 wire _2808_;
 wire _2809_;
 wire _2810_;
 wire _2811_;
 wire _2812_;
 wire _2813_;
 wire _2814_;
 wire _2815_;
 wire _2816_;
 wire _2817_;
 wire _2818_;
 wire _2819_;
 wire _2820_;
 wire _2821_;
 wire _2822_;
 wire _2823_;
 wire _2824_;
 wire _2825_;
 wire _2826_;
 wire _2827_;
 wire _2828_;
 wire _2829_;
 wire _2830_;
 wire _2831_;
 wire _2832_;
 wire _2833_;
 wire _2834_;
 wire _2835_;
 wire _2836_;
 wire _2837_;
 wire _2838_;
 wire _2839_;
 wire _2840_;
 wire _2841_;
 wire _2842_;
 wire _2843_;
 wire _2844_;
 wire _2845_;
 wire _2846_;
 wire _2847_;
 wire _2848_;
 wire net731;
 wire _2850_;
 wire _2851_;
 wire _2852_;
 wire _2853_;
 wire _2854_;
 wire _2855_;
 wire _2856_;
 wire _2857_;
 wire _2858_;
 wire _2859_;
 wire _2860_;
 wire _2861_;
 wire _2862_;
 wire _2863_;
 wire _2864_;
 wire _2865_;
 wire _2866_;
 wire _2867_;
 wire _2868_;
 wire _2869_;
 wire _2870_;
 wire net732;
 wire net734;
 wire _2873_;
 wire net735;
 wire _2875_;
 wire _2876_;
 wire _2877_;
 wire _2878_;
 wire _2879_;
 wire _2880_;
 wire _2881_;
 wire _2882_;
 wire _2883_;
 wire _2884_;
 wire _2885_;
 wire _2886_;
 wire _2887_;
 wire _2888_;
 wire _2889_;
 wire _2890_;
 wire _2891_;
 wire _2892_;
 wire _2893_;
 wire _2894_;
 wire _2895_;
 wire _2896_;
 wire _2897_;
 wire _2898_;
 wire _2899_;
 wire _2900_;
 wire _2901_;
 wire _2902_;
 wire _2903_;
 wire _2904_;
 wire net740;
 wire net750;
 wire _2907_;
 wire net751;
 wire _2909_;
 wire _2910_;
 wire _2911_;
 wire _2912_;
 wire _2913_;
 wire _2914_;
 wire _2915_;
 wire _2916_;
 wire _2917_;
 wire _2918_;
 wire _2919_;
 wire _2920_;
 wire _2921_;
 wire _2922_;
 wire _2923_;
 wire _2924_;
 wire _2925_;
 wire _2926_;
 wire _2927_;
 wire _2928_;
 wire net604;
 wire net605;
 wire net606;
 wire _2932_;
 wire _2933_;
 wire _2934_;
 wire _2935_;
 wire _2936_;
 wire _2937_;
 wire _2938_;
 wire _2939_;
 wire _2940_;
 wire _2942_;
 wire _2949_;
 wire _2951_;
 wire _2952_;
 wire _2954_;
 wire _2956_;
 wire _2957_;
 wire _2958_;
 wire _2959_;
 wire _2960_;
 wire _2961_;
 wire _2962_;
 wire _2963_;
 wire _2964_;
 wire _2965_;
 wire _2966_;
 wire _2967_;
 wire _2968_;
 wire _2969_;
 wire _2970_;
 wire _2971_;
 wire _2972_;
 wire _2973_;
 wire _2974_;
 wire _2975_;
 wire _2976_;
 wire _2977_;
 wire _2978_;
 wire _2979_;
 wire _2980_;
 wire _2981_;
 wire _2982_;
 wire _2983_;
 wire _2984_;
 wire _2985_;
 wire _2986_;
 wire _2987_;
 wire _2988_;
 wire _2991_;
 wire _2992_;
 wire _2993_;
 wire _2998_;
 wire _3000_;
 wire _3001_;
 wire _3003_;
 wire _3004_;
 wire _3008_;
 wire _3010_;
 wire _3011_;
 wire _3012_;
 wire _3013_;
 wire _3014_;
 wire _3015_;
 wire _3016_;
 wire _3017_;
 wire _3018_;
 wire _3019_;
 wire _3020_;
 wire _3021_;
 wire _3022_;
 wire _3023_;
 wire _3025_;
 wire _3026_;
 wire _3027_;
 wire _3028_;
 wire _3029_;
 wire _3030_;
 wire _3031_;
 wire _3033_;
 wire _3034_;
 wire _3035_;
 wire _3036_;
 wire _3037_;
 wire _3038_;
 wire _3039_;
 wire _3040_;
 wire _3041_;
 wire _3042_;
 wire _3043_;
 wire _3044_;
 wire _3045_;
 wire _3046_;
 wire _3047_;
 wire _3049_;
 wire _3051_;
 wire _3052_;
 wire _3053_;
 wire _3054_;
 wire _3055_;
 wire _3056_;
 wire _3057_;
 wire _3058_;
 wire _3059_;
 wire _3060_;
 wire _3061_;
 wire _3062_;
 wire _3063_;
 wire _3064_;
 wire _3065_;
 wire _3066_;
 wire _3067_;
 wire _3068_;
 wire _3069_;
 wire _3070_;
 wire _3071_;
 wire _3072_;
 wire _3073_;
 wire _3074_;
 wire _3075_;
 wire _3076_;
 wire _3077_;
 wire _3078_;
 wire _3079_;
 wire _3080_;
 wire _3081_;
 wire _3082_;
 wire _3083_;
 wire _3084_;
 wire _3085_;
 wire _3086_;
 wire _3087_;
 wire _3088_;
 wire _3089_;
 wire _3090_;
 wire _3091_;
 wire _3092_;
 wire _3093_;
 wire _3094_;
 wire _3095_;
 wire _3096_;
 wire _3097_;
 wire _3098_;
 wire _3099_;
 wire _3100_;
 wire _3101_;
 wire _3102_;
 wire _3103_;
 wire _3104_;
 wire _3105_;
 wire _3106_;
 wire _3107_;
 wire _3108_;
 wire _3109_;
 wire _3110_;
 wire _3111_;
 wire _3112_;
 wire _3113_;
 wire _3114_;
 wire _3115_;
 wire _3116_;
 wire _3117_;
 wire _3118_;
 wire _3119_;
 wire _3120_;
 wire _3121_;
 wire _3122_;
 wire _3123_;
 wire _3124_;
 wire _3125_;
 wire _3126_;
 wire _3127_;
 wire _3128_;
 wire _3129_;
 wire _3130_;
 wire _3131_;
 wire _3132_;
 wire _3133_;
 wire _3134_;
 wire _3136_;
 wire _3137_;
 wire _3138_;
 wire _3139_;
 wire _3140_;
 wire _3141_;
 wire _3142_;
 wire _3143_;
 wire _3144_;
 wire _3145_;
 wire _3146_;
 wire _3147_;
 wire _3148_;
 wire _3149_;
 wire _3150_;
 wire _3151_;
 wire _3152_;
 wire _3153_;
 wire _3154_;
 wire _3155_;
 wire _3156_;
 wire _3157_;
 wire _3158_;
 wire _3159_;
 wire _3160_;
 wire _3161_;
 wire _3162_;
 wire _3163_;
 wire _3164_;
 wire _3165_;
 wire _3166_;
 wire _3167_;
 wire _3168_;
 wire _3169_;
 wire _3170_;
 wire _3171_;
 wire _3172_;
 wire _3173_;
 wire _3174_;
 wire _3175_;
 wire _3176_;
 wire _3177_;
 wire _3178_;
 wire _3179_;
 wire _3180_;
 wire _3181_;
 wire _3182_;
 wire _3183_;
 wire _3184_;
 wire _3185_;
 wire _3186_;
 wire _3187_;
 wire _3188_;
 wire _3189_;
 wire _3190_;
 wire _3191_;
 wire _3192_;
 wire _3193_;
 wire _3194_;
 wire _3195_;
 wire _3196_;
 wire _3197_;
 wire _3198_;
 wire _3199_;
 wire _3200_;
 wire _3201_;
 wire _3202_;
 wire _3203_;
 wire _3204_;
 wire _3205_;
 wire _3206_;
 wire _3207_;
 wire _3208_;
 wire _3209_;
 wire _3210_;
 wire _3211_;
 wire _3212_;
 wire _3213_;
 wire _3215_;
 wire _3216_;
 wire _3217_;
 wire _3218_;
 wire _3219_;
 wire _3220_;
 wire _3221_;
 wire _3222_;
 wire _3223_;
 wire _3224_;
 wire _3225_;
 wire _3226_;
 wire _3227_;
 wire _3228_;
 wire _3229_;
 wire _3230_;
 wire _3231_;
 wire _3232_;
 wire _3233_;
 wire _3234_;
 wire _3235_;
 wire _3236_;
 wire _3237_;
 wire _3238_;
 wire _3239_;
 wire _3240_;
 wire _3241_;
 wire _3242_;
 wire _3243_;
 wire _3244_;
 wire _3245_;
 wire _3246_;
 wire _3247_;
 wire _3248_;
 wire _3249_;
 wire _3250_;
 wire _3251_;
 wire _3252_;
 wire _3253_;
 wire _3254_;
 wire _3255_;
 wire _3256_;
 wire _3257_;
 wire _3258_;
 wire _3259_;
 wire _3260_;
 wire _3261_;
 wire _3262_;
 wire _3263_;
 wire _3264_;
 wire _3265_;
 wire _3266_;
 wire _3267_;
 wire _3268_;
 wire _3269_;
 wire _3270_;
 wire _3271_;
 wire _3272_;
 wire _3273_;
 wire _3274_;
 wire _3275_;
 wire _3276_;
 wire _3277_;
 wire _3278_;
 wire _3279_;
 wire _3280_;
 wire _3282_;
 wire _3283_;
 wire _3286_;
 wire _3289_;
 wire _3292_;
 wire _3293_;
 wire _3295_;
 wire _3296_;
 wire _3297_;
 wire _3298_;
 wire _3300_;
 wire _3301_;
 wire _3302_;
 wire _3303_;
 wire _3304_;
 wire _3305_;
 wire _3306_;
 wire _3307_;
 wire _3308_;
 wire _3309_;
 wire _3310_;
 wire _3311_;
 wire _3312_;
 wire _3313_;
 wire _3314_;
 wire _3315_;
 wire _3316_;
 wire _3317_;
 wire _3318_;
 wire _3319_;
 wire _3320_;
 wire _3321_;
 wire _3322_;
 wire _3323_;
 wire _3324_;
 wire _3325_;
 wire _3326_;
 wire _3327_;
 wire _3328_;
 wire _3329_;
 wire _3330_;
 wire _3331_;
 wire _3332_;
 wire _3333_;
 wire _3334_;
 wire _3337_;
 wire _3339_;
 wire _3340_;
 wire _3342_;
 wire _3343_;
 wire _3344_;
 wire _3345_;
 wire _3346_;
 wire _3348_;
 wire _3350_;
 wire _3351_;
 wire _3353_;
 wire _3354_;
 wire _3357_;
 wire _3359_;
 wire _3360_;
 wire _3361_;
 wire _3362_;
 wire _3363_;
 wire _3364_;
 wire _3365_;
 wire _3366_;
 wire _3367_;
 wire _3368_;
 wire _3369_;
 wire _3370_;
 wire _3371_;
 wire _3372_;
 wire _3373_;
 wire _3374_;
 wire _3375_;
 wire _3376_;
 wire _3377_;
 wire _3378_;
 wire _3379_;
 wire _3380_;
 wire _3381_;
 wire _3382_;
 wire _3383_;
 wire _3384_;
 wire _3385_;
 wire _3386_;
 wire _3387_;
 wire _3388_;
 wire _3389_;
 wire _3390_;
 wire _3391_;
 wire _3392_;
 wire _3393_;
 wire _3394_;
 wire _3395_;
 wire _3396_;
 wire _3397_;
 wire _3398_;
 wire _3399_;
 wire _3400_;
 wire _3401_;
 wire _3402_;
 wire _3403_;
 wire _3404_;
 wire _3405_;
 wire _3406_;
 wire _3407_;
 wire _3408_;
 wire _3409_;
 wire _3410_;
 wire _3411_;
 wire _3412_;
 wire _3413_;
 wire _3414_;
 wire _3415_;
 wire _3416_;
 wire _3417_;
 wire _3418_;
 wire _3419_;
 wire _3420_;
 wire _3421_;
 wire _3423_;
 wire _3425_;
 wire _3428_;
 wire _3429_;
 wire _3437_;
 wire _3438_;
 wire _3439_;
 wire _3440_;
 wire _3441_;
 wire _3442_;
 wire _3443_;
 wire _3444_;
 wire _3445_;
 wire _3448_;
 wire _3449_;
 wire _3450_;
 wire _3451_;
 wire _3452_;
 wire _3453_;
 wire _3454_;
 wire _3455_;
 wire _3456_;
 wire _3457_;
 wire _3458_;
 wire _3459_;
 wire _3460_;
 wire _3461_;
 wire _3462_;
 wire _3463_;
 wire _3465_;
 wire _3466_;
 wire _3467_;
 wire _3468_;
 wire _3469_;
 wire _3470_;
 wire _3472_;
 wire _3473_;
 wire _3474_;
 wire _3475_;
 wire _3476_;
 wire _3477_;
 wire _3478_;
 wire _3479_;
 wire _3480_;
 wire _3481_;
 wire _3484_;
 wire _3485_;
 wire _3486_;
 wire _3487_;
 wire _3488_;
 wire _3489_;
 wire _3490_;
 wire _3491_;
 wire _3493_;
 wire _3494_;
 wire _3495_;
 wire _3496_;
 wire _3497_;
 wire _3500_;
 wire _3501_;
 wire _3502_;
 wire _3503_;
 wire _3504_;
 wire _3505_;
 wire _3506_;
 wire _3507_;
 wire _3510_;
 wire _3511_;
 wire _3512_;
 wire _3513_;
 wire _3514_;
 wire _3515_;
 wire _3516_;
 wire _3517_;
 wire _3519_;
 wire _3520_;
 wire _3521_;
 wire _3522_;
 wire _3523_;
 wire _3524_;
 wire _3525_;
 wire _3526_;
 wire _3527_;
 wire _3528_;
 wire _3529_;
 wire _3530_;
 wire _3531_;
 wire _3532_;
 wire _3533_;
 wire _3534_;
 wire _3536_;
 wire _3537_;
 wire _3538_;
 wire _3539_;
 wire _3542_;
 wire _3543_;
 wire _3545_;
 wire _3546_;
 wire _3547_;
 wire _3548_;
 wire _3549_;
 wire _3550_;
 wire _3551_;
 wire _3552_;
 wire _3553_;
 wire _3554_;
 wire _3555_;
 wire _3556_;
 wire _3558_;
 wire _3559_;
 wire _3560_;
 wire _3561_;
 wire _3562_;
 wire _3563_;
 wire _3564_;
 wire _3565_;
 wire _3566_;
 wire _3567_;
 wire _3568_;
 wire _3569_;
 wire _3570_;
 wire _3571_;
 wire _3572_;
 wire _3573_;
 wire _3574_;
 wire _3575_;
 wire _3576_;
 wire _3577_;
 wire _3578_;
 wire _3579_;
 wire _3580_;
 wire _3581_;
 wire _3582_;
 wire _3583_;
 wire _3584_;
 wire _3585_;
 wire _3586_;
 wire _3587_;
 wire _3588_;
 wire _3589_;
 wire _3590_;
 wire _3591_;
 wire _3592_;
 wire _3593_;
 wire _3594_;
 wire _3595_;
 wire _3596_;
 wire _3597_;
 wire _3598_;
 wire _3599_;
 wire _3600_;
 wire _3601_;
 wire _3602_;
 wire _3604_;
 wire _3605_;
 wire _3606_;
 wire _3607_;
 wire _3610_;
 wire _3611_;
 wire _3612_;
 wire _3613_;
 wire _3614_;
 wire _3615_;
 wire _3617_;
 wire _3618_;
 wire _3619_;
 wire _3620_;
 wire _3621_;
 wire _3622_;
 wire _3623_;
 wire _3624_;
 wire _3625_;
 wire _3626_;
 wire _3627_;
 wire _3629_;
 wire _3630_;
 wire _3631_;
 wire _3632_;
 wire _3633_;
 wire _3634_;
 wire _3635_;
 wire _3636_;
 wire _3637_;
 wire _3638_;
 wire _3639_;
 wire _3640_;
 wire _3641_;
 wire _3642_;
 wire _3646_;
 wire _3647_;
 wire _3648_;
 wire _3651_;
 wire _3652_;
 wire _3655_;
 wire _3656_;
 wire _3657_;
 wire _3659_;
 wire _3660_;
 wire _3661_;
 wire _3662_;
 wire _3663_;
 wire _3664_;
 wire _3665_;
 wire _3666_;
 wire _3667_;
 wire _3668_;
 wire _3669_;
 wire _3670_;
 wire _3671_;
 wire _3672_;
 wire _3673_;
 wire _3674_;
 wire _3675_;
 wire _3676_;
 wire _3677_;
 wire _3678_;
 wire _3679_;
 wire _3680_;
 wire _3682_;
 wire _3683_;
 wire _3684_;
 wire _3685_;
 wire _3686_;
 wire _3687_;
 wire _3688_;
 wire _3689_;
 wire _3690_;
 wire _3691_;
 wire _3692_;
 wire _3693_;
 wire _3694_;
 wire _3695_;
 wire _3696_;
 wire _3697_;
 wire _3698_;
 wire _3699_;
 wire _3701_;
 wire _3702_;
 wire _3703_;
 wire _3704_;
 wire _3705_;
 wire _3706_;
 wire _3707_;
 wire _3708_;
 wire _3709_;
 wire _3711_;
 wire _3712_;
 wire _3714_;
 wire _3715_;
 wire _3716_;
 wire _3717_;
 wire _3718_;
 wire _3719_;
 wire _3721_;
 wire _3723_;
 wire _3724_;
 wire _3725_;
 wire _3726_;
 wire _3727_;
 wire _3728_;
 wire _3729_;
 wire _3730_;
 wire _3731_;
 wire _3732_;
 wire _3733_;
 wire _3734_;
 wire _3735_;
 wire _3736_;
 wire _3737_;
 wire _3738_;
 wire _3739_;
 wire _3740_;
 wire _3741_;
 wire _3742_;
 wire _3743_;
 wire _3744_;
 wire _3745_;
 wire _3746_;
 wire _3747_;
 wire _3748_;
 wire _3749_;
 wire _3750_;
 wire _3751_;
 wire _3752_;
 wire _3753_;
 wire _3754_;
 wire _3755_;
 wire _3756_;
 wire _3757_;
 wire _3758_;
 wire _3761_;
 wire _3762_;
 wire _3763_;
 wire _3764_;
 wire _3765_;
 wire _3766_;
 wire _3769_;
 wire _3770_;
 wire _3771_;
 wire _3773_;
 wire _3775_;
 wire _3776_;
 wire _3777_;
 wire _3778_;
 wire _3780_;
 wire _3781_;
 wire _3782_;
 wire _3783_;
 wire _3784_;
 wire _3785_;
 wire _3786_;
 wire _3787_;
 wire _3788_;
 wire _3789_;
 wire _3790_;
 wire _3791_;
 wire _3792_;
 wire _3793_;
 wire _3794_;
 wire _3795_;
 wire _3796_;
 wire _3797_;
 wire _3799_;
 wire _3800_;
 wire _3801_;
 wire _3802_;
 wire _3803_;
 wire _3804_;
 wire _3806_;
 wire _3807_;
 wire _3808_;
 wire _3809_;
 wire _3810_;
 wire _3811_;
 wire _3812_;
 wire _3813_;
 wire _3814_;
 wire _3815_;
 wire _3816_;
 wire _3817_;
 wire _3818_;
 wire _3819_;
 wire _3820_;
 wire _3821_;
 wire _3822_;
 wire _3823_;
 wire _3824_;
 wire _3825_;
 wire _3826_;
 wire _3827_;
 wire _3828_;
 wire _3829_;
 wire _3830_;
 wire _3831_;
 wire _3832_;
 wire _3833_;
 wire _3834_;
 wire _3836_;
 wire _3837_;
 wire _3838_;
 wire _3839_;
 wire _3840_;
 wire _3841_;
 wire _3842_;
 wire _3843_;
 wire _3844_;
 wire _3845_;
 wire _3846_;
 wire _3847_;
 wire _3848_;
 wire _3849_;
 wire _3850_;
 wire _3851_;
 wire _3852_;
 wire _3853_;
 wire _3854_;
 wire _3855_;
 wire _3856_;
 wire _3857_;
 wire _3858_;
 wire _3859_;
 wire _3860_;
 wire _3861_;
 wire _3862_;
 wire _3864_;
 wire _3865_;
 wire _3866_;
 wire _3867_;
 wire _3868_;
 wire _3869_;
 wire _3870_;
 wire _3871_;
 wire _3873_;
 wire _3874_;
 wire _3875_;
 wire _3876_;
 wire _3877_;
 wire _3878_;
 wire _3880_;
 wire _3881_;
 wire _3882_;
 wire _3883_;
 wire _3884_;
 wire _3885_;
 wire _3886_;
 wire _3887_;
 wire _3888_;
 wire _3889_;
 wire _3890_;
 wire _3891_;
 wire _3892_;
 wire _3893_;
 wire _3894_;
 wire _3895_;
 wire _3896_;
 wire _3897_;
 wire _3898_;
 wire _3899_;
 wire _3900_;
 wire _3901_;
 wire _3902_;
 wire _3903_;
 wire _3904_;
 wire _3905_;
 wire _3906_;
 wire _3907_;
 wire _3908_;
 wire _3909_;
 wire _3910_;
 wire _3911_;
 wire _3912_;
 wire _3913_;
 wire _3914_;
 wire _3915_;
 wire _3916_;
 wire _3917_;
 wire _3918_;
 wire _3919_;
 wire _3920_;
 wire _3921_;
 wire _3922_;
 wire _3923_;
 wire _3924_;
 wire _3925_;
 wire _3926_;
 wire _3927_;
 wire _3928_;
 wire _3929_;
 wire _3930_;
 wire _3931_;
 wire _3932_;
 wire _3933_;
 wire _3934_;
 wire _3935_;
 wire _3936_;
 wire _3937_;
 wire _3938_;
 wire _3939_;
 wire _3940_;
 wire _3941_;
 wire _3942_;
 wire _3943_;
 wire _3944_;
 wire _3945_;
 wire _3946_;
 wire _3947_;
 wire _3948_;
 wire _3949_;
 wire _3950_;
 wire _3951_;
 wire _3952_;
 wire _3953_;
 wire _3954_;
 wire _3955_;
 wire _3956_;
 wire _3957_;
 wire _3958_;
 wire _3959_;
 wire _3960_;
 wire _3961_;
 wire _3962_;
 wire _3963_;
 wire _3964_;
 wire _3965_;
 wire _3966_;
 wire _3967_;
 wire _3968_;
 wire _3969_;
 wire _3970_;
 wire _3971_;
 wire _3972_;
 wire _3973_;
 wire _3974_;
 wire _3975_;
 wire _3976_;
 wire _3977_;
 wire _3978_;
 wire _3979_;
 wire _3980_;
 wire _3981_;
 wire _3982_;
 wire _3983_;
 wire _3984_;
 wire _3985_;
 wire _3986_;
 wire _3987_;
 wire _3988_;
 wire _3989_;
 wire _3990_;
 wire _3991_;
 wire _3992_;
 wire _3993_;
 wire _3994_;
 wire _3995_;
 wire _3996_;
 wire _3997_;
 wire _3998_;
 wire _3999_;
 wire _4000_;
 wire _4001_;
 wire _4002_;
 wire _4003_;
 wire _4005_;
 wire _4006_;
 wire _4007_;
 wire _4008_;
 wire _4009_;
 wire _4011_;
 wire _4012_;
 wire _4013_;
 wire _4014_;
 wire _4015_;
 wire _4016_;
 wire _4017_;
 wire _4018_;
 wire _4019_;
 wire _4020_;
 wire _4021_;
 wire _4022_;
 wire _4023_;
 wire _4024_;
 wire _4025_;
 wire _4026_;
 wire _4027_;
 wire _4028_;
 wire _4029_;
 wire _4030_;
 wire _4031_;
 wire _4032_;
 wire _4033_;
 wire _4034_;
 wire _4035_;
 wire _4036_;
 wire _4037_;
 wire _4038_;
 wire _4039_;
 wire _4040_;
 wire _4041_;
 wire _4042_;
 wire _4043_;
 wire _4044_;
 wire _4045_;
 wire _4047_;
 wire _4048_;
 wire _4049_;
 wire _4050_;
 wire _4051_;
 wire _4052_;
 wire _4053_;
 wire _4054_;
 wire _4056_;
 wire _4057_;
 wire _4058_;
 wire _4059_;
 wire _4060_;
 wire _4061_;
 wire _4062_;
 wire _4063_;
 wire _4064_;
 wire _4065_;
 wire _4066_;
 wire _4067_;
 wire _4068_;
 wire _4069_;
 wire _4070_;
 wire _4071_;
 wire _4072_;
 wire _4073_;
 wire _4074_;
 wire _4075_;
 wire _4076_;
 wire _4077_;
 wire _4078_;
 wire _4079_;
 wire _4080_;
 wire _4081_;
 wire _4082_;
 wire _4083_;
 wire _4084_;
 wire _4085_;
 wire _4086_;
 wire _4087_;
 wire _4088_;
 wire _4089_;
 wire _4090_;
 wire _4091_;
 wire _4092_;
 wire _4093_;
 wire _4094_;
 wire _4095_;
 wire _4096_;
 wire _4097_;
 wire _4098_;
 wire _4099_;
 wire _4100_;
 wire _4101_;
 wire _4102_;
 wire _4103_;
 wire _4104_;
 wire _4105_;
 wire _4106_;
 wire _4107_;
 wire _4108_;
 wire _4109_;
 wire _4110_;
 wire _4111_;
 wire _4112_;
 wire _4113_;
 wire _4114_;
 wire _4115_;
 wire _4116_;
 wire _4117_;
 wire _4118_;
 wire _4119_;
 wire _4120_;
 wire _4121_;
 wire _4122_;
 wire _4123_;
 wire _4124_;
 wire _4125_;
 wire _4126_;
 wire _4127_;
 wire _4128_;
 wire _4129_;
 wire _4130_;
 wire _4131_;
 wire _4132_;
 wire _4133_;
 wire _4134_;
 wire _4135_;
 wire _4136_;
 wire _4137_;
 wire _4138_;
 wire _4139_;
 wire _4140_;
 wire _4141_;
 wire _4142_;
 wire _4143_;
 wire _4144_;
 wire _4145_;
 wire _4146_;
 wire _4147_;
 wire _4148_;
 wire _4149_;
 wire _4150_;
 wire _4151_;
 wire _4152_;
 wire _4153_;
 wire _4154_;
 wire _4155_;
 wire _4156_;
 wire _4157_;
 wire _4158_;
 wire _4159_;
 wire _4160_;
 wire _4161_;
 wire _4162_;
 wire _4163_;
 wire _4164_;
 wire _4165_;
 wire _4166_;
 wire _4167_;
 wire _4168_;
 wire _4169_;
 wire _4170_;
 wire _4171_;
 wire _4172_;
 wire _4173_;
 wire _4174_;
 wire _4175_;
 wire _4176_;
 wire _4177_;
 wire _4178_;
 wire _4179_;
 wire _4180_;
 wire _4181_;
 wire _4182_;
 wire _4183_;
 wire _4184_;
 wire _4185_;
 wire _4186_;
 wire _4187_;
 wire _4188_;
 wire _4189_;
 wire _4190_;
 wire _4191_;
 wire _4192_;
 wire _4193_;
 wire _4194_;
 wire _4195_;
 wire _4196_;
 wire _4197_;
 wire _4198_;
 wire _4199_;
 wire _4201_;
 wire _4202_;
 wire _4203_;
 wire _4204_;
 wire _4205_;
 wire _4206_;
 wire _4207_;
 wire _4208_;
 wire _4209_;
 wire _4210_;
 wire _4211_;
 wire _4212_;
 wire _4213_;
 wire _4214_;
 wire _4215_;
 wire _4216_;
 wire _4217_;
 wire _4218_;
 wire _4219_;
 wire _4220_;
 wire _4221_;
 wire _4222_;
 wire _4223_;
 wire _4224_;
 wire _4225_;
 wire _4226_;
 wire _4227_;
 wire _4228_;
 wire _4229_;
 wire _4230_;
 wire _4231_;
 wire _4232_;
 wire _4233_;
 wire _4234_;
 wire _4235_;
 wire _4237_;
 wire _4238_;
 wire _4239_;
 wire _4240_;
 wire _4241_;
 wire _4242_;
 wire _4243_;
 wire _4244_;
 wire _4245_;
 wire _4246_;
 wire _4247_;
 wire _4249_;
 wire _4251_;
 wire _4252_;
 wire _4253_;
 wire _4254_;
 wire _4255_;
 wire _4256_;
 wire _4257_;
 wire _4258_;
 wire _4259_;
 wire _4260_;
 wire _4261_;
 wire _4262_;
 wire _4263_;
 wire _4264_;
 wire _4265_;
 wire _4267_;
 wire _4268_;
 wire _4269_;
 wire _4270_;
 wire _4271_;
 wire _4272_;
 wire _4273_;
 wire _4275_;
 wire _4276_;
 wire _4278_;
 wire _4279_;
 wire _4281_;
 wire _4282_;
 wire _4283_;
 wire _4284_;
 wire _4285_;
 wire _4286_;
 wire _4287_;
 wire _4288_;
 wire _4289_;
 wire _4290_;
 wire _4291_;
 wire _4292_;
 wire _4293_;
 wire _4294_;
 wire _4295_;
 wire _4296_;
 wire _4297_;
 wire _4298_;
 wire _4299_;
 wire _4300_;
 wire _4301_;
 wire _4302_;
 wire _4303_;
 wire _4304_;
 wire _4305_;
 wire _4306_;
 wire _4307_;
 wire _4308_;
 wire _4309_;
 wire _4310_;
 wire _4311_;
 wire _4312_;
 wire _4313_;
 wire _4314_;
 wire _4315_;
 wire _4316_;
 wire _4317_;
 wire _4318_;
 wire _4319_;
 wire _4320_;
 wire _4321_;
 wire _4322_;
 wire _4323_;
 wire _4324_;
 wire _4325_;
 wire _4326_;
 wire _4328_;
 wire _4329_;
 wire _4330_;
 wire _4331_;
 wire _4332_;
 wire _4333_;
 wire _4334_;
 wire _4335_;
 wire _4336_;
 wire _4337_;
 wire _4338_;
 wire _4339_;
 wire _4340_;
 wire _4341_;
 wire _4342_;
 wire _4343_;
 wire _4344_;
 wire _4345_;
 wire _4346_;
 wire _4347_;
 wire _4348_;
 wire _4349_;
 wire _4350_;
 wire _4351_;
 wire _4352_;
 wire _4353_;
 wire _4354_;
 wire _4355_;
 wire _4356_;
 wire _4357_;
 wire _4358_;
 wire _4359_;
 wire _4360_;
 wire _4361_;
 wire _4362_;
 wire _4363_;
 wire _4364_;
 wire _4365_;
 wire _4366_;
 wire _4367_;
 wire _4368_;
 wire _4369_;
 wire _4370_;
 wire _4371_;
 wire _4372_;
 wire _4373_;
 wire _4374_;
 wire _4375_;
 wire _4376_;
 wire _4377_;
 wire _4378_;
 wire _4379_;
 wire _4380_;
 wire _4381_;
 wire _4382_;
 wire _4383_;
 wire _4384_;
 wire _4385_;
 wire _4386_;
 wire _4387_;
 wire _4388_;
 wire _4389_;
 wire _4390_;
 wire _4391_;
 wire _4392_;
 wire _4393_;
 wire _4394_;
 wire _4395_;
 wire _4396_;
 wire _4397_;
 wire _4398_;
 wire _4399_;
 wire _4400_;
 wire _4401_;
 wire _4402_;
 wire _4403_;
 wire _4404_;
 wire _4405_;
 wire _4406_;
 wire _4407_;
 wire _4408_;
 wire _4409_;
 wire _4410_;
 wire _4411_;
 wire _4412_;
 wire _4413_;
 wire _4414_;
 wire _4415_;
 wire _4416_;
 wire _4417_;
 wire _4418_;
 wire _4419_;
 wire _4420_;
 wire _4421_;
 wire _4422_;
 wire _4423_;
 wire _4424_;
 wire _4425_;
 wire _4426_;
 wire _4427_;
 wire _4428_;
 wire _4429_;
 wire _4430_;
 wire _4431_;
 wire _4432_;
 wire _4433_;
 wire _4434_;
 wire _4435_;
 wire _4436_;
 wire _4437_;
 wire _4438_;
 wire _4439_;
 wire _4440_;
 wire _4441_;
 wire _4442_;
 wire _4443_;
 wire _4444_;
 wire _4445_;
 wire _4446_;
 wire _4447_;
 wire _4448_;
 wire _4449_;
 wire _4450_;
 wire _4451_;
 wire _4452_;
 wire _4453_;
 wire _4454_;
 wire _4455_;
 wire _4456_;
 wire _4457_;
 wire _4458_;
 wire _4459_;
 wire _4460_;
 wire _4461_;
 wire _4462_;
 wire _4463_;
 wire _4464_;
 wire _4465_;
 wire _4466_;
 wire _4467_;
 wire _4468_;
 wire _4469_;
 wire _4470_;
 wire _4471_;
 wire _4472_;
 wire _4473_;
 wire _4474_;
 wire _4475_;
 wire _4476_;
 wire _4477_;
 wire _4478_;
 wire _4479_;
 wire _4480_;
 wire _4481_;
 wire _4482_;
 wire _4483_;
 wire _4484_;
 wire _4485_;
 wire _4486_;
 wire _4487_;
 wire _4488_;
 wire _4489_;
 wire _4490_;
 wire _4491_;
 wire _4492_;
 wire _4493_;
 wire _4494_;
 wire _4495_;
 wire _4496_;
 wire _4497_;
 wire _4498_;
 wire _4499_;
 wire _4500_;
 wire _4501_;
 wire _4502_;
 wire _4503_;
 wire _4504_;
 wire _4505_;
 wire _4506_;
 wire _4507_;
 wire _4508_;
 wire _4509_;
 wire _4510_;
 wire _4511_;
 wire _4512_;
 wire _4513_;
 wire _4514_;
 wire _4515_;
 wire _4516_;
 wire _4517_;
 wire _4518_;
 wire _4519_;
 wire _4520_;
 wire _4521_;
 wire _4522_;
 wire _4523_;
 wire _4524_;
 wire _4525_;
 wire _4526_;
 wire _4527_;
 wire _4528_;
 wire _4529_;
 wire _4530_;
 wire _4531_;
 wire _4532_;
 wire _4533_;
 wire _4534_;
 wire _4535_;
 wire _4536_;
 wire _4537_;
 wire _4538_;
 wire _4539_;
 wire _4540_;
 wire _4541_;
 wire _4542_;
 wire _4543_;
 wire _4544_;
 wire _4545_;
 wire _4546_;
 wire _4547_;
 wire _4548_;
 wire _4549_;
 wire _4550_;
 wire _4551_;
 wire _4552_;
 wire _4553_;
 wire _4554_;
 wire _4555_;
 wire _4556_;
 wire _4557_;
 wire _4558_;
 wire _4559_;
 wire _4560_;
 wire _4561_;
 wire _4562_;
 wire _4563_;
 wire _4564_;
 wire _4565_;
 wire _4566_;
 wire _4567_;
 wire _4568_;
 wire _4569_;
 wire _4570_;
 wire _4571_;
 wire _4572_;
 wire _4573_;
 wire _4574_;
 wire _4575_;
 wire _4576_;
 wire _4577_;
 wire _4578_;
 wire _4579_;
 wire _4580_;
 wire _4581_;
 wire _4582_;
 wire _4583_;
 wire _4584_;
 wire _4585_;
 wire _4586_;
 wire _4587_;
 wire _4588_;
 wire _4589_;
 wire _4590_;
 wire _4591_;
 wire _4592_;
 wire _4593_;
 wire _4594_;
 wire _4595_;
 wire _4596_;
 wire _4597_;
 wire _4598_;
 wire _4599_;
 wire _4600_;
 wire _4601_;
 wire _4602_;
 wire _4603_;
 wire _4604_;
 wire _4605_;
 wire _4606_;
 wire _4607_;
 wire _4608_;
 wire _4609_;
 wire _4610_;
 wire _4611_;
 wire _4612_;
 wire _4613_;
 wire _4614_;
 wire _4615_;
 wire _4616_;
 wire _4617_;
 wire _4618_;
 wire _4619_;
 wire _4620_;
 wire _4621_;
 wire _4622_;
 wire _4623_;
 wire _4624_;
 wire _4625_;
 wire _4626_;
 wire _4627_;
 wire _4628_;
 wire _4629_;
 wire _4630_;
 wire _4631_;
 wire _4632_;
 wire _4633_;
 wire _4634_;
 wire _4635_;
 wire _4636_;
 wire _4637_;
 wire _4638_;
 wire _4639_;
 wire _4640_;
 wire _4641_;
 wire _4642_;
 wire _4643_;
 wire _4644_;
 wire _4645_;
 wire _4646_;
 wire _4647_;
 wire _4648_;
 wire _4649_;
 wire _4650_;
 wire _4651_;
 wire _4652_;
 wire _4653_;
 wire _4654_;
 wire _4655_;
 wire _4656_;
 wire _4657_;
 wire _4658_;
 wire _4659_;
 wire _4660_;
 wire _4661_;
 wire _4662_;
 wire _4663_;
 wire _4664_;
 wire _4665_;
 wire _4666_;
 wire _4667_;
 wire _4668_;
 wire _4669_;
 wire _4670_;
 wire _4671_;
 wire _4672_;
 wire _4673_;
 wire _4674_;
 wire _4675_;
 wire _4676_;
 wire _4677_;
 wire _4678_;
 wire _4679_;
 wire _4680_;
 wire _4681_;
 wire _4682_;
 wire _4683_;
 wire _4684_;
 wire _4685_;
 wire _4686_;
 wire \alu_add_sub[0] ;
 wire \alu_out[0] ;
 wire \alu_out[10] ;
 wire \alu_out[11] ;
 wire \alu_out[12] ;
 wire \alu_out[13] ;
 wire \alu_out[14] ;
 wire \alu_out[15] ;
 wire \alu_out[16] ;
 wire \alu_out[17] ;
 wire \alu_out[18] ;
 wire \alu_out[19] ;
 wire \alu_out[1] ;
 wire \alu_out[20] ;
 wire \alu_out[21] ;
 wire \alu_out[22] ;
 wire \alu_out[23] ;
 wire \alu_out[24] ;
 wire \alu_out[25] ;
 wire \alu_out[26] ;
 wire \alu_out[27] ;
 wire \alu_out[28] ;
 wire \alu_out[29] ;
 wire \alu_out[2] ;
 wire \alu_out[30] ;
 wire \alu_out[31] ;
 wire \alu_out[3] ;
 wire \alu_out[4] ;
 wire \alu_out[5] ;
 wire \alu_out[6] ;
 wire \alu_out[7] ;
 wire \alu_out[8] ;
 wire \alu_out[9] ;
 wire \alu_out_q[0] ;
 wire \alu_out_q[10] ;
 wire \alu_out_q[11] ;
 wire \alu_out_q[12] ;
 wire \alu_out_q[13] ;
 wire \alu_out_q[14] ;
 wire \alu_out_q[15] ;
 wire \alu_out_q[16] ;
 wire \alu_out_q[17] ;
 wire \alu_out_q[18] ;
 wire \alu_out_q[19] ;
 wire \alu_out_q[1] ;
 wire \alu_out_q[20] ;
 wire \alu_out_q[21] ;
 wire \alu_out_q[22] ;
 wire \alu_out_q[23] ;
 wire \alu_out_q[24] ;
 wire \alu_out_q[25] ;
 wire \alu_out_q[26] ;
 wire \alu_out_q[27] ;
 wire \alu_out_q[28] ;
 wire \alu_out_q[29] ;
 wire \alu_out_q[2] ;
 wire \alu_out_q[30] ;
 wire \alu_out_q[31] ;
 wire \alu_out_q[3] ;
 wire \alu_out_q[4] ;
 wire \alu_out_q[5] ;
 wire \alu_out_q[6] ;
 wire \alu_out_q[7] ;
 wire \alu_out_q[8] ;
 wire \alu_out_q[9] ;
 wire \count_cycle[0] ;
 wire \count_cycle[10] ;
 wire \count_cycle[11] ;
 wire \count_cycle[12] ;
 wire \count_cycle[13] ;
 wire \count_cycle[14] ;
 wire \count_cycle[15] ;
 wire \count_cycle[16] ;
 wire \count_cycle[17] ;
 wire \count_cycle[18] ;
 wire \count_cycle[19] ;
 wire \count_cycle[1] ;
 wire \count_cycle[20] ;
 wire \count_cycle[21] ;
 wire \count_cycle[22] ;
 wire \count_cycle[23] ;
 wire \count_cycle[24] ;
 wire \count_cycle[25] ;
 wire \count_cycle[26] ;
 wire \count_cycle[27] ;
 wire \count_cycle[28] ;
 wire \count_cycle[29] ;
 wire \count_cycle[2] ;
 wire \count_cycle[30] ;
 wire \count_cycle[31] ;
 wire \count_cycle[32] ;
 wire \count_cycle[33] ;
 wire \count_cycle[34] ;
 wire \count_cycle[35] ;
 wire \count_cycle[36] ;
 wire \count_cycle[37] ;
 wire \count_cycle[38] ;
 wire \count_cycle[39] ;
 wire \count_cycle[3] ;
 wire \count_cycle[40] ;
 wire \count_cycle[41] ;
 wire \count_cycle[42] ;
 wire \count_cycle[43] ;
 wire \count_cycle[44] ;
 wire \count_cycle[45] ;
 wire \count_cycle[46] ;
 wire \count_cycle[47] ;
 wire \count_cycle[48] ;
 wire \count_cycle[49] ;
 wire \count_cycle[4] ;
 wire \count_cycle[50] ;
 wire \count_cycle[51] ;
 wire \count_cycle[52] ;
 wire \count_cycle[53] ;
 wire \count_cycle[54] ;
 wire \count_cycle[55] ;
 wire \count_cycle[56] ;
 wire \count_cycle[57] ;
 wire \count_cycle[58] ;
 wire \count_cycle[59] ;
 wire \count_cycle[5] ;
 wire \count_cycle[60] ;
 wire \count_cycle[61] ;
 wire \count_cycle[62] ;
 wire \count_cycle[63] ;
 wire \count_cycle[6] ;
 wire \count_cycle[7] ;
 wire \count_cycle[8] ;
 wire \count_cycle[9] ;
 wire \count_instr[0] ;
 wire \count_instr[10] ;
 wire \count_instr[11] ;
 wire \count_instr[12] ;
 wire \count_instr[13] ;
 wire \count_instr[14] ;
 wire \count_instr[15] ;
 wire \count_instr[16] ;
 wire \count_instr[17] ;
 wire \count_instr[18] ;
 wire \count_instr[19] ;
 wire \count_instr[1] ;
 wire \count_instr[20] ;
 wire \count_instr[21] ;
 wire \count_instr[22] ;
 wire \count_instr[23] ;
 wire \count_instr[24] ;
 wire \count_instr[25] ;
 wire \count_instr[26] ;
 wire \count_instr[27] ;
 wire \count_instr[28] ;
 wire \count_instr[29] ;
 wire \count_instr[2] ;
 wire \count_instr[30] ;
 wire \count_instr[31] ;
 wire \count_instr[32] ;
 wire \count_instr[33] ;
 wire \count_instr[34] ;
 wire \count_instr[35] ;
 wire \count_instr[36] ;
 wire \count_instr[37] ;
 wire \count_instr[38] ;
 wire \count_instr[39] ;
 wire \count_instr[3] ;
 wire \count_instr[40] ;
 wire \count_instr[41] ;
 wire \count_instr[42] ;
 wire \count_instr[43] ;
 wire \count_instr[44] ;
 wire \count_instr[45] ;
 wire \count_instr[46] ;
 wire \count_instr[47] ;
 wire \count_instr[48] ;
 wire \count_instr[49] ;
 wire \count_instr[4] ;
 wire \count_instr[50] ;
 wire \count_instr[51] ;
 wire \count_instr[52] ;
 wire \count_instr[53] ;
 wire \count_instr[54] ;
 wire \count_instr[55] ;
 wire \count_instr[56] ;
 wire \count_instr[57] ;
 wire \count_instr[58] ;
 wire \count_instr[59] ;
 wire \count_instr[5] ;
 wire \count_instr[60] ;
 wire \count_instr[61] ;
 wire \count_instr[62] ;
 wire \count_instr[63] ;
 wire \count_instr[6] ;
 wire \count_instr[7] ;
 wire \count_instr[8] ;
 wire \count_instr[9] ;
 wire \cpu_state[0] ;
 wire \cpu_state[1] ;
 wire \cpu_state[2] ;
 wire \cpu_state[3] ;
 wire \cpu_state[4] ;
 wire \cpu_state[5] ;
 wire \cpu_state[6] ;
 wire \cpuregs[0][0] ;
 wire \cpuregs[0][10] ;
 wire \cpuregs[0][11] ;
 wire \cpuregs[0][12] ;
 wire \cpuregs[0][13] ;
 wire \cpuregs[0][14] ;
 wire \cpuregs[0][15] ;
 wire \cpuregs[0][16] ;
 wire \cpuregs[0][17] ;
 wire \cpuregs[0][18] ;
 wire \cpuregs[0][19] ;
 wire \cpuregs[0][1] ;
 wire \cpuregs[0][20] ;
 wire \cpuregs[0][21] ;
 wire \cpuregs[0][22] ;
 wire \cpuregs[0][23] ;
 wire \cpuregs[0][24] ;
 wire \cpuregs[0][25] ;
 wire \cpuregs[0][26] ;
 wire \cpuregs[0][27] ;
 wire \cpuregs[0][28] ;
 wire \cpuregs[0][29] ;
 wire \cpuregs[0][2] ;
 wire \cpuregs[0][30] ;
 wire \cpuregs[0][31] ;
 wire \cpuregs[0][3] ;
 wire \cpuregs[0][4] ;
 wire \cpuregs[0][5] ;
 wire \cpuregs[0][6] ;
 wire \cpuregs[0][7] ;
 wire \cpuregs[0][8] ;
 wire \cpuregs[0][9] ;
 wire \cpuregs[10][0] ;
 wire \cpuregs[10][10] ;
 wire \cpuregs[10][11] ;
 wire \cpuregs[10][12] ;
 wire \cpuregs[10][13] ;
 wire \cpuregs[10][14] ;
 wire \cpuregs[10][15] ;
 wire \cpuregs[10][16] ;
 wire \cpuregs[10][17] ;
 wire \cpuregs[10][18] ;
 wire \cpuregs[10][19] ;
 wire \cpuregs[10][1] ;
 wire \cpuregs[10][20] ;
 wire \cpuregs[10][21] ;
 wire \cpuregs[10][22] ;
 wire \cpuregs[10][23] ;
 wire \cpuregs[10][24] ;
 wire \cpuregs[10][25] ;
 wire \cpuregs[10][26] ;
 wire \cpuregs[10][27] ;
 wire \cpuregs[10][28] ;
 wire \cpuregs[10][29] ;
 wire \cpuregs[10][2] ;
 wire \cpuregs[10][30] ;
 wire \cpuregs[10][31] ;
 wire \cpuregs[10][3] ;
 wire \cpuregs[10][4] ;
 wire \cpuregs[10][5] ;
 wire \cpuregs[10][6] ;
 wire \cpuregs[10][7] ;
 wire \cpuregs[10][8] ;
 wire \cpuregs[10][9] ;
 wire \cpuregs[11][0] ;
 wire \cpuregs[11][10] ;
 wire \cpuregs[11][11] ;
 wire \cpuregs[11][12] ;
 wire \cpuregs[11][13] ;
 wire \cpuregs[11][14] ;
 wire \cpuregs[11][15] ;
 wire \cpuregs[11][16] ;
 wire \cpuregs[11][17] ;
 wire \cpuregs[11][18] ;
 wire \cpuregs[11][19] ;
 wire \cpuregs[11][1] ;
 wire \cpuregs[11][20] ;
 wire \cpuregs[11][21] ;
 wire \cpuregs[11][22] ;
 wire \cpuregs[11][23] ;
 wire \cpuregs[11][24] ;
 wire \cpuregs[11][25] ;
 wire \cpuregs[11][26] ;
 wire \cpuregs[11][27] ;
 wire \cpuregs[11][28] ;
 wire \cpuregs[11][29] ;
 wire \cpuregs[11][2] ;
 wire \cpuregs[11][30] ;
 wire \cpuregs[11][31] ;
 wire \cpuregs[11][3] ;
 wire \cpuregs[11][4] ;
 wire \cpuregs[11][5] ;
 wire \cpuregs[11][6] ;
 wire \cpuregs[11][7] ;
 wire \cpuregs[11][8] ;
 wire \cpuregs[11][9] ;
 wire \cpuregs[12][0] ;
 wire \cpuregs[12][10] ;
 wire \cpuregs[12][11] ;
 wire \cpuregs[12][12] ;
 wire \cpuregs[12][13] ;
 wire \cpuregs[12][14] ;
 wire \cpuregs[12][15] ;
 wire \cpuregs[12][16] ;
 wire \cpuregs[12][17] ;
 wire \cpuregs[12][18] ;
 wire \cpuregs[12][19] ;
 wire \cpuregs[12][1] ;
 wire \cpuregs[12][20] ;
 wire \cpuregs[12][21] ;
 wire \cpuregs[12][22] ;
 wire \cpuregs[12][23] ;
 wire \cpuregs[12][24] ;
 wire \cpuregs[12][25] ;
 wire \cpuregs[12][26] ;
 wire \cpuregs[12][27] ;
 wire \cpuregs[12][28] ;
 wire \cpuregs[12][29] ;
 wire \cpuregs[12][2] ;
 wire \cpuregs[12][30] ;
 wire \cpuregs[12][31] ;
 wire \cpuregs[12][3] ;
 wire \cpuregs[12][4] ;
 wire \cpuregs[12][5] ;
 wire \cpuregs[12][6] ;
 wire \cpuregs[12][7] ;
 wire \cpuregs[12][8] ;
 wire \cpuregs[12][9] ;
 wire \cpuregs[13][0] ;
 wire \cpuregs[13][10] ;
 wire \cpuregs[13][11] ;
 wire \cpuregs[13][12] ;
 wire \cpuregs[13][13] ;
 wire \cpuregs[13][14] ;
 wire \cpuregs[13][15] ;
 wire \cpuregs[13][16] ;
 wire \cpuregs[13][17] ;
 wire \cpuregs[13][18] ;
 wire \cpuregs[13][19] ;
 wire \cpuregs[13][1] ;
 wire \cpuregs[13][20] ;
 wire \cpuregs[13][21] ;
 wire \cpuregs[13][22] ;
 wire \cpuregs[13][23] ;
 wire \cpuregs[13][24] ;
 wire \cpuregs[13][25] ;
 wire \cpuregs[13][26] ;
 wire \cpuregs[13][27] ;
 wire \cpuregs[13][28] ;
 wire \cpuregs[13][29] ;
 wire \cpuregs[13][2] ;
 wire \cpuregs[13][30] ;
 wire \cpuregs[13][31] ;
 wire \cpuregs[13][3] ;
 wire \cpuregs[13][4] ;
 wire \cpuregs[13][5] ;
 wire \cpuregs[13][6] ;
 wire \cpuregs[13][7] ;
 wire \cpuregs[13][8] ;
 wire \cpuregs[13][9] ;
 wire \cpuregs[14][0] ;
 wire \cpuregs[14][10] ;
 wire \cpuregs[14][11] ;
 wire \cpuregs[14][12] ;
 wire \cpuregs[14][13] ;
 wire \cpuregs[14][14] ;
 wire \cpuregs[14][15] ;
 wire \cpuregs[14][16] ;
 wire \cpuregs[14][17] ;
 wire \cpuregs[14][18] ;
 wire \cpuregs[14][19] ;
 wire \cpuregs[14][1] ;
 wire \cpuregs[14][20] ;
 wire \cpuregs[14][21] ;
 wire \cpuregs[14][22] ;
 wire \cpuregs[14][23] ;
 wire \cpuregs[14][24] ;
 wire \cpuregs[14][25] ;
 wire \cpuregs[14][26] ;
 wire \cpuregs[14][27] ;
 wire \cpuregs[14][28] ;
 wire \cpuregs[14][29] ;
 wire \cpuregs[14][2] ;
 wire \cpuregs[14][30] ;
 wire \cpuregs[14][31] ;
 wire \cpuregs[14][3] ;
 wire \cpuregs[14][4] ;
 wire \cpuregs[14][5] ;
 wire \cpuregs[14][6] ;
 wire \cpuregs[14][7] ;
 wire \cpuregs[14][8] ;
 wire \cpuregs[14][9] ;
 wire \cpuregs[15][0] ;
 wire \cpuregs[15][10] ;
 wire \cpuregs[15][11] ;
 wire \cpuregs[15][12] ;
 wire \cpuregs[15][13] ;
 wire \cpuregs[15][14] ;
 wire \cpuregs[15][15] ;
 wire \cpuregs[15][16] ;
 wire \cpuregs[15][17] ;
 wire \cpuregs[15][18] ;
 wire \cpuregs[15][19] ;
 wire \cpuregs[15][1] ;
 wire \cpuregs[15][20] ;
 wire \cpuregs[15][21] ;
 wire \cpuregs[15][22] ;
 wire \cpuregs[15][23] ;
 wire \cpuregs[15][24] ;
 wire \cpuregs[15][25] ;
 wire \cpuregs[15][26] ;
 wire \cpuregs[15][27] ;
 wire \cpuregs[15][28] ;
 wire \cpuregs[15][29] ;
 wire \cpuregs[15][2] ;
 wire \cpuregs[15][30] ;
 wire \cpuregs[15][31] ;
 wire \cpuregs[15][3] ;
 wire \cpuregs[15][4] ;
 wire \cpuregs[15][5] ;
 wire \cpuregs[15][6] ;
 wire \cpuregs[15][7] ;
 wire \cpuregs[15][8] ;
 wire \cpuregs[15][9] ;
 wire \cpuregs[16][0] ;
 wire \cpuregs[16][10] ;
 wire \cpuregs[16][11] ;
 wire \cpuregs[16][12] ;
 wire \cpuregs[16][13] ;
 wire \cpuregs[16][14] ;
 wire \cpuregs[16][15] ;
 wire \cpuregs[16][16] ;
 wire \cpuregs[16][17] ;
 wire \cpuregs[16][18] ;
 wire \cpuregs[16][19] ;
 wire \cpuregs[16][1] ;
 wire \cpuregs[16][20] ;
 wire \cpuregs[16][21] ;
 wire \cpuregs[16][22] ;
 wire \cpuregs[16][23] ;
 wire \cpuregs[16][24] ;
 wire \cpuregs[16][25] ;
 wire \cpuregs[16][26] ;
 wire \cpuregs[16][27] ;
 wire \cpuregs[16][28] ;
 wire \cpuregs[16][29] ;
 wire \cpuregs[16][2] ;
 wire \cpuregs[16][30] ;
 wire \cpuregs[16][31] ;
 wire \cpuregs[16][3] ;
 wire \cpuregs[16][4] ;
 wire \cpuregs[16][5] ;
 wire \cpuregs[16][6] ;
 wire \cpuregs[16][7] ;
 wire \cpuregs[16][8] ;
 wire \cpuregs[16][9] ;
 wire \cpuregs[17][0] ;
 wire \cpuregs[17][10] ;
 wire \cpuregs[17][11] ;
 wire \cpuregs[17][12] ;
 wire \cpuregs[17][13] ;
 wire \cpuregs[17][14] ;
 wire \cpuregs[17][15] ;
 wire \cpuregs[17][16] ;
 wire \cpuregs[17][17] ;
 wire \cpuregs[17][18] ;
 wire \cpuregs[17][19] ;
 wire \cpuregs[17][1] ;
 wire \cpuregs[17][20] ;
 wire \cpuregs[17][21] ;
 wire \cpuregs[17][22] ;
 wire \cpuregs[17][23] ;
 wire \cpuregs[17][24] ;
 wire \cpuregs[17][25] ;
 wire \cpuregs[17][26] ;
 wire \cpuregs[17][27] ;
 wire \cpuregs[17][28] ;
 wire \cpuregs[17][29] ;
 wire \cpuregs[17][2] ;
 wire \cpuregs[17][30] ;
 wire \cpuregs[17][31] ;
 wire \cpuregs[17][3] ;
 wire \cpuregs[17][4] ;
 wire \cpuregs[17][5] ;
 wire \cpuregs[17][6] ;
 wire \cpuregs[17][7] ;
 wire \cpuregs[17][8] ;
 wire \cpuregs[17][9] ;
 wire \cpuregs[18][0] ;
 wire \cpuregs[18][10] ;
 wire \cpuregs[18][11] ;
 wire \cpuregs[18][12] ;
 wire \cpuregs[18][13] ;
 wire \cpuregs[18][14] ;
 wire \cpuregs[18][15] ;
 wire \cpuregs[18][16] ;
 wire \cpuregs[18][17] ;
 wire \cpuregs[18][18] ;
 wire \cpuregs[18][19] ;
 wire \cpuregs[18][1] ;
 wire \cpuregs[18][20] ;
 wire \cpuregs[18][21] ;
 wire \cpuregs[18][22] ;
 wire \cpuregs[18][23] ;
 wire \cpuregs[18][24] ;
 wire \cpuregs[18][25] ;
 wire \cpuregs[18][26] ;
 wire \cpuregs[18][27] ;
 wire \cpuregs[18][28] ;
 wire \cpuregs[18][29] ;
 wire \cpuregs[18][2] ;
 wire \cpuregs[18][30] ;
 wire \cpuregs[18][31] ;
 wire \cpuregs[18][3] ;
 wire \cpuregs[18][4] ;
 wire \cpuregs[18][5] ;
 wire \cpuregs[18][6] ;
 wire \cpuregs[18][7] ;
 wire \cpuregs[18][8] ;
 wire \cpuregs[18][9] ;
 wire \cpuregs[19][0] ;
 wire \cpuregs[19][10] ;
 wire \cpuregs[19][11] ;
 wire \cpuregs[19][12] ;
 wire \cpuregs[19][13] ;
 wire \cpuregs[19][14] ;
 wire \cpuregs[19][15] ;
 wire \cpuregs[19][16] ;
 wire \cpuregs[19][17] ;
 wire \cpuregs[19][18] ;
 wire \cpuregs[19][19] ;
 wire \cpuregs[19][1] ;
 wire \cpuregs[19][20] ;
 wire \cpuregs[19][21] ;
 wire \cpuregs[19][22] ;
 wire \cpuregs[19][23] ;
 wire \cpuregs[19][24] ;
 wire \cpuregs[19][25] ;
 wire \cpuregs[19][26] ;
 wire \cpuregs[19][27] ;
 wire \cpuregs[19][28] ;
 wire \cpuregs[19][29] ;
 wire \cpuregs[19][2] ;
 wire \cpuregs[19][30] ;
 wire \cpuregs[19][31] ;
 wire \cpuregs[19][3] ;
 wire \cpuregs[19][4] ;
 wire \cpuregs[19][5] ;
 wire \cpuregs[19][6] ;
 wire \cpuregs[19][7] ;
 wire \cpuregs[19][8] ;
 wire \cpuregs[19][9] ;
 wire \cpuregs[1][0] ;
 wire \cpuregs[1][10] ;
 wire \cpuregs[1][11] ;
 wire \cpuregs[1][12] ;
 wire \cpuregs[1][13] ;
 wire \cpuregs[1][14] ;
 wire \cpuregs[1][15] ;
 wire \cpuregs[1][16] ;
 wire \cpuregs[1][17] ;
 wire \cpuregs[1][18] ;
 wire \cpuregs[1][19] ;
 wire \cpuregs[1][1] ;
 wire \cpuregs[1][20] ;
 wire \cpuregs[1][21] ;
 wire \cpuregs[1][22] ;
 wire \cpuregs[1][23] ;
 wire \cpuregs[1][24] ;
 wire \cpuregs[1][25] ;
 wire \cpuregs[1][26] ;
 wire \cpuregs[1][27] ;
 wire \cpuregs[1][28] ;
 wire \cpuregs[1][29] ;
 wire \cpuregs[1][2] ;
 wire \cpuregs[1][30] ;
 wire \cpuregs[1][31] ;
 wire \cpuregs[1][3] ;
 wire \cpuregs[1][4] ;
 wire \cpuregs[1][5] ;
 wire \cpuregs[1][6] ;
 wire \cpuregs[1][7] ;
 wire \cpuregs[1][8] ;
 wire \cpuregs[1][9] ;
 wire \cpuregs[20][0] ;
 wire \cpuregs[20][10] ;
 wire \cpuregs[20][11] ;
 wire \cpuregs[20][12] ;
 wire \cpuregs[20][13] ;
 wire \cpuregs[20][14] ;
 wire \cpuregs[20][15] ;
 wire \cpuregs[20][16] ;
 wire \cpuregs[20][17] ;
 wire \cpuregs[20][18] ;
 wire \cpuregs[20][19] ;
 wire \cpuregs[20][1] ;
 wire \cpuregs[20][20] ;
 wire \cpuregs[20][21] ;
 wire \cpuregs[20][22] ;
 wire \cpuregs[20][23] ;
 wire \cpuregs[20][24] ;
 wire \cpuregs[20][25] ;
 wire \cpuregs[20][26] ;
 wire \cpuregs[20][27] ;
 wire \cpuregs[20][28] ;
 wire \cpuregs[20][29] ;
 wire \cpuregs[20][2] ;
 wire \cpuregs[20][30] ;
 wire \cpuregs[20][31] ;
 wire \cpuregs[20][3] ;
 wire \cpuregs[20][4] ;
 wire \cpuregs[20][5] ;
 wire \cpuregs[20][6] ;
 wire \cpuregs[20][7] ;
 wire \cpuregs[20][8] ;
 wire \cpuregs[20][9] ;
 wire \cpuregs[21][0] ;
 wire \cpuregs[21][10] ;
 wire \cpuregs[21][11] ;
 wire \cpuregs[21][12] ;
 wire \cpuregs[21][13] ;
 wire \cpuregs[21][14] ;
 wire \cpuregs[21][15] ;
 wire \cpuregs[21][16] ;
 wire \cpuregs[21][17] ;
 wire \cpuregs[21][18] ;
 wire \cpuregs[21][19] ;
 wire \cpuregs[21][1] ;
 wire \cpuregs[21][20] ;
 wire \cpuregs[21][21] ;
 wire \cpuregs[21][22] ;
 wire \cpuregs[21][23] ;
 wire \cpuregs[21][24] ;
 wire \cpuregs[21][25] ;
 wire \cpuregs[21][26] ;
 wire \cpuregs[21][27] ;
 wire \cpuregs[21][28] ;
 wire \cpuregs[21][29] ;
 wire \cpuregs[21][2] ;
 wire \cpuregs[21][30] ;
 wire \cpuregs[21][31] ;
 wire \cpuregs[21][3] ;
 wire \cpuregs[21][4] ;
 wire \cpuregs[21][5] ;
 wire \cpuregs[21][6] ;
 wire \cpuregs[21][7] ;
 wire \cpuregs[21][8] ;
 wire \cpuregs[21][9] ;
 wire \cpuregs[22][0] ;
 wire \cpuregs[22][10] ;
 wire \cpuregs[22][11] ;
 wire \cpuregs[22][12] ;
 wire \cpuregs[22][13] ;
 wire \cpuregs[22][14] ;
 wire \cpuregs[22][15] ;
 wire \cpuregs[22][16] ;
 wire \cpuregs[22][17] ;
 wire \cpuregs[22][18] ;
 wire \cpuregs[22][19] ;
 wire \cpuregs[22][1] ;
 wire \cpuregs[22][20] ;
 wire \cpuregs[22][21] ;
 wire \cpuregs[22][22] ;
 wire \cpuregs[22][23] ;
 wire \cpuregs[22][24] ;
 wire \cpuregs[22][25] ;
 wire \cpuregs[22][26] ;
 wire \cpuregs[22][27] ;
 wire \cpuregs[22][28] ;
 wire \cpuregs[22][29] ;
 wire \cpuregs[22][2] ;
 wire \cpuregs[22][30] ;
 wire \cpuregs[22][31] ;
 wire \cpuregs[22][3] ;
 wire \cpuregs[22][4] ;
 wire \cpuregs[22][5] ;
 wire \cpuregs[22][6] ;
 wire \cpuregs[22][7] ;
 wire \cpuregs[22][8] ;
 wire \cpuregs[22][9] ;
 wire \cpuregs[23][0] ;
 wire \cpuregs[23][10] ;
 wire \cpuregs[23][11] ;
 wire \cpuregs[23][12] ;
 wire \cpuregs[23][13] ;
 wire \cpuregs[23][14] ;
 wire \cpuregs[23][15] ;
 wire \cpuregs[23][16] ;
 wire \cpuregs[23][17] ;
 wire \cpuregs[23][18] ;
 wire \cpuregs[23][19] ;
 wire \cpuregs[23][1] ;
 wire \cpuregs[23][20] ;
 wire \cpuregs[23][21] ;
 wire \cpuregs[23][22] ;
 wire \cpuregs[23][23] ;
 wire \cpuregs[23][24] ;
 wire \cpuregs[23][25] ;
 wire \cpuregs[23][26] ;
 wire \cpuregs[23][27] ;
 wire \cpuregs[23][28] ;
 wire \cpuregs[23][29] ;
 wire \cpuregs[23][2] ;
 wire \cpuregs[23][30] ;
 wire \cpuregs[23][31] ;
 wire \cpuregs[23][3] ;
 wire \cpuregs[23][4] ;
 wire \cpuregs[23][5] ;
 wire \cpuregs[23][6] ;
 wire \cpuregs[23][7] ;
 wire \cpuregs[23][8] ;
 wire \cpuregs[23][9] ;
 wire \cpuregs[24][0] ;
 wire \cpuregs[24][10] ;
 wire \cpuregs[24][11] ;
 wire \cpuregs[24][12] ;
 wire \cpuregs[24][13] ;
 wire \cpuregs[24][14] ;
 wire \cpuregs[24][15] ;
 wire \cpuregs[24][16] ;
 wire \cpuregs[24][17] ;
 wire \cpuregs[24][18] ;
 wire \cpuregs[24][19] ;
 wire \cpuregs[24][1] ;
 wire \cpuregs[24][20] ;
 wire \cpuregs[24][21] ;
 wire \cpuregs[24][22] ;
 wire \cpuregs[24][23] ;
 wire \cpuregs[24][24] ;
 wire \cpuregs[24][25] ;
 wire \cpuregs[24][26] ;
 wire \cpuregs[24][27] ;
 wire \cpuregs[24][28] ;
 wire \cpuregs[24][29] ;
 wire \cpuregs[24][2] ;
 wire \cpuregs[24][30] ;
 wire \cpuregs[24][31] ;
 wire \cpuregs[24][3] ;
 wire \cpuregs[24][4] ;
 wire \cpuregs[24][5] ;
 wire \cpuregs[24][6] ;
 wire \cpuregs[24][7] ;
 wire \cpuregs[24][8] ;
 wire \cpuregs[24][9] ;
 wire \cpuregs[25][0] ;
 wire \cpuregs[25][10] ;
 wire \cpuregs[25][11] ;
 wire \cpuregs[25][12] ;
 wire \cpuregs[25][13] ;
 wire \cpuregs[25][14] ;
 wire \cpuregs[25][15] ;
 wire \cpuregs[25][16] ;
 wire \cpuregs[25][17] ;
 wire \cpuregs[25][18] ;
 wire \cpuregs[25][19] ;
 wire \cpuregs[25][1] ;
 wire \cpuregs[25][20] ;
 wire \cpuregs[25][21] ;
 wire \cpuregs[25][22] ;
 wire \cpuregs[25][23] ;
 wire \cpuregs[25][24] ;
 wire \cpuregs[25][25] ;
 wire \cpuregs[25][26] ;
 wire \cpuregs[25][27] ;
 wire \cpuregs[25][28] ;
 wire \cpuregs[25][29] ;
 wire \cpuregs[25][2] ;
 wire \cpuregs[25][30] ;
 wire \cpuregs[25][31] ;
 wire \cpuregs[25][3] ;
 wire \cpuregs[25][4] ;
 wire \cpuregs[25][5] ;
 wire \cpuregs[25][6] ;
 wire \cpuregs[25][7] ;
 wire \cpuregs[25][8] ;
 wire \cpuregs[25][9] ;
 wire \cpuregs[26][0] ;
 wire \cpuregs[26][10] ;
 wire \cpuregs[26][11] ;
 wire \cpuregs[26][12] ;
 wire \cpuregs[26][13] ;
 wire \cpuregs[26][14] ;
 wire \cpuregs[26][15] ;
 wire \cpuregs[26][16] ;
 wire \cpuregs[26][17] ;
 wire \cpuregs[26][18] ;
 wire \cpuregs[26][19] ;
 wire \cpuregs[26][1] ;
 wire \cpuregs[26][20] ;
 wire \cpuregs[26][21] ;
 wire \cpuregs[26][22] ;
 wire \cpuregs[26][23] ;
 wire \cpuregs[26][24] ;
 wire \cpuregs[26][25] ;
 wire \cpuregs[26][26] ;
 wire \cpuregs[26][27] ;
 wire \cpuregs[26][28] ;
 wire \cpuregs[26][29] ;
 wire \cpuregs[26][2] ;
 wire \cpuregs[26][30] ;
 wire \cpuregs[26][31] ;
 wire \cpuregs[26][3] ;
 wire \cpuregs[26][4] ;
 wire \cpuregs[26][5] ;
 wire \cpuregs[26][6] ;
 wire \cpuregs[26][7] ;
 wire \cpuregs[26][8] ;
 wire \cpuregs[26][9] ;
 wire \cpuregs[27][0] ;
 wire \cpuregs[27][10] ;
 wire \cpuregs[27][11] ;
 wire \cpuregs[27][12] ;
 wire \cpuregs[27][13] ;
 wire \cpuregs[27][14] ;
 wire \cpuregs[27][15] ;
 wire \cpuregs[27][16] ;
 wire \cpuregs[27][17] ;
 wire \cpuregs[27][18] ;
 wire \cpuregs[27][19] ;
 wire \cpuregs[27][1] ;
 wire \cpuregs[27][20] ;
 wire \cpuregs[27][21] ;
 wire \cpuregs[27][22] ;
 wire \cpuregs[27][23] ;
 wire \cpuregs[27][24] ;
 wire \cpuregs[27][25] ;
 wire \cpuregs[27][26] ;
 wire \cpuregs[27][27] ;
 wire \cpuregs[27][28] ;
 wire \cpuregs[27][29] ;
 wire \cpuregs[27][2] ;
 wire \cpuregs[27][30] ;
 wire \cpuregs[27][31] ;
 wire \cpuregs[27][3] ;
 wire \cpuregs[27][4] ;
 wire \cpuregs[27][5] ;
 wire \cpuregs[27][6] ;
 wire \cpuregs[27][7] ;
 wire \cpuregs[27][8] ;
 wire \cpuregs[27][9] ;
 wire \cpuregs[28][0] ;
 wire \cpuregs[28][10] ;
 wire \cpuregs[28][11] ;
 wire \cpuregs[28][12] ;
 wire \cpuregs[28][13] ;
 wire \cpuregs[28][14] ;
 wire \cpuregs[28][15] ;
 wire \cpuregs[28][16] ;
 wire \cpuregs[28][17] ;
 wire \cpuregs[28][18] ;
 wire \cpuregs[28][19] ;
 wire \cpuregs[28][1] ;
 wire \cpuregs[28][20] ;
 wire \cpuregs[28][21] ;
 wire \cpuregs[28][22] ;
 wire \cpuregs[28][23] ;
 wire \cpuregs[28][24] ;
 wire \cpuregs[28][25] ;
 wire \cpuregs[28][26] ;
 wire \cpuregs[28][27] ;
 wire \cpuregs[28][28] ;
 wire \cpuregs[28][29] ;
 wire \cpuregs[28][2] ;
 wire \cpuregs[28][30] ;
 wire \cpuregs[28][31] ;
 wire \cpuregs[28][3] ;
 wire \cpuregs[28][4] ;
 wire \cpuregs[28][5] ;
 wire \cpuregs[28][6] ;
 wire \cpuregs[28][7] ;
 wire \cpuregs[28][8] ;
 wire \cpuregs[28][9] ;
 wire \cpuregs[29][0] ;
 wire \cpuregs[29][10] ;
 wire \cpuregs[29][11] ;
 wire \cpuregs[29][12] ;
 wire \cpuregs[29][13] ;
 wire \cpuregs[29][14] ;
 wire \cpuregs[29][15] ;
 wire \cpuregs[29][16] ;
 wire \cpuregs[29][17] ;
 wire \cpuregs[29][18] ;
 wire \cpuregs[29][19] ;
 wire \cpuregs[29][1] ;
 wire \cpuregs[29][20] ;
 wire \cpuregs[29][21] ;
 wire \cpuregs[29][22] ;
 wire \cpuregs[29][23] ;
 wire \cpuregs[29][24] ;
 wire \cpuregs[29][25] ;
 wire \cpuregs[29][26] ;
 wire \cpuregs[29][27] ;
 wire \cpuregs[29][28] ;
 wire \cpuregs[29][29] ;
 wire \cpuregs[29][2] ;
 wire \cpuregs[29][30] ;
 wire \cpuregs[29][31] ;
 wire \cpuregs[29][3] ;
 wire \cpuregs[29][4] ;
 wire \cpuregs[29][5] ;
 wire \cpuregs[29][6] ;
 wire \cpuregs[29][7] ;
 wire \cpuregs[29][8] ;
 wire \cpuregs[29][9] ;
 wire \cpuregs[2][0] ;
 wire \cpuregs[2][10] ;
 wire \cpuregs[2][11] ;
 wire \cpuregs[2][12] ;
 wire \cpuregs[2][13] ;
 wire \cpuregs[2][14] ;
 wire \cpuregs[2][15] ;
 wire \cpuregs[2][16] ;
 wire \cpuregs[2][17] ;
 wire \cpuregs[2][18] ;
 wire \cpuregs[2][19] ;
 wire \cpuregs[2][1] ;
 wire \cpuregs[2][20] ;
 wire \cpuregs[2][21] ;
 wire \cpuregs[2][22] ;
 wire \cpuregs[2][23] ;
 wire \cpuregs[2][24] ;
 wire \cpuregs[2][25] ;
 wire \cpuregs[2][26] ;
 wire \cpuregs[2][27] ;
 wire \cpuregs[2][28] ;
 wire \cpuregs[2][29] ;
 wire \cpuregs[2][2] ;
 wire \cpuregs[2][30] ;
 wire \cpuregs[2][31] ;
 wire \cpuregs[2][3] ;
 wire \cpuregs[2][4] ;
 wire \cpuregs[2][5] ;
 wire \cpuregs[2][6] ;
 wire \cpuregs[2][7] ;
 wire \cpuregs[2][8] ;
 wire \cpuregs[2][9] ;
 wire \cpuregs[30][0] ;
 wire \cpuregs[30][10] ;
 wire \cpuregs[30][11] ;
 wire \cpuregs[30][12] ;
 wire \cpuregs[30][13] ;
 wire \cpuregs[30][14] ;
 wire \cpuregs[30][15] ;
 wire \cpuregs[30][16] ;
 wire \cpuregs[30][17] ;
 wire \cpuregs[30][18] ;
 wire \cpuregs[30][19] ;
 wire \cpuregs[30][1] ;
 wire \cpuregs[30][20] ;
 wire \cpuregs[30][21] ;
 wire \cpuregs[30][22] ;
 wire \cpuregs[30][23] ;
 wire \cpuregs[30][24] ;
 wire \cpuregs[30][25] ;
 wire \cpuregs[30][26] ;
 wire \cpuregs[30][27] ;
 wire \cpuregs[30][28] ;
 wire \cpuregs[30][29] ;
 wire \cpuregs[30][2] ;
 wire \cpuregs[30][30] ;
 wire \cpuregs[30][31] ;
 wire \cpuregs[30][3] ;
 wire \cpuregs[30][4] ;
 wire \cpuregs[30][5] ;
 wire \cpuregs[30][6] ;
 wire \cpuregs[30][7] ;
 wire \cpuregs[30][8] ;
 wire \cpuregs[30][9] ;
 wire \cpuregs[31][0] ;
 wire \cpuregs[31][10] ;
 wire \cpuregs[31][11] ;
 wire \cpuregs[31][12] ;
 wire \cpuregs[31][13] ;
 wire \cpuregs[31][14] ;
 wire \cpuregs[31][15] ;
 wire \cpuregs[31][16] ;
 wire \cpuregs[31][17] ;
 wire \cpuregs[31][18] ;
 wire \cpuregs[31][19] ;
 wire \cpuregs[31][1] ;
 wire \cpuregs[31][20] ;
 wire \cpuregs[31][21] ;
 wire \cpuregs[31][22] ;
 wire \cpuregs[31][23] ;
 wire \cpuregs[31][24] ;
 wire \cpuregs[31][25] ;
 wire \cpuregs[31][26] ;
 wire \cpuregs[31][27] ;
 wire \cpuregs[31][28] ;
 wire \cpuregs[31][29] ;
 wire \cpuregs[31][2] ;
 wire \cpuregs[31][30] ;
 wire \cpuregs[31][31] ;
 wire \cpuregs[31][3] ;
 wire \cpuregs[31][4] ;
 wire \cpuregs[31][5] ;
 wire \cpuregs[31][6] ;
 wire \cpuregs[31][7] ;
 wire \cpuregs[31][8] ;
 wire \cpuregs[31][9] ;
 wire \cpuregs[3][0] ;
 wire \cpuregs[3][10] ;
 wire \cpuregs[3][11] ;
 wire \cpuregs[3][12] ;
 wire \cpuregs[3][13] ;
 wire \cpuregs[3][14] ;
 wire \cpuregs[3][15] ;
 wire \cpuregs[3][16] ;
 wire \cpuregs[3][17] ;
 wire \cpuregs[3][18] ;
 wire \cpuregs[3][19] ;
 wire \cpuregs[3][1] ;
 wire \cpuregs[3][20] ;
 wire \cpuregs[3][21] ;
 wire \cpuregs[3][22] ;
 wire \cpuregs[3][23] ;
 wire \cpuregs[3][24] ;
 wire \cpuregs[3][25] ;
 wire \cpuregs[3][26] ;
 wire \cpuregs[3][27] ;
 wire \cpuregs[3][28] ;
 wire \cpuregs[3][29] ;
 wire \cpuregs[3][2] ;
 wire \cpuregs[3][30] ;
 wire \cpuregs[3][31] ;
 wire \cpuregs[3][3] ;
 wire \cpuregs[3][4] ;
 wire \cpuregs[3][5] ;
 wire \cpuregs[3][6] ;
 wire \cpuregs[3][7] ;
 wire \cpuregs[3][8] ;
 wire \cpuregs[3][9] ;
 wire \cpuregs[4][0] ;
 wire \cpuregs[4][10] ;
 wire \cpuregs[4][11] ;
 wire \cpuregs[4][12] ;
 wire \cpuregs[4][13] ;
 wire \cpuregs[4][14] ;
 wire \cpuregs[4][15] ;
 wire \cpuregs[4][16] ;
 wire \cpuregs[4][17] ;
 wire \cpuregs[4][18] ;
 wire \cpuregs[4][19] ;
 wire \cpuregs[4][1] ;
 wire \cpuregs[4][20] ;
 wire \cpuregs[4][21] ;
 wire \cpuregs[4][22] ;
 wire \cpuregs[4][23] ;
 wire \cpuregs[4][24] ;
 wire \cpuregs[4][25] ;
 wire \cpuregs[4][26] ;
 wire \cpuregs[4][27] ;
 wire \cpuregs[4][28] ;
 wire \cpuregs[4][29] ;
 wire \cpuregs[4][2] ;
 wire \cpuregs[4][30] ;
 wire \cpuregs[4][31] ;
 wire \cpuregs[4][3] ;
 wire \cpuregs[4][4] ;
 wire \cpuregs[4][5] ;
 wire \cpuregs[4][6] ;
 wire \cpuregs[4][7] ;
 wire \cpuregs[4][8] ;
 wire \cpuregs[4][9] ;
 wire \cpuregs[5][0] ;
 wire \cpuregs[5][10] ;
 wire \cpuregs[5][11] ;
 wire \cpuregs[5][12] ;
 wire \cpuregs[5][13] ;
 wire \cpuregs[5][14] ;
 wire \cpuregs[5][15] ;
 wire \cpuregs[5][16] ;
 wire \cpuregs[5][17] ;
 wire \cpuregs[5][18] ;
 wire \cpuregs[5][19] ;
 wire \cpuregs[5][1] ;
 wire \cpuregs[5][20] ;
 wire \cpuregs[5][21] ;
 wire \cpuregs[5][22] ;
 wire \cpuregs[5][23] ;
 wire \cpuregs[5][24] ;
 wire \cpuregs[5][25] ;
 wire \cpuregs[5][26] ;
 wire \cpuregs[5][27] ;
 wire \cpuregs[5][28] ;
 wire \cpuregs[5][29] ;
 wire \cpuregs[5][2] ;
 wire \cpuregs[5][30] ;
 wire \cpuregs[5][31] ;
 wire \cpuregs[5][3] ;
 wire \cpuregs[5][4] ;
 wire \cpuregs[5][5] ;
 wire \cpuregs[5][6] ;
 wire \cpuregs[5][7] ;
 wire \cpuregs[5][8] ;
 wire \cpuregs[5][9] ;
 wire \cpuregs[6][0] ;
 wire \cpuregs[6][10] ;
 wire \cpuregs[6][11] ;
 wire \cpuregs[6][12] ;
 wire \cpuregs[6][13] ;
 wire \cpuregs[6][14] ;
 wire \cpuregs[6][15] ;
 wire \cpuregs[6][16] ;
 wire \cpuregs[6][17] ;
 wire \cpuregs[6][18] ;
 wire \cpuregs[6][19] ;
 wire \cpuregs[6][1] ;
 wire \cpuregs[6][20] ;
 wire \cpuregs[6][21] ;
 wire \cpuregs[6][22] ;
 wire \cpuregs[6][23] ;
 wire \cpuregs[6][24] ;
 wire \cpuregs[6][25] ;
 wire \cpuregs[6][26] ;
 wire \cpuregs[6][27] ;
 wire \cpuregs[6][28] ;
 wire \cpuregs[6][29] ;
 wire \cpuregs[6][2] ;
 wire \cpuregs[6][30] ;
 wire \cpuregs[6][31] ;
 wire \cpuregs[6][3] ;
 wire \cpuregs[6][4] ;
 wire \cpuregs[6][5] ;
 wire \cpuregs[6][6] ;
 wire \cpuregs[6][7] ;
 wire \cpuregs[6][8] ;
 wire \cpuregs[6][9] ;
 wire \cpuregs[7][0] ;
 wire \cpuregs[7][10] ;
 wire \cpuregs[7][11] ;
 wire \cpuregs[7][12] ;
 wire \cpuregs[7][13] ;
 wire \cpuregs[7][14] ;
 wire \cpuregs[7][15] ;
 wire \cpuregs[7][16] ;
 wire \cpuregs[7][17] ;
 wire \cpuregs[7][18] ;
 wire \cpuregs[7][19] ;
 wire \cpuregs[7][1] ;
 wire \cpuregs[7][20] ;
 wire \cpuregs[7][21] ;
 wire \cpuregs[7][22] ;
 wire \cpuregs[7][23] ;
 wire \cpuregs[7][24] ;
 wire \cpuregs[7][25] ;
 wire \cpuregs[7][26] ;
 wire \cpuregs[7][27] ;
 wire \cpuregs[7][28] ;
 wire \cpuregs[7][29] ;
 wire \cpuregs[7][2] ;
 wire \cpuregs[7][30] ;
 wire \cpuregs[7][31] ;
 wire \cpuregs[7][3] ;
 wire \cpuregs[7][4] ;
 wire \cpuregs[7][5] ;
 wire \cpuregs[7][6] ;
 wire \cpuregs[7][7] ;
 wire \cpuregs[7][8] ;
 wire \cpuregs[7][9] ;
 wire \cpuregs[8][0] ;
 wire \cpuregs[8][10] ;
 wire \cpuregs[8][11] ;
 wire \cpuregs[8][12] ;
 wire \cpuregs[8][13] ;
 wire \cpuregs[8][14] ;
 wire \cpuregs[8][15] ;
 wire \cpuregs[8][16] ;
 wire \cpuregs[8][17] ;
 wire \cpuregs[8][18] ;
 wire \cpuregs[8][19] ;
 wire \cpuregs[8][1] ;
 wire \cpuregs[8][20] ;
 wire \cpuregs[8][21] ;
 wire \cpuregs[8][22] ;
 wire \cpuregs[8][23] ;
 wire \cpuregs[8][24] ;
 wire \cpuregs[8][25] ;
 wire \cpuregs[8][26] ;
 wire \cpuregs[8][27] ;
 wire \cpuregs[8][28] ;
 wire \cpuregs[8][29] ;
 wire \cpuregs[8][2] ;
 wire \cpuregs[8][30] ;
 wire \cpuregs[8][31] ;
 wire \cpuregs[8][3] ;
 wire \cpuregs[8][4] ;
 wire \cpuregs[8][5] ;
 wire \cpuregs[8][6] ;
 wire \cpuregs[8][7] ;
 wire \cpuregs[8][8] ;
 wire \cpuregs[8][9] ;
 wire \cpuregs[9][0] ;
 wire \cpuregs[9][10] ;
 wire \cpuregs[9][11] ;
 wire \cpuregs[9][12] ;
 wire \cpuregs[9][13] ;
 wire \cpuregs[9][14] ;
 wire \cpuregs[9][15] ;
 wire \cpuregs[9][16] ;
 wire \cpuregs[9][17] ;
 wire \cpuregs[9][18] ;
 wire \cpuregs[9][19] ;
 wire \cpuregs[9][1] ;
 wire \cpuregs[9][20] ;
 wire \cpuregs[9][21] ;
 wire \cpuregs[9][22] ;
 wire \cpuregs[9][23] ;
 wire \cpuregs[9][24] ;
 wire \cpuregs[9][25] ;
 wire \cpuregs[9][26] ;
 wire \cpuregs[9][27] ;
 wire \cpuregs[9][28] ;
 wire \cpuregs[9][29] ;
 wire \cpuregs[9][2] ;
 wire \cpuregs[9][30] ;
 wire \cpuregs[9][31] ;
 wire \cpuregs[9][3] ;
 wire \cpuregs[9][4] ;
 wire \cpuregs[9][5] ;
 wire \cpuregs[9][6] ;
 wire \cpuregs[9][7] ;
 wire \cpuregs[9][8] ;
 wire \cpuregs[9][9] ;
 wire \cpuregs_wrdata[0] ;
 wire \cpuregs_wrdata[10] ;
 wire \cpuregs_wrdata[11] ;
 wire \cpuregs_wrdata[12] ;
 wire \cpuregs_wrdata[13] ;
 wire \cpuregs_wrdata[14] ;
 wire \cpuregs_wrdata[15] ;
 wire \cpuregs_wrdata[16] ;
 wire \cpuregs_wrdata[17] ;
 wire \cpuregs_wrdata[18] ;
 wire \cpuregs_wrdata[19] ;
 wire \cpuregs_wrdata[1] ;
 wire \cpuregs_wrdata[20] ;
 wire \cpuregs_wrdata[21] ;
 wire \cpuregs_wrdata[22] ;
 wire \cpuregs_wrdata[23] ;
 wire \cpuregs_wrdata[24] ;
 wire \cpuregs_wrdata[25] ;
 wire \cpuregs_wrdata[26] ;
 wire \cpuregs_wrdata[27] ;
 wire \cpuregs_wrdata[28] ;
 wire \cpuregs_wrdata[29] ;
 wire \cpuregs_wrdata[2] ;
 wire \cpuregs_wrdata[30] ;
 wire \cpuregs_wrdata[31] ;
 wire \cpuregs_wrdata[3] ;
 wire \cpuregs_wrdata[4] ;
 wire \cpuregs_wrdata[5] ;
 wire \cpuregs_wrdata[6] ;
 wire \cpuregs_wrdata[7] ;
 wire \cpuregs_wrdata[8] ;
 wire \cpuregs_wrdata[9] ;
 wire \decoded_imm[0] ;
 wire \decoded_imm[10] ;
 wire \decoded_imm[11] ;
 wire \decoded_imm[12] ;
 wire \decoded_imm[13] ;
 wire \decoded_imm[14] ;
 wire \decoded_imm[15] ;
 wire \decoded_imm[16] ;
 wire \decoded_imm[17] ;
 wire \decoded_imm[18] ;
 wire \decoded_imm[19] ;
 wire \decoded_imm[1] ;
 wire \decoded_imm[20] ;
 wire \decoded_imm[21] ;
 wire \decoded_imm[22] ;
 wire \decoded_imm[23] ;
 wire \decoded_imm[24] ;
 wire \decoded_imm[25] ;
 wire \decoded_imm[26] ;
 wire \decoded_imm[27] ;
 wire \decoded_imm[28] ;
 wire \decoded_imm[29] ;
 wire \decoded_imm[2] ;
 wire \decoded_imm[30] ;
 wire \decoded_imm[31] ;
 wire \decoded_imm[3] ;
 wire \decoded_imm[4] ;
 wire \decoded_imm[5] ;
 wire \decoded_imm[6] ;
 wire \decoded_imm[7] ;
 wire \decoded_imm[8] ;
 wire \decoded_imm[9] ;
 wire \decoded_imm_j[10] ;
 wire \decoded_imm_j[11] ;
 wire \decoded_imm_j[12] ;
 wire \decoded_imm_j[13] ;
 wire \decoded_imm_j[14] ;
 wire \decoded_imm_j[15] ;
 wire \decoded_imm_j[16] ;
 wire \decoded_imm_j[17] ;
 wire \decoded_imm_j[18] ;
 wire \decoded_imm_j[19] ;
 wire \decoded_imm_j[1] ;
 wire \decoded_imm_j[20] ;
 wire \decoded_imm_j[2] ;
 wire \decoded_imm_j[3] ;
 wire \decoded_imm_j[4] ;
 wire \decoded_imm_j[5] ;
 wire \decoded_imm_j[6] ;
 wire \decoded_imm_j[7] ;
 wire \decoded_imm_j[8] ;
 wire \decoded_imm_j[9] ;
 wire \decoded_rd[0] ;
 wire \decoded_rd[1] ;
 wire \decoded_rd[2] ;
 wire \decoded_rd[3] ;
 wire \decoded_rd[4] ;
 wire decoder_pseudo_trigger;
 wire decoder_trigger;
 wire instr_add;
 wire instr_addi;
 wire instr_and;
 wire instr_andi;
 wire instr_auipc;
 wire instr_beq;
 wire instr_bge;
 wire instr_bgeu;
 wire instr_blt;
 wire instr_bltu;
 wire instr_bne;
 wire instr_fence;
 wire instr_jal;
 wire instr_jalr;
 wire instr_lb;
 wire instr_lbu;
 wire instr_lh;
 wire instr_lhu;
 wire instr_lui;
 wire instr_lw;
 wire instr_or;
 wire instr_ori;
 wire instr_rdcycle;
 wire instr_rdcycleh;
 wire instr_rdinstr;
 wire instr_rdinstrh;
 wire instr_sb;
 wire instr_sh;
 wire instr_sll;
 wire instr_slli;
 wire instr_slt;
 wire instr_slti;
 wire instr_sltiu;
 wire instr_sltu;
 wire instr_sra;
 wire instr_srai;
 wire instr_srl;
 wire instr_srli;
 wire instr_sub;
 wire instr_sw;
 wire instr_xor;
 wire instr_xori;
 wire is_alu_reg_imm;
 wire is_alu_reg_reg;
 wire is_beq_bne_blt_bge_bltu_bgeu;
 wire is_compare;
 wire is_jalr_addi_slti_sltiu_xori_ori_andi;
 wire is_lb_lh_lw_lbu_lhu;
 wire is_lui_auipc_jal;
 wire is_sb_sh_sw;
 wire is_sll_srl_sra;
 wire is_slli_srli_srai;
 wire is_slti_blt_slt;
 wire is_sltiu_bltu_sltu;
 wire latched_branch;
 wire latched_is_lb;
 wire latched_is_lh;
 wire \latched_rd[0] ;
 wire \latched_rd[1] ;
 wire \latched_rd[2] ;
 wire \latched_rd[3] ;
 wire \latched_rd[4] ;
 wire latched_stalu;
 wire latched_store;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire mem_do_prefetch;
 wire mem_do_rdata;
 wire mem_do_rinst;
 wire mem_do_wdata;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire net249;
 wire net250;
 wire net251;
 wire net252;
 wire net253;
 wire net254;
 wire net255;
 wire net256;
 wire net257;
 wire net258;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;
 wire net268;
 wire net269;
 wire net270;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire \mem_rdata_latched[10] ;
 wire \mem_rdata_latched[11] ;
 wire \mem_rdata_latched[12] ;
 wire \mem_rdata_latched[13] ;
 wire \mem_rdata_latched[14] ;
 wire \mem_rdata_latched[15] ;
 wire \mem_rdata_latched[16] ;
 wire \mem_rdata_latched[17] ;
 wire \mem_rdata_latched[18] ;
 wire \mem_rdata_latched[19] ;
 wire \mem_rdata_latched[20] ;
 wire \mem_rdata_latched[21] ;
 wire \mem_rdata_latched[22] ;
 wire \mem_rdata_latched[23] ;
 wire \mem_rdata_latched[24] ;
 wire \mem_rdata_latched[25] ;
 wire \mem_rdata_latched[26] ;
 wire \mem_rdata_latched[27] ;
 wire \mem_rdata_latched[28] ;
 wire \mem_rdata_latched[29] ;
 wire \mem_rdata_latched[30] ;
 wire \mem_rdata_latched[31] ;
 wire \mem_rdata_latched[7] ;
 wire \mem_rdata_latched[8] ;
 wire \mem_rdata_latched[9] ;
 wire \mem_rdata_q[0] ;
 wire \mem_rdata_q[10] ;
 wire \mem_rdata_q[11] ;
 wire \mem_rdata_q[12] ;
 wire \mem_rdata_q[13] ;
 wire \mem_rdata_q[14] ;
 wire \mem_rdata_q[15] ;
 wire \mem_rdata_q[16] ;
 wire \mem_rdata_q[17] ;
 wire \mem_rdata_q[18] ;
 wire \mem_rdata_q[19] ;
 wire \mem_rdata_q[1] ;
 wire \mem_rdata_q[20] ;
 wire \mem_rdata_q[21] ;
 wire \mem_rdata_q[22] ;
 wire \mem_rdata_q[23] ;
 wire \mem_rdata_q[24] ;
 wire \mem_rdata_q[25] ;
 wire \mem_rdata_q[26] ;
 wire \mem_rdata_q[27] ;
 wire \mem_rdata_q[28] ;
 wire \mem_rdata_q[29] ;
 wire \mem_rdata_q[2] ;
 wire \mem_rdata_q[30] ;
 wire \mem_rdata_q[31] ;
 wire \mem_rdata_q[3] ;
 wire \mem_rdata_q[4] ;
 wire \mem_rdata_q[5] ;
 wire \mem_rdata_q[6] ;
 wire \mem_rdata_q[7] ;
 wire \mem_rdata_q[8] ;
 wire \mem_rdata_q[9] ;
 wire net170;
 wire \mem_state[0] ;
 wire \mem_state[1] ;
 wire net271;
 wire net272;
 wire net273;
 wire net274;
 wire net275;
 wire net276;
 wire net277;
 wire net278;
 wire net279;
 wire net280;
 wire net281;
 wire net282;
 wire net283;
 wire net284;
 wire net285;
 wire net286;
 wire net287;
 wire net288;
 wire net289;
 wire net290;
 wire net291;
 wire net292;
 wire net293;
 wire net294;
 wire net295;
 wire net296;
 wire net297;
 wire net298;
 wire net299;
 wire net300;
 wire net301;
 wire net302;
 wire net303;
 wire \mem_wordsize[0] ;
 wire \mem_wordsize[1] ;
 wire \mem_wordsize[2] ;
 wire net304;
 wire net305;
 wire net306;
 wire net307;
 wire net308;
 wire net309;
 wire net310;
 wire net311;
 wire net312;
 wire net313;
 wire net314;
 wire net315;
 wire net316;
 wire net317;
 wire net318;
 wire net319;
 wire net320;
 wire net321;
 wire net322;
 wire net323;
 wire net324;
 wire net325;
 wire net326;
 wire net327;
 wire net328;
 wire net329;
 wire net330;
 wire net331;
 wire net332;
 wire net333;
 wire net334;
 wire net335;
 wire net336;
 wire net337;
 wire net338;
 wire net339;
 wire net340;
 wire net341;
 wire net342;
 wire net343;
 wire net344;
 wire net345;
 wire net346;
 wire net347;
 wire net348;
 wire net349;
 wire net350;
 wire net351;
 wire net352;
 wire net353;
 wire net354;
 wire net355;
 wire net356;
 wire net357;
 wire net358;
 wire net359;
 wire net360;
 wire net361;
 wire net362;
 wire net363;
 wire \reg_next_pc[10] ;
 wire \reg_next_pc[11] ;
 wire \reg_next_pc[12] ;
 wire \reg_next_pc[13] ;
 wire \reg_next_pc[14] ;
 wire \reg_next_pc[15] ;
 wire \reg_next_pc[16] ;
 wire \reg_next_pc[17] ;
 wire \reg_next_pc[18] ;
 wire \reg_next_pc[19] ;
 wire \reg_next_pc[1] ;
 wire \reg_next_pc[20] ;
 wire \reg_next_pc[21] ;
 wire \reg_next_pc[22] ;
 wire \reg_next_pc[23] ;
 wire \reg_next_pc[24] ;
 wire \reg_next_pc[25] ;
 wire \reg_next_pc[26] ;
 wire \reg_next_pc[27] ;
 wire \reg_next_pc[28] ;
 wire \reg_next_pc[29] ;
 wire \reg_next_pc[2] ;
 wire \reg_next_pc[30] ;
 wire \reg_next_pc[31] ;
 wire \reg_next_pc[3] ;
 wire \reg_next_pc[4] ;
 wire \reg_next_pc[5] ;
 wire \reg_next_pc[6] ;
 wire \reg_next_pc[7] ;
 wire \reg_next_pc[8] ;
 wire \reg_next_pc[9] ;
 wire \reg_out[0] ;
 wire \reg_out[10] ;
 wire \reg_out[11] ;
 wire \reg_out[12] ;
 wire \reg_out[13] ;
 wire \reg_out[14] ;
 wire \reg_out[15] ;
 wire \reg_out[16] ;
 wire \reg_out[17] ;
 wire \reg_out[18] ;
 wire \reg_out[19] ;
 wire \reg_out[1] ;
 wire \reg_out[20] ;
 wire \reg_out[21] ;
 wire \reg_out[22] ;
 wire \reg_out[23] ;
 wire \reg_out[24] ;
 wire \reg_out[25] ;
 wire \reg_out[26] ;
 wire \reg_out[27] ;
 wire \reg_out[28] ;
 wire \reg_out[29] ;
 wire \reg_out[2] ;
 wire \reg_out[30] ;
 wire \reg_out[31] ;
 wire \reg_out[3] ;
 wire \reg_out[4] ;
 wire \reg_out[5] ;
 wire \reg_out[6] ;
 wire \reg_out[7] ;
 wire \reg_out[8] ;
 wire \reg_out[9] ;
 wire \reg_pc[10] ;
 wire \reg_pc[11] ;
 wire \reg_pc[12] ;
 wire \reg_pc[13] ;
 wire \reg_pc[14] ;
 wire \reg_pc[15] ;
 wire \reg_pc[16] ;
 wire \reg_pc[17] ;
 wire \reg_pc[18] ;
 wire \reg_pc[19] ;
 wire \reg_pc[1] ;
 wire \reg_pc[20] ;
 wire \reg_pc[21] ;
 wire \reg_pc[22] ;
 wire \reg_pc[23] ;
 wire \reg_pc[24] ;
 wire \reg_pc[25] ;
 wire \reg_pc[26] ;
 wire \reg_pc[27] ;
 wire \reg_pc[28] ;
 wire \reg_pc[29] ;
 wire \reg_pc[2] ;
 wire \reg_pc[30] ;
 wire \reg_pc[31] ;
 wire \reg_pc[3] ;
 wire \reg_pc[4] ;
 wire \reg_pc[5] ;
 wire \reg_pc[6] ;
 wire \reg_pc[7] ;
 wire \reg_pc[8] ;
 wire \reg_pc[9] ;
 wire \reg_sh[0] ;
 wire \reg_sh[1] ;
 wire \reg_sh[2] ;
 wire \reg_sh[3] ;
 wire \reg_sh[4] ;
 wire net171;
 wire net364;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire clknet_leaf_89_clk;
 wire clknet_leaf_90_clk;
 wire clknet_leaf_91_clk;
 wire clknet_leaf_92_clk;
 wire clknet_leaf_93_clk;
 wire clknet_leaf_94_clk;
 wire clknet_leaf_95_clk;
 wire clknet_leaf_96_clk;
 wire clknet_leaf_97_clk;
 wire clknet_leaf_98_clk;
 wire clknet_leaf_99_clk;
 wire clknet_leaf_100_clk;
 wire clknet_leaf_101_clk;
 wire clknet_leaf_102_clk;
 wire clknet_leaf_103_clk;
 wire clknet_leaf_104_clk;
 wire clknet_leaf_105_clk;
 wire clknet_leaf_106_clk;
 wire clknet_leaf_107_clk;
 wire clknet_leaf_108_clk;
 wire clknet_leaf_109_clk;
 wire clknet_leaf_110_clk;
 wire clknet_leaf_111_clk;
 wire clknet_leaf_112_clk;
 wire clknet_leaf_113_clk;
 wire clknet_leaf_114_clk;
 wire clknet_leaf_115_clk;
 wire clknet_leaf_116_clk;
 wire clknet_leaf_117_clk;
 wire clknet_leaf_118_clk;
 wire clknet_leaf_119_clk;
 wire clknet_leaf_120_clk;
 wire clknet_leaf_121_clk;
 wire clknet_leaf_122_clk;
 wire clknet_leaf_123_clk;
 wire clknet_leaf_124_clk;
 wire clknet_leaf_125_clk;
 wire clknet_leaf_126_clk;
 wire clknet_leaf_127_clk;
 wire clknet_leaf_128_clk;
 wire clknet_leaf_129_clk;
 wire clknet_leaf_130_clk;
 wire clknet_leaf_131_clk;
 wire clknet_leaf_132_clk;
 wire clknet_leaf_133_clk;
 wire clknet_leaf_134_clk;
 wire clknet_leaf_135_clk;
 wire clknet_leaf_136_clk;
 wire clknet_leaf_137_clk;
 wire clknet_leaf_138_clk;
 wire clknet_leaf_139_clk;
 wire clknet_leaf_140_clk;
 wire clknet_leaf_141_clk;
 wire clknet_leaf_142_clk;
 wire clknet_leaf_143_clk;
 wire clknet_leaf_144_clk;
 wire clknet_leaf_145_clk;
 wire clknet_leaf_146_clk;
 wire clknet_leaf_147_clk;
 wire clknet_leaf_148_clk;
 wire clknet_leaf_149_clk;
 wire clknet_leaf_150_clk;
 wire clknet_leaf_151_clk;
 wire clknet_leaf_152_clk;
 wire clknet_leaf_153_clk;
 wire clknet_leaf_154_clk;
 wire clknet_leaf_155_clk;
 wire clknet_leaf_156_clk;
 wire clknet_leaf_157_clk;
 wire clknet_leaf_158_clk;
 wire clknet_leaf_159_clk;
 wire clknet_leaf_160_clk;
 wire clknet_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire net777;
 wire net778;
 wire net779;
 wire net780;
 wire net781;
 wire net782;
 wire net783;
 wire net784;
 wire net785;
 wire net786;
 wire net787;
 wire net788;
 wire net789;

 sky130_fd_sc_hd__inv_1 _4688_ (.A(decoder_trigger),
    .Y(_0864_));
 sky130_fd_sc_hd__nor2_4 _4689_ (.A(net699),
    .B(decoder_pseudo_trigger),
    .Y(_0812_));
 sky130_fd_sc_hd__nand2_1 _4690_ (.A(net271),
    .B(net170),
    .Y(_0865_));
 sky130_fd_sc_hd__o21bai_1 _4691_ (.A1(_0500_),
    .A2(net698),
    .B1_N(_0505_),
    .Y(_0866_));
 sky130_fd_sc_hd__nor2_1 _4692_ (.A(mem_do_rdata),
    .B(mem_do_wdata),
    .Y(_0867_));
 sky130_fd_sc_hd__nor3_1 _4693_ (.A(_0500_),
    .B(net698),
    .C(_0867_),
    .Y(_0868_));
 sky130_fd_sc_hd__a21oi_1 _4694_ (.A1(mem_do_rinst),
    .A2(_0866_),
    .B1(_0868_),
    .Y(_0869_));
 sky130_fd_sc_hd__inv_1 _4695_ (.A(net661),
    .Y(_0870_));
 sky130_fd_sc_hd__nand3_1 _4696_ (.A(mem_do_rinst),
    .B(net776),
    .C(_0870_),
    .Y(_0871_));
 sky130_fd_sc_hd__inv_1 _4698_ (.A(net618),
    .Y(_0830_));
 sky130_fd_sc_hd__nand2_1 _4701_ (.A(net736),
    .B(net738),
    .Y(_0875_));
 sky130_fd_sc_hd__mux2i_1 _4708_ (.A0(\reg_out[1] ),
    .A1(\alu_out_q[1] ),
    .S(net737),
    .Y(_0882_));
 sky130_fd_sc_hd__nand2_1 _4709_ (.A(\reg_next_pc[1] ),
    .B(_0875_),
    .Y(_0883_));
 sky130_fd_sc_hd__o21ai_0 _4710_ (.A1(_0875_),
    .A2(_0882_),
    .B1(_0883_),
    .Y(_0420_));
 sky130_fd_sc_hd__mux2_2 _4712_ (.A0(\reg_out[2] ),
    .A1(\alu_out_q[2] ),
    .S(net737),
    .X(_0885_));
 sky130_fd_sc_hd__and2_4 _4713_ (.A(net736),
    .B(net738),
    .X(_0886_));
 sky130_fd_sc_hd__mux2i_1 _4715_ (.A0(\reg_next_pc[2] ),
    .A1(_0885_),
    .S(_0886_),
    .Y(_0888_));
 sky130_fd_sc_hd__inv_1 _4716_ (.A(_0888_),
    .Y(_0052_));
 sky130_fd_sc_hd__mux2i_1 _4718_ (.A0(\reg_out[3] ),
    .A1(\alu_out_q[3] ),
    .S(net737),
    .Y(_0890_));
 sky130_fd_sc_hd__a21oi_1 _4719_ (.A1(net736),
    .A2(net738),
    .B1(\reg_next_pc[3] ),
    .Y(_0891_));
 sky130_fd_sc_hd__a21oi_1 _4720_ (.A1(_0886_),
    .A2(_0890_),
    .B1(_0891_),
    .Y(_0266_));
 sky130_fd_sc_hd__mux2i_1 _4721_ (.A0(\reg_out[4] ),
    .A1(\alu_out_q[4] ),
    .S(net737),
    .Y(_0892_));
 sky130_fd_sc_hd__a21oi_1 _4722_ (.A1(net736),
    .A2(net738),
    .B1(\reg_next_pc[4] ),
    .Y(_0893_));
 sky130_fd_sc_hd__a21oi_2 _4723_ (.A1(_0886_),
    .A2(_0892_),
    .B1(_0893_),
    .Y(_0457_));
 sky130_fd_sc_hd__mux2_2 _4724_ (.A0(\reg_out[5] ),
    .A1(\alu_out_q[5] ),
    .S(net737),
    .X(_0894_));
 sky130_fd_sc_hd__mux2i_1 _4725_ (.A0(\reg_next_pc[5] ),
    .A1(_0894_),
    .S(_0886_),
    .Y(_0895_));
 sky130_fd_sc_hd__inv_1 _4726_ (.A(_0895_),
    .Y(_0273_));
 sky130_fd_sc_hd__mux2_2 _4727_ (.A0(\reg_out[6] ),
    .A1(\alu_out_q[6] ),
    .S(net737),
    .X(_0896_));
 sky130_fd_sc_hd__mux2i_1 _4728_ (.A0(\reg_next_pc[6] ),
    .A1(_0896_),
    .S(_0886_),
    .Y(_0897_));
 sky130_fd_sc_hd__inv_1 _4729_ (.A(_0897_),
    .Y(_0405_));
 sky130_fd_sc_hd__mux2_2 _4730_ (.A0(\reg_out[7] ),
    .A1(\alu_out_q[7] ),
    .S(net737),
    .X(_0898_));
 sky130_fd_sc_hd__mux2i_1 _4731_ (.A0(\reg_next_pc[7] ),
    .A1(_0898_),
    .S(_0886_),
    .Y(_0899_));
 sky130_fd_sc_hd__inv_1 _4732_ (.A(_0899_),
    .Y(_0434_));
 sky130_fd_sc_hd__mux2_2 _4733_ (.A0(\reg_out[8] ),
    .A1(\alu_out_q[8] ),
    .S(net737),
    .X(_0900_));
 sky130_fd_sc_hd__mux2i_1 _4734_ (.A0(\reg_next_pc[8] ),
    .A1(_0900_),
    .S(_0886_),
    .Y(_0901_));
 sky130_fd_sc_hd__inv_1 _4735_ (.A(_0901_),
    .Y(_0365_));
 sky130_fd_sc_hd__mux2_2 _4736_ (.A0(\reg_out[9] ),
    .A1(\alu_out_q[9] ),
    .S(net737),
    .X(_0902_));
 sky130_fd_sc_hd__mux2i_2 _4737_ (.A0(\reg_next_pc[9] ),
    .A1(_0902_),
    .S(_0886_),
    .Y(_0903_));
 sky130_fd_sc_hd__inv_1 _4738_ (.A(_0903_),
    .Y(_0117_));
 sky130_fd_sc_hd__mux2_2 _4739_ (.A0(\reg_out[10] ),
    .A1(\alu_out_q[10] ),
    .S(net737),
    .X(_0904_));
 sky130_fd_sc_hd__mux2i_1 _4740_ (.A0(\reg_next_pc[10] ),
    .A1(_0904_),
    .S(_0886_),
    .Y(_0905_));
 sky130_fd_sc_hd__inv_1 _4741_ (.A(_0905_),
    .Y(_0402_));
 sky130_fd_sc_hd__mux2_2 _4742_ (.A0(\reg_out[11] ),
    .A1(\alu_out_q[11] ),
    .S(net737),
    .X(_0906_));
 sky130_fd_sc_hd__mux2i_1 _4743_ (.A0(\reg_next_pc[11] ),
    .A1(_0906_),
    .S(_0886_),
    .Y(_0907_));
 sky130_fd_sc_hd__inv_1 _4744_ (.A(_0907_),
    .Y(_0460_));
 sky130_fd_sc_hd__mux2_2 _4745_ (.A0(\reg_out[12] ),
    .A1(\alu_out_q[12] ),
    .S(net737),
    .X(_0908_));
 sky130_fd_sc_hd__mux2i_1 _4746_ (.A0(\reg_next_pc[12] ),
    .A1(_0908_),
    .S(_0886_),
    .Y(_0909_));
 sky130_fd_sc_hd__inv_1 _4747_ (.A(_0909_),
    .Y(_0120_));
 sky130_fd_sc_hd__mux2_2 _4748_ (.A0(\reg_out[13] ),
    .A1(\alu_out_q[13] ),
    .S(net737),
    .X(_0910_));
 sky130_fd_sc_hd__mux2i_1 _4749_ (.A0(\reg_next_pc[13] ),
    .A1(_0910_),
    .S(_0886_),
    .Y(_0911_));
 sky130_fd_sc_hd__inv_1 _4750_ (.A(_0911_),
    .Y(_0425_));
 sky130_fd_sc_hd__mux2_2 _4752_ (.A0(\reg_out[14] ),
    .A1(\alu_out_q[14] ),
    .S(net737),
    .X(_0913_));
 sky130_fd_sc_hd__nand2_1 _4753_ (.A(_0886_),
    .B(_0913_),
    .Y(_0914_));
 sky130_fd_sc_hd__nand2_1 _4754_ (.A(\reg_next_pc[14] ),
    .B(net697),
    .Y(_0915_));
 sky130_fd_sc_hd__and2_1 _4755_ (.A(_0914_),
    .B(_0915_),
    .X(_0916_));
 sky130_fd_sc_hd__inv_1 _4756_ (.A(_0916_),
    .Y(_0399_));
 sky130_fd_sc_hd__mux2_2 _4757_ (.A0(\reg_out[15] ),
    .A1(\alu_out_q[15] ),
    .S(net737),
    .X(_0917_));
 sky130_fd_sc_hd__nand2_1 _4758_ (.A(_0886_),
    .B(_0917_),
    .Y(_0918_));
 sky130_fd_sc_hd__nand2_1 _4759_ (.A(\reg_next_pc[15] ),
    .B(net697),
    .Y(_0919_));
 sky130_fd_sc_hd__nand2_1 _4760_ (.A(_0918_),
    .B(_0919_),
    .Y(_0261_));
 sky130_fd_sc_hd__mux2_2 _4761_ (.A0(\reg_out[16] ),
    .A1(\alu_out_q[16] ),
    .S(net737),
    .X(_0920_));
 sky130_fd_sc_hd__nand2_1 _4762_ (.A(_0886_),
    .B(_0920_),
    .Y(_0921_));
 sky130_fd_sc_hd__nand2_1 _4763_ (.A(\reg_next_pc[16] ),
    .B(net697),
    .Y(_0922_));
 sky130_fd_sc_hd__and2_1 _4764_ (.A(_0921_),
    .B(_0922_),
    .X(_0923_));
 sky130_fd_sc_hd__inv_1 _4765_ (.A(_0923_),
    .Y(_0097_));
 sky130_fd_sc_hd__mux2_2 _4766_ (.A0(\reg_out[17] ),
    .A1(\alu_out_q[17] ),
    .S(net737),
    .X(_0924_));
 sky130_fd_sc_hd__nand2_1 _4767_ (.A(\reg_next_pc[17] ),
    .B(net697),
    .Y(_0925_));
 sky130_fd_sc_hd__a21boi_1 _4768_ (.A1(_0886_),
    .A2(_0924_),
    .B1_N(_0925_),
    .Y(_0926_));
 sky130_fd_sc_hd__inv_1 _4769_ (.A(_0926_),
    .Y(_0417_));
 sky130_fd_sc_hd__mux2_2 _4770_ (.A0(\reg_out[18] ),
    .A1(\alu_out_q[18] ),
    .S(net737),
    .X(_0927_));
 sky130_fd_sc_hd__nand2_1 _4771_ (.A(_0886_),
    .B(_0927_),
    .Y(_0928_));
 sky130_fd_sc_hd__nand2_1 _4772_ (.A(\reg_next_pc[18] ),
    .B(net697),
    .Y(_0929_));
 sky130_fd_sc_hd__and2_1 _4773_ (.A(_0928_),
    .B(_0929_),
    .X(_0930_));
 sky130_fd_sc_hd__inv_1 _4774_ (.A(_0930_),
    .Y(_0396_));
 sky130_fd_sc_hd__mux2_2 _4775_ (.A0(\reg_out[19] ),
    .A1(\alu_out_q[19] ),
    .S(net737),
    .X(_0931_));
 sky130_fd_sc_hd__mux2i_1 _4776_ (.A0(\reg_next_pc[19] ),
    .A1(_0931_),
    .S(_0886_),
    .Y(_0932_));
 sky130_fd_sc_hd__inv_1 _4777_ (.A(_0932_),
    .Y(_0428_));
 sky130_fd_sc_hd__mux2_2 _4778_ (.A0(\reg_out[20] ),
    .A1(\alu_out_q[20] ),
    .S(net737),
    .X(_0933_));
 sky130_fd_sc_hd__mux2i_1 _4779_ (.A0(\reg_next_pc[20] ),
    .A1(_0933_),
    .S(_0886_),
    .Y(_0934_));
 sky130_fd_sc_hd__inv_1 _4780_ (.A(_0934_),
    .Y(_0072_));
 sky130_fd_sc_hd__mux2i_1 _4781_ (.A0(\reg_out[21] ),
    .A1(\alu_out_q[21] ),
    .S(net737),
    .Y(_0935_));
 sky130_fd_sc_hd__a21oi_1 _4782_ (.A1(net736),
    .A2(net738),
    .B1(\reg_next_pc[21] ),
    .Y(_0936_));
 sky130_fd_sc_hd__a21oi_2 _4783_ (.A1(_0886_),
    .A2(_0935_),
    .B1(_0936_),
    .Y(_0094_));
 sky130_fd_sc_hd__mux2i_1 _4784_ (.A0(\reg_out[22] ),
    .A1(\alu_out_q[22] ),
    .S(net737),
    .Y(_0937_));
 sky130_fd_sc_hd__a21oi_1 _4785_ (.A1(net736),
    .A2(net738),
    .B1(\reg_next_pc[22] ),
    .Y(_0938_));
 sky130_fd_sc_hd__a21oi_2 _4786_ (.A1(_0886_),
    .A2(_0937_),
    .B1(_0938_),
    .Y(_0393_));
 sky130_fd_sc_hd__mux2i_1 _4787_ (.A0(\reg_out[23] ),
    .A1(\alu_out_q[23] ),
    .S(net737),
    .Y(_0939_));
 sky130_fd_sc_hd__nand2_1 _4788_ (.A(\reg_next_pc[23] ),
    .B(net697),
    .Y(_0940_));
 sky130_fd_sc_hd__o21ai_1 _4789_ (.A1(net697),
    .A2(_0939_),
    .B1(_0940_),
    .Y(_0431_));
 sky130_fd_sc_hd__mux2i_1 _4790_ (.A0(\reg_out[24] ),
    .A1(\alu_out_q[24] ),
    .S(net737),
    .Y(_0941_));
 sky130_fd_sc_hd__nand2_1 _4791_ (.A(\reg_next_pc[24] ),
    .B(net697),
    .Y(_0942_));
 sky130_fd_sc_hd__o21ai_1 _4792_ (.A1(net697),
    .A2(_0941_),
    .B1(_0942_),
    .Y(_0258_));
 sky130_fd_sc_hd__mux2_2 _4793_ (.A0(\reg_out[25] ),
    .A1(\alu_out_q[25] ),
    .S(net737),
    .X(_0943_));
 sky130_fd_sc_hd__nand2_1 _4794_ (.A(_0886_),
    .B(_0943_),
    .Y(_0944_));
 sky130_fd_sc_hd__nand2_1 _4795_ (.A(\reg_next_pc[25] ),
    .B(net697),
    .Y(_0945_));
 sky130_fd_sc_hd__nand2_1 _4796_ (.A(_0944_),
    .B(_0945_),
    .Y(_0075_));
 sky130_fd_sc_hd__mux2_2 _4797_ (.A0(\reg_out[26] ),
    .A1(\alu_out_q[26] ),
    .S(net737),
    .X(_0946_));
 sky130_fd_sc_hd__mux2i_1 _4798_ (.A0(\reg_next_pc[26] ),
    .A1(_0946_),
    .S(_0886_),
    .Y(_0947_));
 sky130_fd_sc_hd__inv_1 _4799_ (.A(_0947_),
    .Y(_0390_));
 sky130_fd_sc_hd__mux2i_1 _4800_ (.A0(\reg_out[27] ),
    .A1(\alu_out_q[27] ),
    .S(net737),
    .Y(_0948_));
 sky130_fd_sc_hd__nand2_1 _4801_ (.A(\reg_next_pc[27] ),
    .B(net697),
    .Y(_0949_));
 sky130_fd_sc_hd__o21ai_1 _4802_ (.A1(net697),
    .A2(_0948_),
    .B1(_0949_),
    .Y(_0380_));
 sky130_fd_sc_hd__mux2i_1 _4803_ (.A0(\reg_out[28] ),
    .A1(\alu_out_q[28] ),
    .S(net737),
    .Y(_0950_));
 sky130_fd_sc_hd__nand2_1 _4804_ (.A(\reg_next_pc[28] ),
    .B(net697),
    .Y(_0951_));
 sky130_fd_sc_hd__o21a_1 _4805_ (.A1(net697),
    .A2(_0950_),
    .B1(_0951_),
    .X(_0952_));
 sky130_fd_sc_hd__inv_1 _4806_ (.A(_0952_),
    .Y(_0337_));
 sky130_fd_sc_hd__mux2i_1 _4807_ (.A0(\reg_out[29] ),
    .A1(\alu_out_q[29] ),
    .S(net737),
    .Y(_0953_));
 sky130_fd_sc_hd__nand2_1 _4808_ (.A(\reg_next_pc[29] ),
    .B(net697),
    .Y(_0954_));
 sky130_fd_sc_hd__o21a_1 _4809_ (.A1(net697),
    .A2(_0953_),
    .B1(_0954_),
    .X(_0955_));
 sky130_fd_sc_hd__inv_1 _4810_ (.A(_0955_),
    .Y(_0422_));
 sky130_fd_sc_hd__mux2i_1 _4811_ (.A0(\reg_out[30] ),
    .A1(\alu_out_q[30] ),
    .S(net737),
    .Y(_0956_));
 sky130_fd_sc_hd__nand2_1 _4812_ (.A(\reg_next_pc[30] ),
    .B(net697),
    .Y(_0957_));
 sky130_fd_sc_hd__o21a_1 _4813_ (.A1(net697),
    .A2(_0956_),
    .B1(_0957_),
    .X(_0958_));
 sky130_fd_sc_hd__inv_1 _4814_ (.A(_0958_),
    .Y(_0387_));
 sky130_fd_sc_hd__inv_1 _4815_ (.A(net340),
    .Y(_0284_));
 sky130_fd_sc_hd__inv_1 _4816_ (.A(net719),
    .Y(_0198_));
 sky130_fd_sc_hd__inv_1 _4817_ (.A(net263),
    .Y(_0451_));
 sky130_fd_sc_hd__inv_1 _4818_ (.A(net727),
    .Y(_0346_));
 sky130_fd_sc_hd__inv_1 _4819_ (.A(net713),
    .Y(_0297_));
 sky130_fd_sc_hd__inv_1 _4820_ (.A(net729),
    .Y(_0210_));
 sky130_fd_sc_hd__inv_1 _4821_ (.A(net716),
    .Y(_0368_));
 sky130_fd_sc_hd__inv_1 _4822_ (.A(net703),
    .Y(_0325_));
 sky130_fd_sc_hd__inv_1 _4823_ (.A(net354),
    .Y(_0369_));
 sky130_fd_sc_hd__inv_1 _4824_ (.A(net352),
    .Y(_0229_));
 sky130_fd_sc_hd__inv_1 _4825_ (.A(net351),
    .Y(_0199_));
 sky130_fd_sc_hd__inv_1 _4826_ (.A(net702),
    .Y(_0411_));
 sky130_fd_sc_hd__inv_1 _4827_ (.A(net362),
    .Y(_0136_));
 sky130_fd_sc_hd__inv_1 _4828_ (.A(net730),
    .Y(_0321_));
 sky130_fd_sc_hd__inv_1 _4829_ (.A(net341),
    .Y(_0148_));
 sky130_fd_sc_hd__inv_1 _4830_ (.A(\reg_sh[3] ),
    .Y(_0156_));
 sky130_fd_sc_hd__inv_1 _4831_ (.A(\reg_sh[2] ),
    .Y(_0155_));
 sky130_fd_sc_hd__inv_1 _4832_ (.A(\reg_sh[1] ),
    .Y(_0164_));
 sky130_fd_sc_hd__inv_1 _4833_ (.A(net720),
    .Y(_0108_));
 sky130_fd_sc_hd__inv_1 _4834_ (.A(\reg_sh[0] ),
    .Y(_0163_));
 sky130_fd_sc_hd__inv_1 _4836_ (.A(net732),
    .Y(_0485_));
 sky130_fd_sc_hd__inv_1 _4837_ (.A(net359),
    .Y(_0192_));
 sky130_fd_sc_hd__inv_1 _4838_ (.A(net701),
    .Y(_0145_));
 sky130_fd_sc_hd__or2_2 _4841_ (.A(net733),
    .B(net734),
    .X(_0962_));
 sky130_fd_sc_hd__nand2_1 _4844_ (.A(net733),
    .B(net344),
    .Y(_0965_));
 sky130_fd_sc_hd__nand2_1 _4846_ (.A(net734),
    .B(net262),
    .Y(_0967_));
 sky130_fd_sc_hd__o211ai_1 _4847_ (.A1(_0145_),
    .A2(_0962_),
    .B1(_0965_),
    .C1(_0967_),
    .Y(net257));
 sky130_fd_sc_hd__a22oi_1 _4848_ (.A1(net733),
    .A2(net343),
    .B1(net261),
    .B2(net734),
    .Y(_0968_));
 sky130_fd_sc_hd__o21ai_0 _4849_ (.A1(_0192_),
    .A2(_0962_),
    .B1(_0968_),
    .Y(net255));
 sky130_fd_sc_hd__inv_1 _4850_ (.A(net358),
    .Y(_0476_));
 sky130_fd_sc_hd__nand2_1 _4851_ (.A(net734),
    .B(net260),
    .Y(_0969_));
 sky130_fd_sc_hd__nand2_1 _4852_ (.A(net733),
    .B(net342),
    .Y(_0970_));
 sky130_fd_sc_hd__o211ai_1 _4853_ (.A1(_0476_),
    .A2(_0962_),
    .B1(_0969_),
    .C1(_0970_),
    .Y(net254));
 sky130_fd_sc_hd__inv_1 _4854_ (.A(net357),
    .Y(_0114_));
 sky130_fd_sc_hd__nand2_1 _4855_ (.A(net734),
    .B(net259),
    .Y(_0971_));
 sky130_fd_sc_hd__nand2_1 _4856_ (.A(net341),
    .B(net733),
    .Y(_0972_));
 sky130_fd_sc_hd__o211ai_1 _4857_ (.A1(_0114_),
    .A2(_0962_),
    .B1(_0971_),
    .C1(_0972_),
    .Y(net253));
 sky130_fd_sc_hd__inv_1 _4858_ (.A(net356),
    .Y(_0195_));
 sky130_fd_sc_hd__nand2_1 _4859_ (.A(net734),
    .B(net256),
    .Y(_0973_));
 sky130_fd_sc_hd__nand2_1 _4860_ (.A(net340),
    .B(net733),
    .Y(_0974_));
 sky130_fd_sc_hd__o211ai_1 _4861_ (.A1(_0195_),
    .A2(_0962_),
    .B1(_0973_),
    .C1(_0974_),
    .Y(net252));
 sky130_fd_sc_hd__inv_1 _4862_ (.A(net355),
    .Y(_0127_));
 sky130_fd_sc_hd__nand2_1 _4863_ (.A(net734),
    .B(net245),
    .Y(_0975_));
 sky130_fd_sc_hd__nand2_1 _4864_ (.A(net733),
    .B(net363),
    .Y(_0976_));
 sky130_fd_sc_hd__o211ai_1 _4865_ (.A1(_0127_),
    .A2(_0962_),
    .B1(_0975_),
    .C1(_0976_),
    .Y(net251));
 sky130_fd_sc_hd__a22oi_1 _4866_ (.A1(net362),
    .A2(net733),
    .B1(net734),
    .B2(net234),
    .Y(_0977_));
 sky130_fd_sc_hd__o21ai_0 _4867_ (.A1(_0369_),
    .A2(_0962_),
    .B1(_0977_),
    .Y(net250));
 sky130_fd_sc_hd__nor2_2 _4868_ (.A(net733),
    .B(net734),
    .Y(_0978_));
 sky130_fd_sc_hd__nand2_1 _4870_ (.A(net353),
    .B(net696),
    .Y(_0980_));
 sky130_fd_sc_hd__o21ai_0 _4871_ (.A1(_0451_),
    .A2(net696),
    .B1(_0980_),
    .Y(net249));
 sky130_fd_sc_hd__inv_1 _4872_ (.A(net262),
    .Y(_0374_));
 sky130_fd_sc_hd__nand2_1 _4873_ (.A(net352),
    .B(net696),
    .Y(_0981_));
 sky130_fd_sc_hd__o21ai_0 _4874_ (.A1(_0374_),
    .A2(net696),
    .B1(_0981_),
    .Y(net248));
 sky130_fd_sc_hd__inv_1 _4875_ (.A(net261),
    .Y(_0234_));
 sky130_fd_sc_hd__nand2_1 _4876_ (.A(net351),
    .B(net696),
    .Y(_0982_));
 sky130_fd_sc_hd__o21ai_0 _4877_ (.A1(_0234_),
    .A2(net696),
    .B1(_0982_),
    .Y(net247));
 sky130_fd_sc_hd__inv_1 _4878_ (.A(net260),
    .Y(_0463_));
 sky130_fd_sc_hd__nand2_1 _4879_ (.A(net350),
    .B(net696),
    .Y(_0983_));
 sky130_fd_sc_hd__o21ai_0 _4880_ (.A1(_0463_),
    .A2(net696),
    .B1(_0983_),
    .Y(net246));
 sky130_fd_sc_hd__inv_1 _4881_ (.A(net259),
    .Y(_0469_));
 sky130_fd_sc_hd__nand2_1 _4882_ (.A(net349),
    .B(net696),
    .Y(_0984_));
 sky130_fd_sc_hd__o21ai_0 _4883_ (.A1(_0469_),
    .A2(net696),
    .B1(_0984_),
    .Y(net244));
 sky130_fd_sc_hd__inv_1 _4884_ (.A(net256),
    .Y(_0278_));
 sky130_fd_sc_hd__nand2_1 _4885_ (.A(net348),
    .B(net696),
    .Y(_0985_));
 sky130_fd_sc_hd__o21ai_0 _4886_ (.A1(_0278_),
    .A2(net696),
    .B1(_0985_),
    .Y(net243));
 sky130_fd_sc_hd__inv_1 _4887_ (.A(net245),
    .Y(_0059_));
 sky130_fd_sc_hd__nand2_1 _4888_ (.A(net347),
    .B(net696),
    .Y(_0986_));
 sky130_fd_sc_hd__o21ai_0 _4889_ (.A1(_0059_),
    .A2(net696),
    .B1(_0986_),
    .Y(net242));
 sky130_fd_sc_hd__inv_1 _4890_ (.A(net234),
    .Y(_0484_));
 sky130_fd_sc_hd__nand2_1 _4891_ (.A(net346),
    .B(net696),
    .Y(_0987_));
 sky130_fd_sc_hd__o21ai_0 _4892_ (.A1(_0484_),
    .A2(net696),
    .B1(_0987_),
    .Y(net241));
 sky130_fd_sc_hd__nand2b_1 _4893_ (.A_N(net733),
    .B(net734),
    .Y(_0988_));
 sky130_fd_sc_hd__a22o_1 _4895_ (.A1(net263),
    .A2(net734),
    .B1(_0988_),
    .B2(net345),
    .X(net240));
 sky130_fd_sc_hd__nand2_1 _4896_ (.A(net344),
    .B(_0988_),
    .Y(_0990_));
 sky130_fd_sc_hd__nand2_1 _4897_ (.A(_0967_),
    .B(_0990_),
    .Y(net239));
 sky130_fd_sc_hd__a22o_1 _4898_ (.A1(net734),
    .A2(net261),
    .B1(_0988_),
    .B2(net343),
    .X(net238));
 sky130_fd_sc_hd__nand2_1 _4899_ (.A(net342),
    .B(_0988_),
    .Y(_0991_));
 sky130_fd_sc_hd__nand2_1 _4900_ (.A(_0969_),
    .B(_0991_),
    .Y(net237));
 sky130_fd_sc_hd__nand2_1 _4901_ (.A(net341),
    .B(_0988_),
    .Y(_0992_));
 sky130_fd_sc_hd__nand2_1 _4902_ (.A(_0971_),
    .B(_0992_),
    .Y(net236));
 sky130_fd_sc_hd__inv_1 _4903_ (.A(net704),
    .Y(_0452_));
 sky130_fd_sc_hd__nand2_1 _4904_ (.A(net340),
    .B(_0988_),
    .Y(_0993_));
 sky130_fd_sc_hd__nand2_1 _4905_ (.A(_0973_),
    .B(_0993_),
    .Y(net235));
 sky130_fd_sc_hd__nand2_1 _4906_ (.A(net363),
    .B(_0988_),
    .Y(_0994_));
 sky130_fd_sc_hd__nand2_1 _4907_ (.A(_0975_),
    .B(_0994_),
    .Y(net265));
 sky130_fd_sc_hd__a22o_1 _4908_ (.A1(net734),
    .A2(net234),
    .B1(_0988_),
    .B2(net362),
    .X(net264));
 sky130_fd_sc_hd__nand2b_1 _4911_ (.A_N(\mem_wordsize[2] ),
    .B(net308),
    .Y(_0997_));
 sky130_fd_sc_hd__nand2_1 _4912_ (.A(net721),
    .B(_0997_),
    .Y(_0998_));
 sky130_fd_sc_hd__nand2_1 _4913_ (.A(_0962_),
    .B(_0998_),
    .Y(net269));
 sky130_fd_sc_hd__nor2_1 _4914_ (.A(net308),
    .B(net733),
    .Y(_0999_));
 sky130_fd_sc_hd__o21ai_0 _4915_ (.A1(net721),
    .A2(_0999_),
    .B1(_0962_),
    .Y(net268));
 sky130_fd_sc_hd__inv_1 _4916_ (.A(net721),
    .Y(_0055_));
 sky130_fd_sc_hd__a21o_1 _4917_ (.A1(_0055_),
    .A2(_0997_),
    .B1(net696),
    .X(net267));
 sky130_fd_sc_hd__inv_1 _4919_ (.A(net724),
    .Y(_0250_));
 sky130_fd_sc_hd__inv_1 _4921_ (.A(net709),
    .Y(_0487_));
 sky130_fd_sc_hd__inv_1 _4922_ (.A(net348),
    .Y(_0204_));
 sky130_fd_sc_hd__inv_1 _4923_ (.A(net723),
    .Y(_0246_));
 sky130_fd_sc_hd__or2_2 _4924_ (.A(mem_do_prefetch),
    .B(mem_do_rinst),
    .X(_1002_));
 sky130_fd_sc_hd__o21a_1 _4926_ (.A1(mem_do_rdata),
    .A2(net695),
    .B1(_0500_),
    .X(_1004_));
 sky130_fd_sc_hd__and3_1 _4928_ (.A(mem_do_wdata),
    .B(_0500_),
    .C(net171),
    .X(net266));
 sky130_fd_sc_hd__mux2i_1 _4930_ (.A0(net306),
    .A1(net269),
    .S(net266),
    .Y(_1007_));
 sky130_fd_sc_hd__nor2_1 _4931_ (.A(_1004_),
    .B(_1007_),
    .Y(_4631_));
 sky130_fd_sc_hd__mux2i_1 _4932_ (.A0(net305),
    .A1(net268),
    .S(net266),
    .Y(_1008_));
 sky130_fd_sc_hd__nor2_1 _4933_ (.A(_1004_),
    .B(_1008_),
    .Y(_4630_));
 sky130_fd_sc_hd__mux2i_1 _4934_ (.A0(net304),
    .A1(net267),
    .S(net266),
    .Y(_1009_));
 sky130_fd_sc_hd__nor2_1 _4935_ (.A(_1004_),
    .B(_1009_),
    .Y(_4629_));
 sky130_fd_sc_hd__inv_1 _4936_ (.A(net344),
    .Y(_0347_));
 sky130_fd_sc_hd__inv_1 _4937_ (.A(net353),
    .Y(_0105_));
 sky130_fd_sc_hd__inv_1 _4938_ (.A(net717),
    .Y(_0123_));
 sky130_fd_sc_hd__inv_1 _4939_ (.A(net342),
    .Y(_0211_));
 sky130_fd_sc_hd__inv_1 _4940_ (.A(net726),
    .Y(_0313_));
 sky130_fd_sc_hd__or3_1 _4941_ (.A(instr_jalr),
    .B(is_lb_lh_lw_lbu_lhu),
    .C(is_alu_reg_imm),
    .X(_1010_));
 sky130_fd_sc_hd__a22o_1 _4943_ (.A1(is_sb_sh_sw),
    .A2(\mem_rdata_q[7] ),
    .B1(_1010_),
    .B2(\mem_rdata_q[20] ),
    .X(_4628_));
 sky130_fd_sc_hd__inv_1 _4944_ (.A(is_compare),
    .Y(_1012_));
 sky130_fd_sc_hd__or2_2 _4945_ (.A(instr_xor),
    .B(instr_xori),
    .X(_1013_));
 sky130_fd_sc_hd__or2_2 _4947_ (.A(instr_or),
    .B(instr_ori),
    .X(_1015_));
 sky130_fd_sc_hd__or2_2 _4948_ (.A(instr_and),
    .B(instr_andi),
    .X(_1016_));
 sky130_fd_sc_hd__nor3_1 _4950_ (.A(_1013_),
    .B(_1015_),
    .C(_1016_),
    .Y(_1018_));
 sky130_fd_sc_hd__nand2_2 _4951_ (.A(_1012_),
    .B(_1018_),
    .Y(_1019_));
 sky130_fd_sc_hd__nor2_2 _4955_ (.A(instr_or),
    .B(instr_ori),
    .Y(_1023_));
 sky130_fd_sc_hd__nor2_1 _4957_ (.A(_0294_),
    .B(net694),
    .Y(_1025_));
 sky130_fd_sc_hd__a221oi_1 _4958_ (.A1(_0295_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0296_),
    .C1(_1025_),
    .Y(_1026_));
 sky130_fd_sc_hd__inv_1 _4959_ (.A(_0478_),
    .Y(_1027_));
 sky130_fd_sc_hd__a21oi_1 _4961_ (.A1(_0299_),
    .A2(_0304_),
    .B1(_0300_),
    .Y(_1029_));
 sky130_fd_sc_hd__o21bai_1 _4962_ (.A1(_1027_),
    .A2(_1029_),
    .B1_N(_0480_),
    .Y(_1030_));
 sky130_fd_sc_hd__a21o_1 _4963_ (.A1(_0271_),
    .A2(_1030_),
    .B1(_0272_),
    .X(_1031_));
 sky130_fd_sc_hd__nor3b_1 _4966_ (.A(net675),
    .B(net739),
    .C_N(_0295_),
    .Y(_1034_));
 sky130_fd_sc_hd__inv_1 _4968_ (.A(_0371_),
    .Y(_1036_));
 sky130_fd_sc_hd__nand2_1 _4969_ (.A(_0129_),
    .B(_1036_),
    .Y(_1037_));
 sky130_fd_sc_hd__nand4_1 _4971_ (.A(_0194_),
    .B(_0116_),
    .C(_0197_),
    .D(_1027_),
    .Y(_1039_));
 sky130_fd_sc_hd__nor2_1 _4972_ (.A(_1037_),
    .B(_1039_),
    .Y(_1040_));
 sky130_fd_sc_hd__inv_1 _4973_ (.A(_0279_),
    .Y(_1041_));
 sky130_fd_sc_hd__nand2b_1 _4974_ (.A_N(_0057_),
    .B(_0280_),
    .Y(_1042_));
 sky130_fd_sc_hd__a21oi_1 _4976_ (.A1(_1041_),
    .A2(_1042_),
    .B1(_0472_),
    .Y(_1044_));
 sky130_fd_sc_hd__nor2_1 _4977_ (.A(_0473_),
    .B(_1044_),
    .Y(_1045_));
 sky130_fd_sc_hd__inv_1 _4978_ (.A(_0236_),
    .Y(_1046_));
 sky130_fd_sc_hd__or2_1 _4982_ (.A(_0454_),
    .B(_0377_),
    .X(_1050_));
 sky130_fd_sc_hd__or3_1 _4983_ (.A(_1046_),
    .B(_0466_),
    .C(_1050_),
    .X(_1051_));
 sky130_fd_sc_hd__a21oi_1 _4984_ (.A1(_0236_),
    .A2(_0467_),
    .B1(_0235_),
    .Y(_1052_));
 sky130_fd_sc_hd__nor2b_1 _4985_ (.A(_0454_),
    .B_N(_0378_),
    .Y(_1053_));
 sky130_fd_sc_hd__nor2_1 _4986_ (.A(_0455_),
    .B(_1053_),
    .Y(_1054_));
 sky130_fd_sc_hd__o21ai_0 _4987_ (.A1(_1050_),
    .A2(_1052_),
    .B1(_1054_),
    .Y(_1055_));
 sky130_fd_sc_hd__o21ba_2 _4988_ (.A1(_1045_),
    .A2(_1051_),
    .B1_N(_1055_),
    .X(_1056_));
 sky130_fd_sc_hd__nand2b_1 _4990_ (.A_N(_0343_),
    .B(_0209_),
    .Y(_1058_));
 sky130_fd_sc_hd__nand2b_1 _4992_ (.A_N(_0350_),
    .B(_0349_),
    .Y(_1060_));
 sky130_fd_sc_hd__a21oi_1 _4993_ (.A1(_0141_),
    .A2(_1060_),
    .B1(_0140_),
    .Y(_1061_));
 sky130_fd_sc_hd__a21oi_1 _4994_ (.A1(_0209_),
    .A2(_0344_),
    .B1(_0208_),
    .Y(_1062_));
 sky130_fd_sc_hd__o21ai_0 _4995_ (.A1(_1058_),
    .A2(_1061_),
    .B1(_1062_),
    .Y(_1063_));
 sky130_fd_sc_hd__inv_1 _4996_ (.A(_0144_),
    .Y(_1064_));
 sky130_fd_sc_hd__nand2b_1 _4997_ (.A_N(_0213_),
    .B(_0150_),
    .Y(_1065_));
 sky130_fd_sc_hd__or3_1 _4998_ (.A(_1064_),
    .B(_0286_),
    .C(_1065_),
    .X(_1066_));
 sky130_fd_sc_hd__nand2b_1 _4999_ (.A_N(_0414_),
    .B(_0138_),
    .Y(_1067_));
 sky130_fd_sc_hd__nor2_1 _5000_ (.A(_1066_),
    .B(_1067_),
    .Y(_1068_));
 sky130_fd_sc_hd__nand2_1 _5001_ (.A(_1063_),
    .B(_1068_),
    .Y(_1069_));
 sky130_fd_sc_hd__inv_1 _5002_ (.A(_0213_),
    .Y(_1070_));
 sky130_fd_sc_hd__a21o_1 _5003_ (.A1(_0150_),
    .A2(_0287_),
    .B1(_0149_),
    .X(_1071_));
 sky130_fd_sc_hd__a21oi_1 _5004_ (.A1(_1070_),
    .A2(_1071_),
    .B1(_0214_),
    .Y(_1072_));
 sky130_fd_sc_hd__a211oi_1 _5005_ (.A1(_0141_),
    .A2(_0350_),
    .B1(_0143_),
    .C1(_0140_),
    .Y(_1073_));
 sky130_fd_sc_hd__o211ai_1 _5006_ (.A1(_1064_),
    .A2(_1072_),
    .B1(_1073_),
    .C1(_1062_),
    .Y(_1074_));
 sky130_fd_sc_hd__inv_1 _5007_ (.A(_0414_),
    .Y(_1075_));
 sky130_fd_sc_hd__a21oi_1 _5008_ (.A1(_0137_),
    .A2(_1075_),
    .B1(_0415_),
    .Y(_1076_));
 sky130_fd_sc_hd__nor2_1 _5009_ (.A(_1066_),
    .B(_1076_),
    .Y(_1077_));
 sky130_fd_sc_hd__o21ai_0 _5010_ (.A1(_1074_),
    .A2(_1077_),
    .B1(_1063_),
    .Y(_1078_));
 sky130_fd_sc_hd__o21ai_1 _5011_ (.A1(_1056_),
    .A2(_1069_),
    .B1(_1078_),
    .Y(_1079_));
 sky130_fd_sc_hd__inv_1 _5013_ (.A(_0201_),
    .Y(_1081_));
 sky130_fd_sc_hd__inv_1 _5014_ (.A(_0111_),
    .Y(_1082_));
 sky130_fd_sc_hd__nand4_1 _5015_ (.A(_0231_),
    .B(_0218_),
    .C(_1081_),
    .D(_1082_),
    .Y(_1083_));
 sky130_fd_sc_hd__nand2_1 _5016_ (.A(_0206_),
    .B(_0107_),
    .Y(_1084_));
 sky130_fd_sc_hd__nor2_1 _5017_ (.A(_1083_),
    .B(_1084_),
    .Y(_1085_));
 sky130_fd_sc_hd__a21o_1 _5018_ (.A1(_1081_),
    .A2(_0112_),
    .B1(_0202_),
    .X(_1086_));
 sky130_fd_sc_hd__a21oi_1 _5019_ (.A1(_0205_),
    .A2(_0218_),
    .B1(_0217_),
    .Y(_1087_));
 sky130_fd_sc_hd__nor4b_1 _5020_ (.A(_0201_),
    .B(_0111_),
    .C(_1087_),
    .D_N(_0231_),
    .Y(_1088_));
 sky130_fd_sc_hd__a211o_1 _5021_ (.A1(_0231_),
    .A2(_1086_),
    .B1(_1088_),
    .C1(_0230_),
    .X(_1089_));
 sky130_fd_sc_hd__a21o_1 _5022_ (.A1(_0107_),
    .A2(_1089_),
    .B1(_0106_),
    .X(_1090_));
 sky130_fd_sc_hd__a21o_1 _5023_ (.A1(net609),
    .A2(_1085_),
    .B1(_1090_),
    .X(_1091_));
 sky130_fd_sc_hd__a21oi_1 _5024_ (.A1(_0116_),
    .A2(_0196_),
    .B1(_0115_),
    .Y(_1092_));
 sky130_fd_sc_hd__nor2_1 _5025_ (.A(_0478_),
    .B(_1092_),
    .Y(_1093_));
 sky130_fd_sc_hd__o21a_1 _5026_ (.A1(_0479_),
    .A2(_1093_),
    .B1(_0194_),
    .X(_1094_));
 sky130_fd_sc_hd__a21o_1 _5027_ (.A1(_0129_),
    .A2(_0372_),
    .B1(_0128_),
    .X(_1095_));
 sky130_fd_sc_hd__nor2b_1 _5028_ (.A(_1039_),
    .B_N(_1095_),
    .Y(_1096_));
 sky130_fd_sc_hd__a2111oi_0 _5029_ (.A1(_1040_),
    .A2(_1091_),
    .B1(_1094_),
    .C1(_1096_),
    .D1(_0193_),
    .Y(_1097_));
 sky130_fd_sc_hd__xor2_1 _5030_ (.A(_0147_),
    .B(_1097_),
    .X(_1098_));
 sky130_fd_sc_hd__nor4_2 _5031_ (.A(is_compare),
    .B(_1013_),
    .C(_1015_),
    .D(_1016_),
    .Y(_1099_));
 sky130_fd_sc_hd__and2_1 _5032_ (.A(net739),
    .B(net679),
    .X(_1100_));
 sky130_fd_sc_hd__a22o_1 _5033_ (.A1(_1031_),
    .A2(_1034_),
    .B1(_1098_),
    .B2(_1100_),
    .X(_1101_));
 sky130_fd_sc_hd__nor4_1 _5034_ (.A(net739),
    .B(_0295_),
    .C(_1031_),
    .D(net675),
    .Y(_1102_));
 sky130_fd_sc_hd__and3_1 _5035_ (.A(_0271_),
    .B(_0478_),
    .C(_0299_),
    .X(_1103_));
 sky130_fd_sc_hd__nand2_1 _5036_ (.A(_0213_),
    .B(_0323_),
    .Y(_1104_));
 sky130_fd_sc_hd__nand3_1 _5038_ (.A(_0315_),
    .B(_0349_),
    .C(_0319_),
    .Y(_1106_));
 sky130_fd_sc_hd__nor2_1 _5039_ (.A(_1104_),
    .B(_1106_),
    .Y(_1107_));
 sky130_fd_sc_hd__inv_1 _5040_ (.A(_0327_),
    .Y(_1108_));
 sky130_fd_sc_hd__a21o_1 _5041_ (.A1(_0377_),
    .A2(_0332_),
    .B1(_0379_),
    .X(_1109_));
 sky130_fd_sc_hd__a21oi_1 _5042_ (.A1(_0454_),
    .A2(_1109_),
    .B1(_0456_),
    .Y(_1110_));
 sky130_fd_sc_hd__a21o_1 _5043_ (.A1(_0335_),
    .A2(_0061_),
    .B1(_0336_),
    .X(_1111_));
 sky130_fd_sc_hd__a21o_1 _5044_ (.A1(_0466_),
    .A2(_0474_),
    .B1(_0468_),
    .X(_1112_));
 sky130_fd_sc_hd__a31oi_1 _5045_ (.A1(_0466_),
    .A2(_0472_),
    .A3(_1111_),
    .B1(_1112_),
    .Y(_1113_));
 sky130_fd_sc_hd__nand4_1 _5046_ (.A(_0327_),
    .B(_0454_),
    .C(_0377_),
    .D(_0331_),
    .Y(_1114_));
 sky130_fd_sc_hd__nor2_1 _5047_ (.A(_0416_),
    .B(_0328_),
    .Y(_1115_));
 sky130_fd_sc_hd__o221ai_1 _5048_ (.A1(_1108_),
    .A2(_1110_),
    .B1(_1113_),
    .B2(_1114_),
    .C1(_1115_),
    .Y(_1116_));
 sky130_fd_sc_hd__o21a_1 _5050_ (.A1(_0416_),
    .A2(_0414_),
    .B1(_0286_),
    .X(_1118_));
 sky130_fd_sc_hd__inv_1 _5051_ (.A(_0349_),
    .Y(_1119_));
 sky130_fd_sc_hd__a21oi_1 _5052_ (.A1(_0319_),
    .A2(_0215_),
    .B1(_0320_),
    .Y(_1120_));
 sky130_fd_sc_hd__a21oi_1 _5053_ (.A1(_0323_),
    .A2(_0288_),
    .B1(_0324_),
    .Y(_1121_));
 sky130_fd_sc_hd__nand3_1 _5054_ (.A(_0349_),
    .B(_0319_),
    .C(_0213_),
    .Y(_1122_));
 sky130_fd_sc_hd__inv_1 _5055_ (.A(_0351_),
    .Y(_1123_));
 sky130_fd_sc_hd__o221ai_1 _5056_ (.A1(_1119_),
    .A2(_1120_),
    .B1(_1121_),
    .B2(_1122_),
    .C1(_1123_),
    .Y(_1124_));
 sky130_fd_sc_hd__a21o_1 _5057_ (.A1(_0315_),
    .A2(_1124_),
    .B1(_0316_),
    .X(_1125_));
 sky130_fd_sc_hd__a31oi_1 _5058_ (.A1(_1107_),
    .A2(_1116_),
    .A3(_1118_),
    .B1(_1125_),
    .Y(_1126_));
 sky130_fd_sc_hd__and4_1 _5060_ (.A(_0111_),
    .B(_0311_),
    .C(_0248_),
    .D(_0252_),
    .X(_1128_));
 sky130_fd_sc_hd__nand4b_1 _5061_ (.A_N(_1126_),
    .B(_1128_),
    .C(_0343_),
    .D(_0201_),
    .Y(_1129_));
 sky130_fd_sc_hd__a21o_1 _5062_ (.A1(_0252_),
    .A2(_0345_),
    .B1(_0253_),
    .X(_1130_));
 sky130_fd_sc_hd__a21o_1 _5063_ (.A1(_0248_),
    .A2(_1130_),
    .B1(_0249_),
    .X(_1131_));
 sky130_fd_sc_hd__a21oi_1 _5064_ (.A1(_0311_),
    .A2(_1131_),
    .B1(_0312_),
    .Y(_1132_));
 sky130_fd_sc_hd__a21oi_1 _5065_ (.A1(_0201_),
    .A2(_0113_),
    .B1(_0203_),
    .Y(_1133_));
 sky130_fd_sc_hd__o31ai_1 _5066_ (.A1(_1081_),
    .A2(_1082_),
    .A3(_1132_),
    .B1(_1133_),
    .Y(_1134_));
 sky130_fd_sc_hd__nor3_1 _5067_ (.A(_0126_),
    .B(_0308_),
    .C(_1134_),
    .Y(_1135_));
 sky130_fd_sc_hd__nor3_1 _5068_ (.A(_0126_),
    .B(_0308_),
    .C(_0307_),
    .Y(_1136_));
 sky130_fd_sc_hd__nor2_1 _5069_ (.A(_0126_),
    .B(_0125_),
    .Y(_1137_));
 sky130_fd_sc_hd__a211o_1 _5070_ (.A1(_1129_),
    .A2(_1135_),
    .B1(_1136_),
    .C1(_1137_),
    .X(_1138_));
 sky130_fd_sc_hd__nand2_1 _5071_ (.A(_0256_),
    .B(_0371_),
    .Y(_1139_));
 sky130_fd_sc_hd__a21oi_1 _5072_ (.A1(_0256_),
    .A2(_0373_),
    .B1(_0257_),
    .Y(_1140_));
 sky130_fd_sc_hd__o21ai_0 _5073_ (.A1(_1138_),
    .A2(_1139_),
    .B1(_1140_),
    .Y(_1141_));
 sky130_fd_sc_hd__nand3_1 _5074_ (.A(_0303_),
    .B(_1103_),
    .C(_1141_),
    .Y(_1142_));
 sky130_fd_sc_hd__mux2_2 _5075_ (.A0(_1034_),
    .A1(_1102_),
    .S(_1142_),
    .X(_1143_));
 sky130_fd_sc_hd__a211oi_1 _5076_ (.A1(net675),
    .A2(_1026_),
    .B1(_1101_),
    .C1(_1143_),
    .Y(\alu_out[30] ));
 sky130_fd_sc_hd__nor2b_1 _5077_ (.A(_0371_),
    .B_N(_0106_),
    .Y(_1144_));
 sky130_fd_sc_hd__o21ai_0 _5078_ (.A1(_0372_),
    .A2(_1144_),
    .B1(_0129_),
    .Y(_1145_));
 sky130_fd_sc_hd__nand2b_1 _5079_ (.A_N(_0128_),
    .B(_1145_),
    .Y(_1146_));
 sky130_fd_sc_hd__a211oi_1 _5080_ (.A1(_0138_),
    .A2(_0455_),
    .B1(_0415_),
    .C1(_0137_),
    .Y(_1147_));
 sky130_fd_sc_hd__nor2b_1 _5081_ (.A(_0415_),
    .B_N(_0414_),
    .Y(_1148_));
 sky130_fd_sc_hd__nor3_1 _5082_ (.A(_0214_),
    .B(_0149_),
    .C(_0287_),
    .Y(_1149_));
 sky130_fd_sc_hd__o31ai_1 _5083_ (.A1(_0286_),
    .A2(_1147_),
    .A3(_1148_),
    .B1(_1149_),
    .Y(_1150_));
 sky130_fd_sc_hd__or3_1 _5084_ (.A(_0214_),
    .B(_0149_),
    .C(_0150_),
    .X(_1151_));
 sky130_fd_sc_hd__o211ai_1 _5085_ (.A1(_0214_),
    .A2(_1070_),
    .B1(_1150_),
    .C1(_1151_),
    .Y(_1152_));
 sky130_fd_sc_hd__nor2_1 _5086_ (.A(_0102_),
    .B(_0056_),
    .Y(_1153_));
 sky130_fd_sc_hd__o21ba_2 _5087_ (.A1(_0279_),
    .A2(_0280_),
    .B1_N(_0472_),
    .X(_1154_));
 sky130_fd_sc_hd__o31a_1 _5088_ (.A1(_0279_),
    .A2(_0492_),
    .A3(_1153_),
    .B1(_1154_),
    .X(_1155_));
 sky130_fd_sc_hd__or3_1 _5089_ (.A(_0235_),
    .B(_0467_),
    .C(_0473_),
    .X(_1156_));
 sky130_fd_sc_hd__nor2_1 _5090_ (.A(_0235_),
    .B(_0467_),
    .Y(_1157_));
 sky130_fd_sc_hd__nor2_1 _5091_ (.A(_0235_),
    .B(_0236_),
    .Y(_1158_));
 sky130_fd_sc_hd__a21oi_1 _5092_ (.A1(_0466_),
    .A2(_1157_),
    .B1(_1158_),
    .Y(_1159_));
 sky130_fd_sc_hd__nor4_1 _5093_ (.A(_0286_),
    .B(_1065_),
    .C(_1050_),
    .D(_1067_),
    .Y(_1160_));
 sky130_fd_sc_hd__o211ai_1 _5094_ (.A1(_1155_),
    .A2(_1156_),
    .B1(_1159_),
    .C1(_1160_),
    .Y(_1161_));
 sky130_fd_sc_hd__nor2_1 _5095_ (.A(_0286_),
    .B(_1067_),
    .Y(_1162_));
 sky130_fd_sc_hd__nand4_1 _5096_ (.A(_0150_),
    .B(_1070_),
    .C(_1053_),
    .D(_1162_),
    .Y(_1163_));
 sky130_fd_sc_hd__nand3_1 _5097_ (.A(_1152_),
    .B(_1161_),
    .C(_1163_),
    .Y(_1164_));
 sky130_fd_sc_hd__nand2_1 _5098_ (.A(_0141_),
    .B(_0143_),
    .Y(_1165_));
 sky130_fd_sc_hd__a21oi_1 _5099_ (.A1(_0141_),
    .A2(_0350_),
    .B1(_0140_),
    .Y(_1166_));
 sky130_fd_sc_hd__o21ai_0 _5100_ (.A1(_0349_),
    .A2(_1165_),
    .B1(_1166_),
    .Y(_1167_));
 sky130_fd_sc_hd__inv_1 _5101_ (.A(_0205_),
    .Y(_1168_));
 sky130_fd_sc_hd__nand3b_1 _5102_ (.A_N(_1167_),
    .B(_1168_),
    .C(_1062_),
    .Y(_1169_));
 sky130_fd_sc_hd__nor2b_1 _5103_ (.A(_0349_),
    .B_N(_0141_),
    .Y(_1170_));
 sky130_fd_sc_hd__a21oi_1 _5104_ (.A1(_0144_),
    .A2(_1170_),
    .B1(_1167_),
    .Y(_1171_));
 sky130_fd_sc_hd__o211ai_1 _5105_ (.A1(_1058_),
    .A2(_1171_),
    .B1(_1168_),
    .C1(_1062_),
    .Y(_1172_));
 sky130_fd_sc_hd__o221ai_1 _5106_ (.A1(_0206_),
    .A2(_0205_),
    .B1(_1164_),
    .B2(_1169_),
    .C1(_1172_),
    .Y(_1173_));
 sky130_fd_sc_hd__a21oi_1 _5107_ (.A1(_1082_),
    .A2(_0217_),
    .B1(_0112_),
    .Y(_1174_));
 sky130_fd_sc_hd__o21bai_1 _5108_ (.A1(_0201_),
    .A2(_1174_),
    .B1_N(_0202_),
    .Y(_1175_));
 sky130_fd_sc_hd__a21oi_1 _5109_ (.A1(_0231_),
    .A2(_1175_),
    .B1(_0230_),
    .Y(_1176_));
 sky130_fd_sc_hd__o21ai_1 _5110_ (.A1(_1083_),
    .A2(_1173_),
    .B1(_1176_),
    .Y(_1177_));
 sky130_fd_sc_hd__nor2b_1 _5111_ (.A(_0371_),
    .B_N(_0129_),
    .Y(_1178_));
 sky130_fd_sc_hd__and3_1 _5112_ (.A(_0197_),
    .B(_0107_),
    .C(_1178_),
    .X(_1179_));
 sky130_fd_sc_hd__a221o_1 _5113_ (.A1(_0197_),
    .A2(_1146_),
    .B1(_1177_),
    .B2(_1179_),
    .C1(_0196_),
    .X(_1180_));
 sky130_fd_sc_hd__a21o_1 _5114_ (.A1(_1027_),
    .A2(_0115_),
    .B1(_0479_),
    .X(_1181_));
 sky130_fd_sc_hd__a31oi_1 _5115_ (.A1(_0116_),
    .A2(_1027_),
    .A3(_1180_),
    .B1(_1181_),
    .Y(_1182_));
 sky130_fd_sc_hd__xor2_1 _5116_ (.A(_0194_),
    .B(_1182_),
    .X(_1183_));
 sky130_fd_sc_hd__nor2_1 _5120_ (.A(_0270_),
    .B(net694),
    .Y(_1187_));
 sky130_fd_sc_hd__a221oi_1 _5121_ (.A1(_0271_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0272_),
    .C1(_1187_),
    .Y(_1188_));
 sky130_fd_sc_hd__a21oi_1 _5124_ (.A1(_0286_),
    .A2(_0416_),
    .B1(_0288_),
    .Y(_1191_));
 sky130_fd_sc_hd__a21oi_1 _5125_ (.A1(_0327_),
    .A2(_0456_),
    .B1(_0328_),
    .Y(_1192_));
 sky130_fd_sc_hd__nand2_1 _5126_ (.A(_1191_),
    .B(_1192_),
    .Y(_1193_));
 sky130_fd_sc_hd__a21oi_1 _5127_ (.A1(_0377_),
    .A2(_0332_),
    .B1(_0379_),
    .Y(_1194_));
 sky130_fd_sc_hd__a211o_1 _5128_ (.A1(_0102_),
    .A2(_0060_),
    .B1(_0336_),
    .C1(_0493_),
    .X(_1195_));
 sky130_fd_sc_hd__o211a_1 _5129_ (.A1(_0336_),
    .A2(_0335_),
    .B1(_0466_),
    .C1(_0472_),
    .X(_1196_));
 sky130_fd_sc_hd__a21oi_1 _5130_ (.A1(_1195_),
    .A2(_1196_),
    .B1(_1112_),
    .Y(_1197_));
 sky130_fd_sc_hd__o21a_1 _5131_ (.A1(_0332_),
    .A2(_0331_),
    .B1(_0377_),
    .X(_1198_));
 sky130_fd_sc_hd__o211ai_1 _5132_ (.A1(_0379_),
    .A2(_1198_),
    .B1(_0327_),
    .C1(_0454_),
    .Y(_1199_));
 sky130_fd_sc_hd__a21oi_1 _5133_ (.A1(_1194_),
    .A2(_1197_),
    .B1(_1199_),
    .Y(_1200_));
 sky130_fd_sc_hd__and4_1 _5134_ (.A(_0343_),
    .B(_0315_),
    .C(_0349_),
    .D(_0319_),
    .X(_1201_));
 sky130_fd_sc_hd__and2_1 _5135_ (.A(_1128_),
    .B(_1201_),
    .X(_1202_));
 sky130_fd_sc_hd__nor2_1 _5136_ (.A(_0288_),
    .B(_1118_),
    .Y(_1203_));
 sky130_fd_sc_hd__nor2_1 _5137_ (.A(_1104_),
    .B(_1203_),
    .Y(_1204_));
 sky130_fd_sc_hd__o211ai_1 _5138_ (.A1(_1193_),
    .A2(_1200_),
    .B1(_1202_),
    .C1(_1204_),
    .Y(_1205_));
 sky130_fd_sc_hd__a21o_1 _5139_ (.A1(_0213_),
    .A2(_0324_),
    .B1(_0215_),
    .X(_1206_));
 sky130_fd_sc_hd__nand2_1 _5140_ (.A(_0343_),
    .B(_0315_),
    .Y(_1207_));
 sky130_fd_sc_hd__a21oi_1 _5141_ (.A1(_0349_),
    .A2(_0320_),
    .B1(_0351_),
    .Y(_1208_));
 sky130_fd_sc_hd__a21oi_1 _5142_ (.A1(_0343_),
    .A2(_0316_),
    .B1(_0345_),
    .Y(_1209_));
 sky130_fd_sc_hd__o21ai_0 _5143_ (.A1(_1207_),
    .A2(_1208_),
    .B1(_1209_),
    .Y(_1210_));
 sky130_fd_sc_hd__nand2_1 _5144_ (.A(_0111_),
    .B(_0311_),
    .Y(_1211_));
 sky130_fd_sc_hd__a21oi_1 _5145_ (.A1(_0248_),
    .A2(_0253_),
    .B1(_0249_),
    .Y(_1212_));
 sky130_fd_sc_hd__a21oi_1 _5146_ (.A1(_0111_),
    .A2(_0312_),
    .B1(_0113_),
    .Y(_1213_));
 sky130_fd_sc_hd__o21ai_0 _5147_ (.A1(_1211_),
    .A2(_1212_),
    .B1(_1213_),
    .Y(_1214_));
 sky130_fd_sc_hd__a221oi_1 _5148_ (.A1(_1202_),
    .A2(_1206_),
    .B1(_1210_),
    .B2(_1128_),
    .C1(_1214_),
    .Y(_1215_));
 sky130_fd_sc_hd__nor3b_1 _5149_ (.A(_0308_),
    .B(_0203_),
    .C_N(_1215_),
    .Y(_1216_));
 sky130_fd_sc_hd__o21a_1 _5150_ (.A1(_0203_),
    .A2(_0201_),
    .B1(_0307_),
    .X(_1217_));
 sky130_fd_sc_hd__nor2_1 _5151_ (.A(_0308_),
    .B(_1217_),
    .Y(_1218_));
 sky130_fd_sc_hd__a21oi_1 _5152_ (.A1(_1205_),
    .A2(_1216_),
    .B1(_1218_),
    .Y(_1219_));
 sky130_fd_sc_hd__and2_1 _5153_ (.A(_0303_),
    .B(_0256_),
    .X(_1220_));
 sky130_fd_sc_hd__a21oi_1 _5154_ (.A1(_0371_),
    .A2(_0126_),
    .B1(_0373_),
    .Y(_1221_));
 sky130_fd_sc_hd__nor2b_1 _5155_ (.A(_1221_),
    .B_N(_1220_),
    .Y(_1222_));
 sky130_fd_sc_hd__a41oi_1 _5156_ (.A1(_0371_),
    .A2(_0125_),
    .A3(_1219_),
    .A4(_1220_),
    .B1(_1222_),
    .Y(_1223_));
 sky130_fd_sc_hd__nand2_1 _5157_ (.A(_0303_),
    .B(_0257_),
    .Y(_1224_));
 sky130_fd_sc_hd__nand2b_1 _5158_ (.A_N(_0304_),
    .B(_1224_),
    .Y(_1225_));
 sky130_fd_sc_hd__nor3_1 _5159_ (.A(_0480_),
    .B(_0300_),
    .C(_1225_),
    .Y(_1226_));
 sky130_fd_sc_hd__nor3_1 _5160_ (.A(_0480_),
    .B(_0300_),
    .C(_0299_),
    .Y(_1227_));
 sky130_fd_sc_hd__nor2_1 _5161_ (.A(_0480_),
    .B(_0478_),
    .Y(_1228_));
 sky130_fd_sc_hd__a211o_1 _5162_ (.A1(_1223_),
    .A2(_1226_),
    .B1(_1227_),
    .C1(_1228_),
    .X(_1229_));
 sky130_fd_sc_hd__xnor2_1 _5163_ (.A(_0271_),
    .B(_1229_),
    .Y(_1230_));
 sky130_fd_sc_hd__o21ai_0 _5165_ (.A1(net739),
    .A2(_1230_),
    .B1(net679),
    .Y(_1232_));
 sky130_fd_sc_hd__a22oi_1 _5166_ (.A1(_1100_),
    .A2(_1183_),
    .B1(_1188_),
    .B2(_1232_),
    .Y(\alu_out[29] ));
 sky130_fd_sc_hd__a211oi_1 _5168_ (.A1(_0299_),
    .A2(_1225_),
    .B1(net739),
    .C1(_0300_),
    .Y(_1234_));
 sky130_fd_sc_hd__nand4b_1 _5169_ (.A_N(_1138_),
    .B(_1220_),
    .C(_0299_),
    .D(_0371_),
    .Y(_1235_));
 sky130_fd_sc_hd__nand3_1 _5170_ (.A(_0299_),
    .B(_0373_),
    .C(_1220_),
    .Y(_1236_));
 sky130_fd_sc_hd__a21o_1 _5171_ (.A1(_0197_),
    .A2(_1095_),
    .B1(_0196_),
    .X(_1237_));
 sky130_fd_sc_hd__a21o_1 _5172_ (.A1(_0116_),
    .A2(_1237_),
    .B1(_0115_),
    .X(_1238_));
 sky130_fd_sc_hd__a41o_1 _5173_ (.A1(_0116_),
    .A2(_0197_),
    .A3(_1178_),
    .A4(_1091_),
    .B1(_1238_),
    .X(_1239_));
 sky130_fd_sc_hd__a32oi_1 _5175_ (.A1(_1234_),
    .A2(_1235_),
    .A3(_1236_),
    .B1(_1239_),
    .B2(net739),
    .Y(_1241_));
 sky130_fd_sc_hd__xnor2_1 _5176_ (.A(_0478_),
    .B(_1241_),
    .Y(_1242_));
 sky130_fd_sc_hd__nor2_1 _5178_ (.A(_0477_),
    .B(net694),
    .Y(_1244_));
 sky130_fd_sc_hd__a221oi_1 _5179_ (.A1(_0478_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0480_),
    .C1(_1244_),
    .Y(_1245_));
 sky130_fd_sc_hd__o21ai_0 _5180_ (.A1(net675),
    .A2(_1242_),
    .B1(_1245_),
    .Y(\alu_out[28] ));
 sky130_fd_sc_hd__nor2_1 _5181_ (.A(_0298_),
    .B(net694),
    .Y(_1246_));
 sky130_fd_sc_hd__a221o_1 _5182_ (.A1(_0299_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0300_),
    .C1(_1246_),
    .X(_1247_));
 sky130_fd_sc_hd__xnor2_1 _5183_ (.A(_0116_),
    .B(_1180_),
    .Y(_1248_));
 sky130_fd_sc_hd__a21oi_1 _5185_ (.A1(net739),
    .A2(_1248_),
    .B1(net675),
    .Y(_1250_));
 sky130_fd_sc_hd__nand2b_1 _5186_ (.A_N(_1225_),
    .B(_1223_),
    .Y(_1251_));
 sky130_fd_sc_hd__xnor2_1 _5187_ (.A(_0299_),
    .B(_1251_),
    .Y(_1252_));
 sky130_fd_sc_hd__nor2_1 _5189_ (.A(net739),
    .B(net675),
    .Y(_1254_));
 sky130_fd_sc_hd__a2bb2oi_1 _5190_ (.A1_N(_1247_),
    .A2_N(_1250_),
    .B1(_1252_),
    .B2(_1254_),
    .Y(\alu_out[27] ));
 sky130_fd_sc_hd__xnor2_1 _5191_ (.A(_0303_),
    .B(_1141_),
    .Y(_1255_));
 sky130_fd_sc_hd__a21oi_1 _5192_ (.A1(_1178_),
    .A2(_1091_),
    .B1(_1095_),
    .Y(_1256_));
 sky130_fd_sc_hd__xor2_1 _5193_ (.A(_0197_),
    .B(_1256_),
    .X(_1257_));
 sky130_fd_sc_hd__nand2_1 _5194_ (.A(_0304_),
    .B(_1016_),
    .Y(_1258_));
 sky130_fd_sc_hd__o21ai_0 _5195_ (.A1(_0302_),
    .A2(net694),
    .B1(_1258_),
    .Y(_1259_));
 sky130_fd_sc_hd__a211oi_1 _5196_ (.A1(_0303_),
    .A2(_1013_),
    .B1(net679),
    .C1(_1259_),
    .Y(_1260_));
 sky130_fd_sc_hd__a221oi_1 _5197_ (.A1(_1254_),
    .A2(_1255_),
    .B1(_1257_),
    .B2(_1100_),
    .C1(_1260_),
    .Y(\alu_out[26] ));
 sky130_fd_sc_hd__nor2_1 _5198_ (.A(_0255_),
    .B(net694),
    .Y(_1261_));
 sky130_fd_sc_hd__a221oi_1 _5199_ (.A1(_0256_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0257_),
    .C1(_1261_),
    .Y(_1262_));
 sky130_fd_sc_hd__a311oi_1 _5201_ (.A1(_0107_),
    .A2(_1036_),
    .A3(_1177_),
    .B1(_1144_),
    .C1(_0372_),
    .Y(_1264_));
 sky130_fd_sc_hd__xnor2_1 _5202_ (.A(_0129_),
    .B(_1264_),
    .Y(_1265_));
 sky130_fd_sc_hd__inv_1 _5203_ (.A(_1221_),
    .Y(_1266_));
 sky130_fd_sc_hd__a31oi_1 _5204_ (.A1(_0371_),
    .A2(_0125_),
    .A3(_1219_),
    .B1(_1266_),
    .Y(_1267_));
 sky130_fd_sc_hd__xor2_1 _5205_ (.A(_0256_),
    .B(_1267_),
    .X(_1268_));
 sky130_fd_sc_hd__nor2_1 _5206_ (.A(net739),
    .B(_1268_),
    .Y(_1269_));
 sky130_fd_sc_hd__a211oi_1 _5207_ (.A1(net739),
    .A2(_1265_),
    .B1(_1269_),
    .C1(net675),
    .Y(_1270_));
 sky130_fd_sc_hd__a21oi_1 _5208_ (.A1(net675),
    .A2(_1262_),
    .B1(_1270_),
    .Y(\alu_out[25] ));
 sky130_fd_sc_hd__mux2i_1 _5209_ (.A0(_1138_),
    .A1(_1091_),
    .S(net739),
    .Y(_1271_));
 sky130_fd_sc_hd__xnor2_1 _5210_ (.A(_0371_),
    .B(_1271_),
    .Y(_1272_));
 sky130_fd_sc_hd__nor2_1 _5213_ (.A(_0370_),
    .B(net694),
    .Y(_1275_));
 sky130_fd_sc_hd__a221oi_1 _5214_ (.A1(_0371_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0373_),
    .C1(_1275_),
    .Y(_1276_));
 sky130_fd_sc_hd__o21ai_0 _5215_ (.A1(net675),
    .A2(_1272_),
    .B1(_1276_),
    .Y(\alu_out[24] ));
 sky130_fd_sc_hd__xor2_1 _5216_ (.A(_0107_),
    .B(_1177_),
    .X(_1277_));
 sky130_fd_sc_hd__xnor2_1 _5217_ (.A(_0125_),
    .B(_1219_),
    .Y(_1278_));
 sky130_fd_sc_hd__nor2_1 _5218_ (.A(net739),
    .B(_1278_),
    .Y(_1279_));
 sky130_fd_sc_hd__a21oi_1 _5219_ (.A1(net739),
    .A2(_1277_),
    .B1(_1279_),
    .Y(_1280_));
 sky130_fd_sc_hd__nor2_1 _5220_ (.A(_0124_),
    .B(net694),
    .Y(_1281_));
 sky130_fd_sc_hd__a221oi_1 _5221_ (.A1(_0125_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0126_),
    .C1(_1281_),
    .Y(_1282_));
 sky130_fd_sc_hd__o21ai_0 _5222_ (.A1(net675),
    .A2(_1280_),
    .B1(_1282_),
    .Y(\alu_out[23] ));
 sky130_fd_sc_hd__a21o_1 _5223_ (.A1(_0206_),
    .A2(net609),
    .B1(_0205_),
    .X(_1283_));
 sky130_fd_sc_hd__a21oi_1 _5224_ (.A1(_0218_),
    .A2(_1283_),
    .B1(_0217_),
    .Y(_1284_));
 sky130_fd_sc_hd__or2_2 _5225_ (.A(_0111_),
    .B(_1284_),
    .X(_1285_));
 sky130_fd_sc_hd__nand2b_1 _5226_ (.A_N(_0231_),
    .B(net739),
    .Y(_1286_));
 sky130_fd_sc_hd__o21ai_0 _5227_ (.A1(_0202_),
    .A2(_1081_),
    .B1(_0231_),
    .Y(_1287_));
 sky130_fd_sc_hd__o211ai_1 _5228_ (.A1(_0231_),
    .A2(_1086_),
    .B1(_1287_),
    .C1(net739),
    .Y(_1288_));
 sky130_fd_sc_hd__nor2_1 _5229_ (.A(_0202_),
    .B(_0112_),
    .Y(_1289_));
 sky130_fd_sc_hd__o2111ai_1 _5230_ (.A1(_0111_),
    .A2(_1284_),
    .B1(_1289_),
    .C1(_0231_),
    .D1(net739),
    .Y(_1290_));
 sky130_fd_sc_hd__o311ai_1 _5231_ (.A1(_0201_),
    .A2(_1285_),
    .A3(_1286_),
    .B1(_1288_),
    .C1(_1290_),
    .Y(_1291_));
 sky130_fd_sc_hd__nand2b_1 _5232_ (.A_N(_1134_),
    .B(_1129_),
    .Y(_1292_));
 sky130_fd_sc_hd__xnor2_1 _5233_ (.A(_0307_),
    .B(_1292_),
    .Y(_1293_));
 sky130_fd_sc_hd__o21ai_0 _5234_ (.A1(net739),
    .A2(_1293_),
    .B1(net679),
    .Y(_1294_));
 sky130_fd_sc_hd__nor2_1 _5235_ (.A(_0306_),
    .B(net694),
    .Y(_1295_));
 sky130_fd_sc_hd__a221oi_1 _5236_ (.A1(_0307_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0308_),
    .C1(_1295_),
    .Y(_1296_));
 sky130_fd_sc_hd__a2bb2oi_1 _5237_ (.A1_N(_1291_),
    .A2_N(_1294_),
    .B1(_1296_),
    .B2(net675),
    .Y(\alu_out[22] ));
 sky130_fd_sc_hd__inv_1 _5238_ (.A(_0112_),
    .Y(_1297_));
 sky130_fd_sc_hd__nor2b_1 _5239_ (.A(_1173_),
    .B_N(_0218_),
    .Y(_1298_));
 sky130_fd_sc_hd__o21ai_0 _5240_ (.A1(_0217_),
    .A2(_1298_),
    .B1(_1082_),
    .Y(_1299_));
 sky130_fd_sc_hd__a21oi_1 _5241_ (.A1(_1205_),
    .A2(_1215_),
    .B1(net739),
    .Y(_1300_));
 sky130_fd_sc_hd__a31oi_1 _5242_ (.A1(net739),
    .A2(_1297_),
    .A3(_1299_),
    .B1(_1300_),
    .Y(_1301_));
 sky130_fd_sc_hd__xnor2_1 _5243_ (.A(_1081_),
    .B(_1301_),
    .Y(_1302_));
 sky130_fd_sc_hd__nor2_1 _5244_ (.A(_0200_),
    .B(net694),
    .Y(_1303_));
 sky130_fd_sc_hd__a221oi_1 _5245_ (.A1(_0201_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0203_),
    .C1(_1303_),
    .Y(_1304_));
 sky130_fd_sc_hd__o21ai_0 _5246_ (.A1(net675),
    .A2(_1302_),
    .B1(_1304_),
    .Y(\alu_out[21] ));
 sky130_fd_sc_hd__nand4_1 _5247_ (.A(_0311_),
    .B(_0248_),
    .C(_0252_),
    .D(_0343_),
    .Y(_1305_));
 sky130_fd_sc_hd__o21ai_0 _5248_ (.A1(_1126_),
    .A2(_1305_),
    .B1(_1132_),
    .Y(_1306_));
 sky130_fd_sc_hd__mux2i_1 _5249_ (.A0(_1306_),
    .A1(_1284_),
    .S(net739),
    .Y(_1307_));
 sky130_fd_sc_hd__xnor2_1 _5250_ (.A(_1082_),
    .B(_1307_),
    .Y(_1308_));
 sky130_fd_sc_hd__nor2_1 _5251_ (.A(_0110_),
    .B(net694),
    .Y(_1309_));
 sky130_fd_sc_hd__a221oi_1 _5252_ (.A1(_0111_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0113_),
    .C1(_1309_),
    .Y(_1310_));
 sky130_fd_sc_hd__o21ai_0 _5253_ (.A1(net675),
    .A2(_1308_),
    .B1(_1310_),
    .Y(\alu_out[20] ));
 sky130_fd_sc_hd__nand2_1 _5254_ (.A(_0248_),
    .B(_0252_),
    .Y(_1311_));
 sky130_fd_sc_hd__o21ai_0 _5255_ (.A1(_1193_),
    .A2(_1200_),
    .B1(_1204_),
    .Y(_1312_));
 sky130_fd_sc_hd__nand2b_1 _5256_ (.A_N(_1206_),
    .B(_1312_),
    .Y(_1313_));
 sky130_fd_sc_hd__a21oi_1 _5257_ (.A1(_1201_),
    .A2(_1313_),
    .B1(_1210_),
    .Y(_1314_));
 sky130_fd_sc_hd__o21ai_0 _5258_ (.A1(_1311_),
    .A2(_1314_),
    .B1(_1212_),
    .Y(_1315_));
 sky130_fd_sc_hd__xor2_1 _5259_ (.A(_0311_),
    .B(_1315_),
    .X(_1316_));
 sky130_fd_sc_hd__nor2b_1 _5260_ (.A(_0218_),
    .B_N(_1173_),
    .Y(_1317_));
 sky130_fd_sc_hd__o21ai_0 _5261_ (.A1(_1298_),
    .A2(_1317_),
    .B1(net739),
    .Y(_1318_));
 sky130_fd_sc_hd__o21ai_0 _5262_ (.A1(net739),
    .A2(_1316_),
    .B1(_1318_),
    .Y(_1319_));
 sky130_fd_sc_hd__nand2_1 _5263_ (.A(_0312_),
    .B(_1016_),
    .Y(_1320_));
 sky130_fd_sc_hd__o21ai_0 _5264_ (.A1(_0310_),
    .A2(net694),
    .B1(_1320_),
    .Y(_1321_));
 sky130_fd_sc_hd__a211oi_1 _5265_ (.A1(_0311_),
    .A2(_1013_),
    .B1(net679),
    .C1(_1321_),
    .Y(_1322_));
 sky130_fd_sc_hd__a21oi_1 _5266_ (.A1(net679),
    .A2(_1319_),
    .B1(_1322_),
    .Y(\alu_out[19] ));
 sky130_fd_sc_hd__nor2_1 _5267_ (.A(_0247_),
    .B(net694),
    .Y(_1323_));
 sky130_fd_sc_hd__a221oi_1 _5268_ (.A1(_0248_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0249_),
    .C1(_1323_),
    .Y(_1324_));
 sky130_fd_sc_hd__nand2_1 _5269_ (.A(_0252_),
    .B(_0343_),
    .Y(_1325_));
 sky130_fd_sc_hd__o21bai_1 _5270_ (.A1(_1126_),
    .A2(_1325_),
    .B1_N(_1130_),
    .Y(_1326_));
 sky130_fd_sc_hd__xor2_1 _5271_ (.A(_0248_),
    .B(_1326_),
    .X(_1327_));
 sky130_fd_sc_hd__xnor2_1 _5272_ (.A(_0206_),
    .B(net609),
    .Y(_1328_));
 sky130_fd_sc_hd__a21oi_1 _5273_ (.A1(net739),
    .A2(_1328_),
    .B1(net675),
    .Y(_1329_));
 sky130_fd_sc_hd__o21ai_0 _5274_ (.A1(net739),
    .A2(_1327_),
    .B1(_1329_),
    .Y(_1330_));
 sky130_fd_sc_hd__nand2_1 _5275_ (.A(_1324_),
    .B(_1330_),
    .Y(\alu_out[18] ));
 sky130_fd_sc_hd__nor2_1 _5276_ (.A(_0251_),
    .B(net694),
    .Y(_1331_));
 sky130_fd_sc_hd__a221oi_1 _5277_ (.A1(_0252_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0253_),
    .C1(_1331_),
    .Y(_1332_));
 sky130_fd_sc_hd__a31oi_1 _5278_ (.A1(_0144_),
    .A2(_1170_),
    .A3(_1164_),
    .B1(_1167_),
    .Y(_1333_));
 sky130_fd_sc_hd__nor2_1 _5279_ (.A(_0343_),
    .B(_1333_),
    .Y(_1334_));
 sky130_fd_sc_hd__nor2_1 _5280_ (.A(_0344_),
    .B(_1334_),
    .Y(_1335_));
 sky130_fd_sc_hd__xnor2_1 _5281_ (.A(_0209_),
    .B(_1335_),
    .Y(_1336_));
 sky130_fd_sc_hd__xor2_1 _5282_ (.A(_0252_),
    .B(_1314_),
    .X(_1337_));
 sky130_fd_sc_hd__o21ai_0 _5283_ (.A1(net739),
    .A2(_1337_),
    .B1(net679),
    .Y(_1338_));
 sky130_fd_sc_hd__a21oi_1 _5284_ (.A1(net739),
    .A2(_1336_),
    .B1(_1338_),
    .Y(_1339_));
 sky130_fd_sc_hd__a21oi_1 _5285_ (.A1(net675),
    .A2(_1332_),
    .B1(_1339_),
    .Y(\alu_out[17] ));
 sky130_fd_sc_hd__inv_1 _5286_ (.A(_0287_),
    .Y(_1340_));
 sky130_fd_sc_hd__o21ai_0 _5287_ (.A1(_0286_),
    .A2(_1076_),
    .B1(_1340_),
    .Y(_1341_));
 sky130_fd_sc_hd__a21oi_1 _5288_ (.A1(_0150_),
    .A2(_1341_),
    .B1(_0149_),
    .Y(_1342_));
 sky130_fd_sc_hd__nor2_1 _5289_ (.A(_0213_),
    .B(_1342_),
    .Y(_1343_));
 sky130_fd_sc_hd__o21a_1 _5290_ (.A1(_0214_),
    .A2(_1343_),
    .B1(_0144_),
    .X(_1344_));
 sky130_fd_sc_hd__o311ai_0 _5291_ (.A1(_0350_),
    .A2(_0143_),
    .A3(_1344_),
    .B1(_1060_),
    .C1(_0141_),
    .Y(_1345_));
 sky130_fd_sc_hd__o21bai_1 _5292_ (.A1(_1045_),
    .A2(_1051_),
    .B1_N(_1055_),
    .Y(_1346_));
 sky130_fd_sc_hd__nor3b_1 _5293_ (.A(_1066_),
    .B(_1067_),
    .C_N(_1170_),
    .Y(_1347_));
 sky130_fd_sc_hd__a21oi_1 _5294_ (.A1(_1346_),
    .A2(_1347_),
    .B1(_0140_),
    .Y(_1348_));
 sky130_fd_sc_hd__nor2_1 _5295_ (.A(net739),
    .B(_1126_),
    .Y(_1349_));
 sky130_fd_sc_hd__a31oi_1 _5296_ (.A1(net739),
    .A2(_1345_),
    .A3(_1348_),
    .B1(_1349_),
    .Y(_1350_));
 sky130_fd_sc_hd__xor2_1 _5297_ (.A(_0343_),
    .B(_1350_),
    .X(_1351_));
 sky130_fd_sc_hd__nor2_1 _5298_ (.A(_0342_),
    .B(net694),
    .Y(_1352_));
 sky130_fd_sc_hd__a221oi_1 _5299_ (.A1(_0343_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0345_),
    .C1(_1352_),
    .Y(_1353_));
 sky130_fd_sc_hd__o21ai_0 _5300_ (.A1(net675),
    .A2(_1351_),
    .B1(_1353_),
    .Y(\alu_out[16] ));
 sky130_fd_sc_hd__a21o_1 _5301_ (.A1(_0319_),
    .A2(_1313_),
    .B1(_0320_),
    .X(_1354_));
 sky130_fd_sc_hd__a21oi_1 _5302_ (.A1(_0349_),
    .A2(_1354_),
    .B1(_0351_),
    .Y(_1355_));
 sky130_fd_sc_hd__xnor2_1 _5303_ (.A(_0315_),
    .B(_1355_),
    .Y(_1356_));
 sky130_fd_sc_hd__a21oi_1 _5304_ (.A1(_0144_),
    .A2(_1164_),
    .B1(_0143_),
    .Y(_1357_));
 sky130_fd_sc_hd__o21bai_1 _5305_ (.A1(_0349_),
    .A2(_1357_),
    .B1_N(_0350_),
    .Y(_1358_));
 sky130_fd_sc_hd__xnor2_1 _5306_ (.A(_0141_),
    .B(_1358_),
    .Y(_1359_));
 sky130_fd_sc_hd__nand2_1 _5307_ (.A(net739),
    .B(_1359_),
    .Y(_1360_));
 sky130_fd_sc_hd__o21ai_0 _5308_ (.A1(net739),
    .A2(_1356_),
    .B1(_1360_),
    .Y(_1361_));
 sky130_fd_sc_hd__nand2_1 _5309_ (.A(_0316_),
    .B(_1016_),
    .Y(_1362_));
 sky130_fd_sc_hd__o21ai_0 _5310_ (.A1(_0314_),
    .A2(net694),
    .B1(_1362_),
    .Y(_1363_));
 sky130_fd_sc_hd__a211oi_1 _5311_ (.A1(_0315_),
    .A2(_1013_),
    .B1(net679),
    .C1(_1363_),
    .Y(_1364_));
 sky130_fd_sc_hd__a21oi_1 _5312_ (.A1(net679),
    .A2(_1361_),
    .B1(_1364_),
    .Y(\alu_out[15] ));
 sky130_fd_sc_hd__nand2_1 _5313_ (.A(_0319_),
    .B(_0213_),
    .Y(_1365_));
 sky130_fd_sc_hd__a21o_1 _5314_ (.A1(_1116_),
    .A2(_1118_),
    .B1(_0288_),
    .X(_1366_));
 sky130_fd_sc_hd__a21oi_1 _5315_ (.A1(_0323_),
    .A2(_1366_),
    .B1(_0324_),
    .Y(_1367_));
 sky130_fd_sc_hd__nor3_1 _5316_ (.A(net739),
    .B(_1365_),
    .C(_1367_),
    .Y(_1368_));
 sky130_fd_sc_hd__inv_1 _5317_ (.A(_0286_),
    .Y(_1369_));
 sky130_fd_sc_hd__o21ai_0 _5318_ (.A1(_1056_),
    .A2(_1067_),
    .B1(_1076_),
    .Y(_1370_));
 sky130_fd_sc_hd__a31o_2 _5319_ (.A1(_0150_),
    .A2(_1369_),
    .A3(_1370_),
    .B1(_1071_),
    .X(_1371_));
 sky130_fd_sc_hd__nand2b_1 _5320_ (.A_N(_0143_),
    .B(net739),
    .Y(_1372_));
 sky130_fd_sc_hd__a211oi_1 _5321_ (.A1(_1070_),
    .A2(_1371_),
    .B1(_1372_),
    .C1(_0214_),
    .Y(_1373_));
 sky130_fd_sc_hd__o22ai_1 _5322_ (.A1(net739),
    .A2(_1120_),
    .B1(_1372_),
    .B2(_0144_),
    .Y(_1374_));
 sky130_fd_sc_hd__nor3_1 _5323_ (.A(_1368_),
    .B(_1373_),
    .C(_1374_),
    .Y(_1375_));
 sky130_fd_sc_hd__xnor2_1 _5324_ (.A(_1119_),
    .B(_1375_),
    .Y(_1376_));
 sky130_fd_sc_hd__nor2_1 _5325_ (.A(_0348_),
    .B(net694),
    .Y(_1377_));
 sky130_fd_sc_hd__a221oi_1 _5326_ (.A1(_0349_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0351_),
    .C1(_1377_),
    .Y(_1378_));
 sky130_fd_sc_hd__o21ai_0 _5327_ (.A1(net675),
    .A2(_1376_),
    .B1(_1378_),
    .Y(\alu_out[14] ));
 sky130_fd_sc_hd__nor2_1 _5328_ (.A(_0318_),
    .B(net694),
    .Y(_1379_));
 sky130_fd_sc_hd__a221oi_1 _5329_ (.A1(_0319_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0320_),
    .C1(_1379_),
    .Y(_1380_));
 sky130_fd_sc_hd__xnor2_1 _5330_ (.A(_1064_),
    .B(_1164_),
    .Y(_1381_));
 sky130_fd_sc_hd__xnor2_1 _5331_ (.A(_0319_),
    .B(_1313_),
    .Y(_1382_));
 sky130_fd_sc_hd__nor2_1 _5332_ (.A(net739),
    .B(_1382_),
    .Y(_1383_));
 sky130_fd_sc_hd__a211oi_1 _5333_ (.A1(net739),
    .A2(_1381_),
    .B1(_1383_),
    .C1(net675),
    .Y(_1384_));
 sky130_fd_sc_hd__a21oi_1 _5334_ (.A1(net675),
    .A2(_1380_),
    .B1(_1384_),
    .Y(\alu_out[13] ));
 sky130_fd_sc_hd__mux2_2 _5335_ (.A0(_1367_),
    .A1(_1371_),
    .S(net739),
    .X(_1385_));
 sky130_fd_sc_hd__a21oi_1 _5336_ (.A1(net679),
    .A2(_1385_),
    .B1(_1013_),
    .Y(_1386_));
 sky130_fd_sc_hd__or3_1 _5337_ (.A(_0213_),
    .B(net675),
    .C(_1385_),
    .X(_1387_));
 sky130_fd_sc_hd__nor2_1 _5338_ (.A(_0212_),
    .B(net694),
    .Y(_1388_));
 sky130_fd_sc_hd__a21oi_1 _5339_ (.A1(_0215_),
    .A2(_1016_),
    .B1(_1388_),
    .Y(_1389_));
 sky130_fd_sc_hd__o211ai_1 _5340_ (.A1(_1070_),
    .A2(_1386_),
    .B1(_1387_),
    .C1(_1389_),
    .Y(\alu_out[12] ));
 sky130_fd_sc_hd__nor2_1 _5341_ (.A(_0322_),
    .B(net694),
    .Y(_1390_));
 sky130_fd_sc_hd__a221oi_1 _5342_ (.A1(_0323_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0324_),
    .C1(_1390_),
    .Y(_1391_));
 sky130_fd_sc_hd__inv_1 _5343_ (.A(_0378_),
    .Y(_1392_));
 sky130_fd_sc_hd__inv_1 _5344_ (.A(_0377_),
    .Y(_1393_));
 sky130_fd_sc_hd__o211ai_1 _5345_ (.A1(_1155_),
    .A2(_1156_),
    .B1(_1159_),
    .C1(_1393_),
    .Y(_1394_));
 sky130_fd_sc_hd__a21oi_1 _5346_ (.A1(_1392_),
    .A2(_1394_),
    .B1(_0454_),
    .Y(_1395_));
 sky130_fd_sc_hd__o31ai_1 _5347_ (.A1(_0286_),
    .A2(_1147_),
    .A3(_1148_),
    .B1(_1340_),
    .Y(_1396_));
 sky130_fd_sc_hd__a21oi_1 _5348_ (.A1(_1162_),
    .A2(_1395_),
    .B1(_1396_),
    .Y(_1397_));
 sky130_fd_sc_hd__xnor2_1 _5349_ (.A(_0150_),
    .B(_1397_),
    .Y(_1398_));
 sky130_fd_sc_hd__nand2b_1 _5350_ (.A_N(_1200_),
    .B(_1192_),
    .Y(_1399_));
 sky130_fd_sc_hd__a21o_1 _5351_ (.A1(_0414_),
    .A2(_1399_),
    .B1(_0416_),
    .X(_1400_));
 sky130_fd_sc_hd__a21oi_1 _5352_ (.A1(_0286_),
    .A2(_1400_),
    .B1(_0288_),
    .Y(_1401_));
 sky130_fd_sc_hd__xor2_1 _5353_ (.A(_0323_),
    .B(_1401_),
    .X(_1402_));
 sky130_fd_sc_hd__nor2_1 _5354_ (.A(net739),
    .B(_1402_),
    .Y(_1403_));
 sky130_fd_sc_hd__a211oi_1 _5355_ (.A1(net739),
    .A2(_1398_),
    .B1(_1403_),
    .C1(net675),
    .Y(_1404_));
 sky130_fd_sc_hd__a21oi_1 _5356_ (.A1(net675),
    .A2(_1391_),
    .B1(_1404_),
    .Y(\alu_out[11] ));
 sky130_fd_sc_hd__o22ai_1 _5357_ (.A1(_1108_),
    .A2(_1110_),
    .B1(_1113_),
    .B2(_1114_),
    .Y(_1405_));
 sky130_fd_sc_hd__nor2_1 _5358_ (.A(_0328_),
    .B(_1405_),
    .Y(_1406_));
 sky130_fd_sc_hd__nor2_1 _5359_ (.A(_1075_),
    .B(_1406_),
    .Y(_1407_));
 sky130_fd_sc_hd__nor3_1 _5360_ (.A(net739),
    .B(_0416_),
    .C(_1407_),
    .Y(_1408_));
 sky130_fd_sc_hd__a21oi_1 _5361_ (.A1(net739),
    .A2(_1370_),
    .B1(_1408_),
    .Y(_1409_));
 sky130_fd_sc_hd__xnor2_1 _5362_ (.A(_0286_),
    .B(_1409_),
    .Y(_1410_));
 sky130_fd_sc_hd__nor2_1 _5363_ (.A(_0285_),
    .B(net694),
    .Y(_1411_));
 sky130_fd_sc_hd__a221oi_1 _5364_ (.A1(_0286_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0288_),
    .C1(_1411_),
    .Y(_1412_));
 sky130_fd_sc_hd__o21ai_0 _5365_ (.A1(net675),
    .A2(_1410_),
    .B1(_1412_),
    .Y(\alu_out[10] ));
 sky130_fd_sc_hd__o21a_1 _5366_ (.A1(_0455_),
    .A2(_1395_),
    .B1(_0138_),
    .X(_1413_));
 sky130_fd_sc_hd__o21ai_0 _5367_ (.A1(_0137_),
    .A2(_1413_),
    .B1(net739),
    .Y(_1414_));
 sky130_fd_sc_hd__o21ai_0 _5368_ (.A1(net739),
    .A2(_1399_),
    .B1(_1414_),
    .Y(_1415_));
 sky130_fd_sc_hd__nor2_1 _5369_ (.A(_1075_),
    .B(net675),
    .Y(_1416_));
 sky130_fd_sc_hd__nor3_1 _5370_ (.A(_0414_),
    .B(net675),
    .C(_1415_),
    .Y(_1417_));
 sky130_fd_sc_hd__a21oi_1 _5371_ (.A1(_1415_),
    .A2(_1416_),
    .B1(_1417_),
    .Y(_1418_));
 sky130_fd_sc_hd__nand2_1 _5372_ (.A(_0414_),
    .B(_1013_),
    .Y(_1419_));
 sky130_fd_sc_hd__nor2_1 _5373_ (.A(_0413_),
    .B(net694),
    .Y(_1420_));
 sky130_fd_sc_hd__a21oi_1 _5374_ (.A1(_0416_),
    .A2(_1016_),
    .B1(_1420_),
    .Y(_1421_));
 sky130_fd_sc_hd__nand3_1 _5375_ (.A(_1418_),
    .B(_1419_),
    .C(_1421_),
    .Y(\alu_out[9] ));
 sky130_fd_sc_hd__nor2_1 _5376_ (.A(_0326_),
    .B(net694),
    .Y(_1422_));
 sky130_fd_sc_hd__a221oi_1 _5377_ (.A1(_0327_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0328_),
    .C1(_1422_),
    .Y(_1423_));
 sky130_fd_sc_hd__inv_1 _5378_ (.A(_1113_),
    .Y(_1424_));
 sky130_fd_sc_hd__a21oi_1 _5379_ (.A1(_0331_),
    .A2(_1424_),
    .B1(_0332_),
    .Y(_1425_));
 sky130_fd_sc_hd__o21bai_1 _5380_ (.A1(_1393_),
    .A2(_1425_),
    .B1_N(_0379_),
    .Y(_1426_));
 sky130_fd_sc_hd__a211oi_1 _5381_ (.A1(_0454_),
    .A2(_1426_),
    .B1(_0327_),
    .C1(_0456_),
    .Y(_1427_));
 sky130_fd_sc_hd__xnor2_1 _5382_ (.A(_0138_),
    .B(_1056_),
    .Y(_1428_));
 sky130_fd_sc_hd__nand2_1 _5383_ (.A(net739),
    .B(_1428_),
    .Y(_1429_));
 sky130_fd_sc_hd__o311a_1 _5384_ (.A1(net739),
    .A2(_1405_),
    .A3(_1427_),
    .B1(_1429_),
    .C1(net679),
    .X(_1430_));
 sky130_fd_sc_hd__a21oi_1 _5385_ (.A1(net675),
    .A2(_1423_),
    .B1(_1430_),
    .Y(\alu_out[8] ));
 sky130_fd_sc_hd__nand2_1 _5386_ (.A(_0377_),
    .B(_0331_),
    .Y(_1431_));
 sky130_fd_sc_hd__o21ai_0 _5387_ (.A1(_1431_),
    .A2(_1197_),
    .B1(_1194_),
    .Y(_1432_));
 sky130_fd_sc_hd__a21boi_0 _5388_ (.A1(_1392_),
    .A2(_1394_),
    .B1_N(net739),
    .Y(_1433_));
 sky130_fd_sc_hd__o21bai_1 _5389_ (.A1(net739),
    .A2(_1432_),
    .B1_N(_1433_),
    .Y(_1434_));
 sky130_fd_sc_hd__xor2_1 _5390_ (.A(_0454_),
    .B(_1434_),
    .X(_1435_));
 sky130_fd_sc_hd__nor2_1 _5391_ (.A(_0453_),
    .B(net694),
    .Y(_1436_));
 sky130_fd_sc_hd__a221oi_1 _5392_ (.A1(_0454_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0456_),
    .C1(_1436_),
    .Y(_1437_));
 sky130_fd_sc_hd__o21ai_0 _5393_ (.A1(net675),
    .A2(_1435_),
    .B1(_1437_),
    .Y(\alu_out[7] ));
 sky130_fd_sc_hd__o311ai_0 _5394_ (.A1(_1046_),
    .A2(_0466_),
    .A3(_1045_),
    .B1(_1052_),
    .C1(net739),
    .Y(_1438_));
 sky130_fd_sc_hd__o21ai_0 _5395_ (.A1(net739),
    .A2(_1425_),
    .B1(_1438_),
    .Y(_1439_));
 sky130_fd_sc_hd__nand2_1 _5396_ (.A(net679),
    .B(_1439_),
    .Y(_1440_));
 sky130_fd_sc_hd__nor2_1 _5397_ (.A(net675),
    .B(_1439_),
    .Y(_1441_));
 sky130_fd_sc_hd__o21ai_0 _5398_ (.A1(_1013_),
    .A2(_1441_),
    .B1(_0377_),
    .Y(_1442_));
 sky130_fd_sc_hd__nor2_1 _5399_ (.A(_0376_),
    .B(net694),
    .Y(_1443_));
 sky130_fd_sc_hd__a21oi_1 _5400_ (.A1(_0379_),
    .A2(_1016_),
    .B1(_1443_),
    .Y(_1444_));
 sky130_fd_sc_hd__o211ai_1 _5401_ (.A1(_0377_),
    .A2(_1440_),
    .B1(_1442_),
    .C1(_1444_),
    .Y(\alu_out[6] ));
 sky130_fd_sc_hd__nor2_1 _5402_ (.A(_0330_),
    .B(net694),
    .Y(_1445_));
 sky130_fd_sc_hd__a221oi_1 _5403_ (.A1(_0331_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0332_),
    .C1(_1445_),
    .Y(_1446_));
 sky130_fd_sc_hd__nor2_1 _5404_ (.A(_0473_),
    .B(_1155_),
    .Y(_1447_));
 sky130_fd_sc_hd__nor2_1 _5405_ (.A(_0466_),
    .B(_1447_),
    .Y(_1448_));
 sky130_fd_sc_hd__nor2_1 _5406_ (.A(_0467_),
    .B(_1448_),
    .Y(_1449_));
 sky130_fd_sc_hd__xnor2_1 _5407_ (.A(_0236_),
    .B(_1449_),
    .Y(_1450_));
 sky130_fd_sc_hd__xor2_1 _5408_ (.A(_0331_),
    .B(_1197_),
    .X(_1451_));
 sky130_fd_sc_hd__nor2_1 _5409_ (.A(net739),
    .B(_1451_),
    .Y(_1452_));
 sky130_fd_sc_hd__a211oi_1 _5410_ (.A1(net739),
    .A2(_1450_),
    .B1(_1452_),
    .C1(net675),
    .Y(_1453_));
 sky130_fd_sc_hd__a21oi_1 _5411_ (.A1(net675),
    .A2(_1446_),
    .B1(_1453_),
    .Y(\alu_out[5] ));
 sky130_fd_sc_hd__a21oi_1 _5412_ (.A1(_0472_),
    .A2(_1111_),
    .B1(_0474_),
    .Y(_1454_));
 sky130_fd_sc_hd__nor2_1 _5413_ (.A(net739),
    .B(_1454_),
    .Y(_1455_));
 sky130_fd_sc_hd__a21oi_1 _5414_ (.A1(net739),
    .A2(_1045_),
    .B1(_1455_),
    .Y(_1456_));
 sky130_fd_sc_hd__a21o_1 _5415_ (.A1(net679),
    .A2(_1456_),
    .B1(_1013_),
    .X(_1457_));
 sky130_fd_sc_hd__nand2_1 _5416_ (.A(_0466_),
    .B(_1457_),
    .Y(_1458_));
 sky130_fd_sc_hd__nor2_1 _5417_ (.A(_0465_),
    .B(net694),
    .Y(_1459_));
 sky130_fd_sc_hd__a21oi_1 _5418_ (.A1(_0468_),
    .A2(_1016_),
    .B1(_1459_),
    .Y(_1460_));
 sky130_fd_sc_hd__o311ai_0 _5419_ (.A1(_0466_),
    .A2(net675),
    .A3(_1456_),
    .B1(_1458_),
    .C1(_1460_),
    .Y(\alu_out[4] ));
 sky130_fd_sc_hd__nor2_1 _5420_ (.A(_0471_),
    .B(net694),
    .Y(_1461_));
 sky130_fd_sc_hd__a221oi_1 _5421_ (.A1(_0472_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0474_),
    .C1(_1461_),
    .Y(_1462_));
 sky130_fd_sc_hd__o21ai_0 _5422_ (.A1(_0492_),
    .A2(_1153_),
    .B1(_0280_),
    .Y(_1463_));
 sky130_fd_sc_hd__a21o_1 _5423_ (.A1(_0102_),
    .A2(_0060_),
    .B1(_0493_),
    .X(_1464_));
 sky130_fd_sc_hd__a21oi_1 _5424_ (.A1(_0335_),
    .A2(_1464_),
    .B1(_0336_),
    .Y(_1465_));
 sky130_fd_sc_hd__nor2_1 _5425_ (.A(net739),
    .B(_1465_),
    .Y(_1466_));
 sky130_fd_sc_hd__a31oi_1 _5426_ (.A1(net739),
    .A2(_1041_),
    .A3(_1463_),
    .B1(_1466_),
    .Y(_1467_));
 sky130_fd_sc_hd__xnor2_1 _5427_ (.A(_0472_),
    .B(_1467_),
    .Y(_1468_));
 sky130_fd_sc_hd__nor2_1 _5428_ (.A(net675),
    .B(_1468_),
    .Y(_1469_));
 sky130_fd_sc_hd__a21oi_1 _5429_ (.A1(net675),
    .A2(_1462_),
    .B1(_1469_),
    .Y(\alu_out[3] ));
 sky130_fd_sc_hd__nor2_1 _5430_ (.A(_0334_),
    .B(net694),
    .Y(_1470_));
 sky130_fd_sc_hd__a221oi_1 _5431_ (.A1(_0335_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0336_),
    .C1(_1470_),
    .Y(_1471_));
 sky130_fd_sc_hd__nand2b_1 _5432_ (.A_N(_0280_),
    .B(_0057_),
    .Y(_1472_));
 sky130_fd_sc_hd__xnor2_1 _5433_ (.A(_0335_),
    .B(_0061_),
    .Y(_1473_));
 sky130_fd_sc_hd__nor2_1 _5434_ (.A(net739),
    .B(_1473_),
    .Y(_1474_));
 sky130_fd_sc_hd__a311oi_1 _5435_ (.A1(net739),
    .A2(_1042_),
    .A3(_1472_),
    .B1(_1474_),
    .C1(net675),
    .Y(_1475_));
 sky130_fd_sc_hd__a21oi_1 _5436_ (.A1(net675),
    .A2(_1471_),
    .B1(_1475_),
    .Y(\alu_out[2] ));
 sky130_fd_sc_hd__nand2_1 _5437_ (.A(net739),
    .B(_0058_),
    .Y(_1476_));
 sky130_fd_sc_hd__o21ai_0 _5438_ (.A1(net739),
    .A2(_0062_),
    .B1(_1476_),
    .Y(_1477_));
 sky130_fd_sc_hd__nor2_1 _5439_ (.A(_0491_),
    .B(net694),
    .Y(_1478_));
 sky130_fd_sc_hd__a221oi_1 _5440_ (.A1(_0102_),
    .A2(_1013_),
    .B1(_1016_),
    .B2(_0493_),
    .C1(_1478_),
    .Y(_1479_));
 sky130_fd_sc_hd__o21ai_0 _5441_ (.A1(net675),
    .A2(_1477_),
    .B1(_1479_),
    .Y(\alu_out[1] ));
 sky130_fd_sc_hd__nand3_1 _5442_ (.A(_0483_),
    .B(_0147_),
    .C(_1178_),
    .Y(_1480_));
 sky130_fd_sc_hd__nor2_1 _5443_ (.A(_1039_),
    .B(_1480_),
    .Y(_1481_));
 sky130_fd_sc_hd__and2_1 _5444_ (.A(_1085_),
    .B(_1481_),
    .X(_1482_));
 sky130_fd_sc_hd__or4b_2 _5445_ (.A(_0472_),
    .B(_0102_),
    .C(\alu_add_sub[0] ),
    .D_N(_0280_),
    .X(_1483_));
 sky130_fd_sc_hd__nor3_1 _5446_ (.A(_1058_),
    .B(_1051_),
    .C(_1483_),
    .Y(_1484_));
 sky130_fd_sc_hd__nand3_1 _5447_ (.A(_1347_),
    .B(_1482_),
    .C(_1484_),
    .Y(_1485_));
 sky130_fd_sc_hd__nor2_1 _5448_ (.A(is_slti_blt_slt),
    .B(is_sltiu_bltu_sltu),
    .Y(_1486_));
 sky130_fd_sc_hd__nor3_1 _5449_ (.A(instr_bne),
    .B(instr_bge),
    .C(instr_bgeu),
    .Y(_1487_));
 sky130_fd_sc_hd__nand2_1 _5450_ (.A(_1486_),
    .B(_1487_),
    .Y(_1488_));
 sky130_fd_sc_hd__o311a_1 _5451_ (.A1(_0193_),
    .A2(_1094_),
    .A3(_1096_),
    .B1(_0147_),
    .C1(_0483_),
    .X(_1489_));
 sky130_fd_sc_hd__a211o_1 _5452_ (.A1(_1090_),
    .A2(_1481_),
    .B1(_1489_),
    .C1(_0482_),
    .X(_1490_));
 sky130_fd_sc_hd__a21oi_1 _5453_ (.A1(net609),
    .A2(_1482_),
    .B1(_1490_),
    .Y(_1491_));
 sky130_fd_sc_hd__nand2_1 _5454_ (.A(_0483_),
    .B(_0146_),
    .Y(_1492_));
 sky130_fd_sc_hd__nand2_1 _5455_ (.A(_1491_),
    .B(_1492_),
    .Y(_1493_));
 sky130_fd_sc_hd__mux2i_1 _5456_ (.A0(is_sltiu_bltu_sltu),
    .A1(instr_bgeu),
    .S(_1493_),
    .Y(_1494_));
 sky130_fd_sc_hd__inv_1 _5457_ (.A(_0483_),
    .Y(_1495_));
 sky130_fd_sc_hd__a2111oi_0 _5458_ (.A1(net609),
    .A2(_1482_),
    .B1(_1490_),
    .C1(_0146_),
    .D1(_1495_),
    .Y(_1496_));
 sky130_fd_sc_hd__a21oi_1 _5459_ (.A1(_1495_),
    .A2(_0482_),
    .B1(_1496_),
    .Y(_1497_));
 sky130_fd_sc_hd__mux2i_1 _5460_ (.A0(is_slti_blt_slt),
    .A1(instr_bge),
    .S(_1497_),
    .Y(_1498_));
 sky130_fd_sc_hd__nand2_1 _5461_ (.A(instr_bne),
    .B(_1485_),
    .Y(_1499_));
 sky130_fd_sc_hd__o2111a_1 _5462_ (.A1(_1485_),
    .A2(_1488_),
    .B1(_1494_),
    .C1(_1498_),
    .D1(_1499_),
    .X(_1500_));
 sky130_fd_sc_hd__nor2_1 _5463_ (.A(_0486_),
    .B(net694),
    .Y(_1501_));
 sky130_fd_sc_hd__a21oi_1 _5464_ (.A1(_0060_),
    .A2(_1016_),
    .B1(_1501_),
    .Y(_1502_));
 sky130_fd_sc_hd__o21ai_0 _5465_ (.A1(_1013_),
    .A2(net679),
    .B1(\alu_add_sub[0] ),
    .Y(_1503_));
 sky130_fd_sc_hd__o211ai_1 _5466_ (.A1(_1012_),
    .A2(_1500_),
    .B1(_1502_),
    .C1(_1503_),
    .Y(\alu_out[0] ));
 sky130_fd_sc_hd__or2b_1 _5467_ (.A(net738),
    .B_N(net736),
    .X(_1504_));
 sky130_fd_sc_hd__and3_1 _5472_ (.A(\reg_pc[4] ),
    .B(\reg_pc[5] ),
    .C(\reg_pc[6] ),
    .X(_1509_));
 sky130_fd_sc_hd__nand3_1 _5473_ (.A(\reg_pc[7] ),
    .B(_0161_),
    .C(_1509_),
    .Y(_1510_));
 sky130_fd_sc_hd__and3_1 _5474_ (.A(\reg_pc[8] ),
    .B(\reg_pc[9] ),
    .C(\reg_pc[10] ),
    .X(_1511_));
 sky130_fd_sc_hd__and3_1 _5475_ (.A(\reg_pc[11] ),
    .B(\reg_pc[12] ),
    .C(_1511_),
    .X(_1512_));
 sky130_fd_sc_hd__nand2_1 _5476_ (.A(\reg_pc[13] ),
    .B(_1512_),
    .Y(_1513_));
 sky130_fd_sc_hd__nor2_1 _5477_ (.A(_1510_),
    .B(_1513_),
    .Y(_1514_));
 sky130_fd_sc_hd__nand4_1 _5479_ (.A(\reg_pc[14] ),
    .B(\reg_pc[15] ),
    .C(\reg_pc[16] ),
    .D(\reg_pc[17] ),
    .Y(_1516_));
 sky130_fd_sc_hd__inv_1 _5480_ (.A(_1516_),
    .Y(_1517_));
 sky130_fd_sc_hd__nand2_1 _5481_ (.A(_1514_),
    .B(_1517_),
    .Y(_1518_));
 sky130_fd_sc_hd__and3_1 _5482_ (.A(\reg_pc[18] ),
    .B(\reg_pc[19] ),
    .C(\reg_pc[20] ),
    .X(_1519_));
 sky130_fd_sc_hd__nand3_1 _5483_ (.A(\reg_pc[21] ),
    .B(\reg_pc[22] ),
    .C(_1519_),
    .Y(_1520_));
 sky130_fd_sc_hd__and3_1 _5484_ (.A(\reg_pc[23] ),
    .B(\reg_pc[24] ),
    .C(\reg_pc[25] ),
    .X(_1521_));
 sky130_fd_sc_hd__nand2_1 _5485_ (.A(\reg_pc[26] ),
    .B(_1521_),
    .Y(_1522_));
 sky130_fd_sc_hd__nor3_1 _5486_ (.A(_1518_),
    .B(_1520_),
    .C(_1522_),
    .Y(_1523_));
 sky130_fd_sc_hd__nand4_1 _5487_ (.A(\reg_pc[27] ),
    .B(\reg_pc[28] ),
    .C(\reg_pc[29] ),
    .D(_1523_),
    .Y(_1524_));
 sky130_fd_sc_hd__xnor2_1 _5488_ (.A(\reg_pc[30] ),
    .B(_1524_),
    .Y(_1525_));
 sky130_fd_sc_hd__nand2_1 _5489_ (.A(net693),
    .B(_1525_),
    .Y(_1526_));
 sky130_fd_sc_hd__o21ai_4 _5490_ (.A1(_0956_),
    .A2(net693),
    .B1(_1526_),
    .Y(\cpuregs_wrdata[30] ));
 sky130_fd_sc_hd__nand2_1 _5491_ (.A(\reg_pc[27] ),
    .B(\reg_pc[28] ),
    .Y(_1527_));
 sky130_fd_sc_hd__and3_1 _5492_ (.A(\reg_pc[2] ),
    .B(\reg_pc[3] ),
    .C(_1509_),
    .X(_1528_));
 sky130_fd_sc_hd__and2_1 _5493_ (.A(\reg_pc[7] ),
    .B(_1528_),
    .X(_1529_));
 sky130_fd_sc_hd__nor2b_1 _5494_ (.A(_1513_),
    .B_N(_1529_),
    .Y(_1530_));
 sky130_fd_sc_hd__and2_1 _5495_ (.A(_1517_),
    .B(_1530_),
    .X(_1531_));
 sky130_fd_sc_hd__nor2b_1 _5496_ (.A(_1520_),
    .B_N(_1531_),
    .Y(_1532_));
 sky130_fd_sc_hd__nand3_1 _5497_ (.A(\reg_pc[26] ),
    .B(_1521_),
    .C(_1532_),
    .Y(_1533_));
 sky130_fd_sc_hd__nor2_1 _5498_ (.A(_1527_),
    .B(_1533_),
    .Y(_1534_));
 sky130_fd_sc_hd__xnor2_1 _5499_ (.A(\reg_pc[29] ),
    .B(_1534_),
    .Y(_1535_));
 sky130_fd_sc_hd__mux2i_4 _5500_ (.A0(_0953_),
    .A1(_1535_),
    .S(net693),
    .Y(\cpuregs_wrdata[29] ));
 sky130_fd_sc_hd__nand2_1 _5501_ (.A(\reg_pc[27] ),
    .B(_1523_),
    .Y(_1536_));
 sky130_fd_sc_hd__xnor2_1 _5502_ (.A(\reg_pc[28] ),
    .B(_1536_),
    .Y(_1537_));
 sky130_fd_sc_hd__nand2_1 _5503_ (.A(net693),
    .B(_1537_),
    .Y(_1538_));
 sky130_fd_sc_hd__o21ai_2 _5504_ (.A1(_0950_),
    .A2(net693),
    .B1(_1538_),
    .Y(\cpuregs_wrdata[28] ));
 sky130_fd_sc_hd__xnor2_1 _5505_ (.A(\reg_pc[27] ),
    .B(_1533_),
    .Y(_1539_));
 sky130_fd_sc_hd__nand2_1 _5506_ (.A(net693),
    .B(_1539_),
    .Y(_1540_));
 sky130_fd_sc_hd__o21ai_2 _5507_ (.A1(_0948_),
    .A2(net693),
    .B1(_1540_),
    .Y(\cpuregs_wrdata[27] ));
 sky130_fd_sc_hd__nor2b_4 _5508_ (.A(net738),
    .B_N(net736),
    .Y(_1541_));
 sky130_fd_sc_hd__nor2_1 _5510_ (.A(_1518_),
    .B(_1520_),
    .Y(_1543_));
 sky130_fd_sc_hd__nand2_1 _5511_ (.A(_1543_),
    .B(_1521_),
    .Y(_1544_));
 sky130_fd_sc_hd__xor2_1 _5512_ (.A(\reg_pc[26] ),
    .B(_1544_),
    .X(_1545_));
 sky130_fd_sc_hd__nand2_1 _5514_ (.A(_0946_),
    .B(net692),
    .Y(_1547_));
 sky130_fd_sc_hd__o21ai_2 _5515_ (.A1(net692),
    .A2(_1545_),
    .B1(_1547_),
    .Y(\cpuregs_wrdata[26] ));
 sky130_fd_sc_hd__nand3_1 _5516_ (.A(\reg_pc[23] ),
    .B(\reg_pc[24] ),
    .C(_1532_),
    .Y(_1548_));
 sky130_fd_sc_hd__xor2_1 _5517_ (.A(\reg_pc[25] ),
    .B(_1548_),
    .X(_1549_));
 sky130_fd_sc_hd__nand2_1 _5518_ (.A(_0943_),
    .B(net692),
    .Y(_1550_));
 sky130_fd_sc_hd__o21ai_2 _5519_ (.A1(net692),
    .A2(_1549_),
    .B1(_1550_),
    .Y(\cpuregs_wrdata[25] ));
 sky130_fd_sc_hd__nand2_1 _5520_ (.A(\reg_pc[23] ),
    .B(_1543_),
    .Y(_1551_));
 sky130_fd_sc_hd__xnor2_1 _5521_ (.A(\reg_pc[24] ),
    .B(_1551_),
    .Y(_1552_));
 sky130_fd_sc_hd__nand2_1 _5522_ (.A(net693),
    .B(_1552_),
    .Y(_1553_));
 sky130_fd_sc_hd__o21ai_2 _5523_ (.A1(_0941_),
    .A2(net693),
    .B1(_1553_),
    .Y(\cpuregs_wrdata[24] ));
 sky130_fd_sc_hd__xor2_1 _5524_ (.A(\reg_pc[23] ),
    .B(_1532_),
    .X(_1554_));
 sky130_fd_sc_hd__nand2_1 _5525_ (.A(net693),
    .B(_1554_),
    .Y(_1555_));
 sky130_fd_sc_hd__o21ai_2 _5526_ (.A1(_0939_),
    .A2(net693),
    .B1(_1555_),
    .Y(\cpuregs_wrdata[23] ));
 sky130_fd_sc_hd__nor3_1 _5527_ (.A(_1510_),
    .B(_1513_),
    .C(_1516_),
    .Y(_1556_));
 sky130_fd_sc_hd__nand3_1 _5528_ (.A(\reg_pc[21] ),
    .B(_1556_),
    .C(_1519_),
    .Y(_1557_));
 sky130_fd_sc_hd__xnor2_1 _5529_ (.A(\reg_pc[22] ),
    .B(_1557_),
    .Y(_1558_));
 sky130_fd_sc_hd__nand2_1 _5530_ (.A(net693),
    .B(_1558_),
    .Y(_1559_));
 sky130_fd_sc_hd__o21ai_2 _5531_ (.A1(_0937_),
    .A2(net693),
    .B1(_1559_),
    .Y(\cpuregs_wrdata[22] ));
 sky130_fd_sc_hd__nand2_1 _5532_ (.A(_1519_),
    .B(_1531_),
    .Y(_1560_));
 sky130_fd_sc_hd__xor2_1 _5533_ (.A(\reg_pc[21] ),
    .B(_1560_),
    .X(_1561_));
 sky130_fd_sc_hd__mux2i_2 _5534_ (.A0(_0935_),
    .A1(_1561_),
    .S(net693),
    .Y(\cpuregs_wrdata[21] ));
 sky130_fd_sc_hd__nand3_1 _5535_ (.A(\reg_pc[18] ),
    .B(\reg_pc[19] ),
    .C(_1556_),
    .Y(_1562_));
 sky130_fd_sc_hd__xor2_1 _5536_ (.A(\reg_pc[20] ),
    .B(_1562_),
    .X(_1563_));
 sky130_fd_sc_hd__nand2_1 _5537_ (.A(_0933_),
    .B(net692),
    .Y(_1564_));
 sky130_fd_sc_hd__o21ai_2 _5538_ (.A1(net692),
    .A2(_1563_),
    .B1(_1564_),
    .Y(\cpuregs_wrdata[20] ));
 sky130_fd_sc_hd__nand2_1 _5540_ (.A(\reg_pc[18] ),
    .B(_1531_),
    .Y(_1566_));
 sky130_fd_sc_hd__xor2_1 _5541_ (.A(\reg_pc[19] ),
    .B(_1566_),
    .X(_1567_));
 sky130_fd_sc_hd__nand2_1 _5542_ (.A(_0931_),
    .B(net692),
    .Y(_1568_));
 sky130_fd_sc_hd__o21ai_2 _5543_ (.A1(net692),
    .A2(_1567_),
    .B1(_1568_),
    .Y(\cpuregs_wrdata[19] ));
 sky130_fd_sc_hd__xnor2_1 _5544_ (.A(\reg_pc[18] ),
    .B(_1556_),
    .Y(_1569_));
 sky130_fd_sc_hd__nand2_1 _5546_ (.A(_0927_),
    .B(net692),
    .Y(_1571_));
 sky130_fd_sc_hd__o21ai_2 _5547_ (.A1(net692),
    .A2(_1569_),
    .B1(_1571_),
    .Y(\cpuregs_wrdata[18] ));
 sky130_fd_sc_hd__nand4_1 _5548_ (.A(\reg_pc[14] ),
    .B(\reg_pc[15] ),
    .C(\reg_pc[16] ),
    .D(_1530_),
    .Y(_1572_));
 sky130_fd_sc_hd__xor2_1 _5549_ (.A(\reg_pc[17] ),
    .B(_1572_),
    .X(_1573_));
 sky130_fd_sc_hd__nand2_1 _5550_ (.A(_0924_),
    .B(net692),
    .Y(_1574_));
 sky130_fd_sc_hd__o21ai_2 _5551_ (.A1(net692),
    .A2(_1573_),
    .B1(_1574_),
    .Y(\cpuregs_wrdata[17] ));
 sky130_fd_sc_hd__nand3_1 _5552_ (.A(\reg_pc[14] ),
    .B(\reg_pc[15] ),
    .C(_1514_),
    .Y(_1575_));
 sky130_fd_sc_hd__xor2_1 _5553_ (.A(\reg_pc[16] ),
    .B(_1575_),
    .X(_1576_));
 sky130_fd_sc_hd__nand2_1 _5554_ (.A(_0920_),
    .B(net692),
    .Y(_1577_));
 sky130_fd_sc_hd__o21ai_2 _5555_ (.A1(net692),
    .A2(_1576_),
    .B1(_1577_),
    .Y(\cpuregs_wrdata[16] ));
 sky130_fd_sc_hd__nand2_1 _5556_ (.A(\reg_pc[14] ),
    .B(_1530_),
    .Y(_1578_));
 sky130_fd_sc_hd__xor2_1 _5557_ (.A(\reg_pc[15] ),
    .B(_1578_),
    .X(_1579_));
 sky130_fd_sc_hd__nand2_1 _5558_ (.A(_0917_),
    .B(net692),
    .Y(_1580_));
 sky130_fd_sc_hd__o21ai_2 _5559_ (.A1(net692),
    .A2(_1579_),
    .B1(_1580_),
    .Y(\cpuregs_wrdata[15] ));
 sky130_fd_sc_hd__xnor2_1 _5560_ (.A(\reg_pc[14] ),
    .B(_1514_),
    .Y(_1581_));
 sky130_fd_sc_hd__nand2_1 _5561_ (.A(_0913_),
    .B(net692),
    .Y(_1582_));
 sky130_fd_sc_hd__o21ai_2 _5562_ (.A1(net692),
    .A2(_1581_),
    .B1(_1582_),
    .Y(\cpuregs_wrdata[14] ));
 sky130_fd_sc_hd__nand2_1 _5563_ (.A(_1512_),
    .B(_1529_),
    .Y(_1583_));
 sky130_fd_sc_hd__xor2_1 _5564_ (.A(\reg_pc[13] ),
    .B(_1583_),
    .X(_1584_));
 sky130_fd_sc_hd__nand2_1 _5565_ (.A(_0910_),
    .B(net692),
    .Y(_1585_));
 sky130_fd_sc_hd__o21ai_2 _5566_ (.A1(net692),
    .A2(_1584_),
    .B1(_1585_),
    .Y(\cpuregs_wrdata[13] ));
 sky130_fd_sc_hd__nand2_1 _5567_ (.A(\reg_pc[8] ),
    .B(\reg_pc[9] ),
    .Y(_1586_));
 sky130_fd_sc_hd__nand2_1 _5568_ (.A(\reg_pc[10] ),
    .B(\reg_pc[11] ),
    .Y(_1587_));
 sky130_fd_sc_hd__nor3_1 _5569_ (.A(_1510_),
    .B(_1586_),
    .C(_1587_),
    .Y(_1588_));
 sky130_fd_sc_hd__xnor2_1 _5570_ (.A(\reg_pc[12] ),
    .B(_1588_),
    .Y(_1589_));
 sky130_fd_sc_hd__nand2_1 _5571_ (.A(_0908_),
    .B(net692),
    .Y(_1590_));
 sky130_fd_sc_hd__o21ai_2 _5572_ (.A1(net692),
    .A2(_1589_),
    .B1(_1590_),
    .Y(\cpuregs_wrdata[12] ));
 sky130_fd_sc_hd__nand2_1 _5573_ (.A(_1511_),
    .B(_1529_),
    .Y(_1591_));
 sky130_fd_sc_hd__xor2_1 _5574_ (.A(\reg_pc[11] ),
    .B(_1591_),
    .X(_1592_));
 sky130_fd_sc_hd__nand2_1 _5575_ (.A(_0906_),
    .B(net692),
    .Y(_1593_));
 sky130_fd_sc_hd__o21ai_2 _5576_ (.A1(net692),
    .A2(_1592_),
    .B1(_1593_),
    .Y(\cpuregs_wrdata[11] ));
 sky130_fd_sc_hd__nor2_1 _5577_ (.A(_1510_),
    .B(_1586_),
    .Y(_1594_));
 sky130_fd_sc_hd__xnor2_1 _5578_ (.A(\reg_pc[10] ),
    .B(_1594_),
    .Y(_1595_));
 sky130_fd_sc_hd__nand2_1 _5579_ (.A(_0904_),
    .B(net692),
    .Y(_1596_));
 sky130_fd_sc_hd__o21ai_2 _5580_ (.A1(net692),
    .A2(_1595_),
    .B1(_1596_),
    .Y(\cpuregs_wrdata[10] ));
 sky130_fd_sc_hd__nand2_1 _5581_ (.A(\reg_pc[8] ),
    .B(_1529_),
    .Y(_1597_));
 sky130_fd_sc_hd__xor2_1 _5582_ (.A(\reg_pc[9] ),
    .B(_1597_),
    .X(_1598_));
 sky130_fd_sc_hd__nand2_1 _5583_ (.A(_0902_),
    .B(net692),
    .Y(_1599_));
 sky130_fd_sc_hd__o21ai_2 _5584_ (.A1(net692),
    .A2(_1598_),
    .B1(_1599_),
    .Y(\cpuregs_wrdata[9] ));
 sky130_fd_sc_hd__xor2_1 _5585_ (.A(\reg_pc[8] ),
    .B(_1510_),
    .X(_1600_));
 sky130_fd_sc_hd__nand2_1 _5586_ (.A(_0900_),
    .B(net692),
    .Y(_1601_));
 sky130_fd_sc_hd__o21ai_2 _5587_ (.A1(net692),
    .A2(_1600_),
    .B1(_1601_),
    .Y(\cpuregs_wrdata[8] ));
 sky130_fd_sc_hd__xnor2_1 _5588_ (.A(\reg_pc[7] ),
    .B(_1528_),
    .Y(_1602_));
 sky130_fd_sc_hd__nand2_1 _5589_ (.A(_0898_),
    .B(net692),
    .Y(_1603_));
 sky130_fd_sc_hd__o21ai_4 _5590_ (.A1(net692),
    .A2(_1602_),
    .B1(_1603_),
    .Y(\cpuregs_wrdata[7] ));
 sky130_fd_sc_hd__nand3_1 _5591_ (.A(\reg_pc[4] ),
    .B(\reg_pc[5] ),
    .C(_0161_),
    .Y(_1604_));
 sky130_fd_sc_hd__xor2_1 _5592_ (.A(\reg_pc[6] ),
    .B(_1604_),
    .X(_1605_));
 sky130_fd_sc_hd__nand2_1 _5593_ (.A(_0896_),
    .B(net692),
    .Y(_1606_));
 sky130_fd_sc_hd__o21ai_4 _5594_ (.A1(net692),
    .A2(_1605_),
    .B1(_1606_),
    .Y(\cpuregs_wrdata[6] ));
 sky130_fd_sc_hd__nand3_1 _5595_ (.A(\reg_pc[2] ),
    .B(\reg_pc[3] ),
    .C(\reg_pc[4] ),
    .Y(_1607_));
 sky130_fd_sc_hd__xor2_1 _5596_ (.A(\reg_pc[5] ),
    .B(_1607_),
    .X(_1608_));
 sky130_fd_sc_hd__nand2_1 _5597_ (.A(_0894_),
    .B(net692),
    .Y(_1609_));
 sky130_fd_sc_hd__o21ai_2 _5598_ (.A1(net692),
    .A2(_1608_),
    .B1(_1609_),
    .Y(\cpuregs_wrdata[5] ));
 sky130_fd_sc_hd__xor2_1 _5599_ (.A(\reg_pc[4] ),
    .B(_0161_),
    .X(_1610_));
 sky130_fd_sc_hd__nand2_1 _5600_ (.A(_1504_),
    .B(_1610_),
    .Y(_1611_));
 sky130_fd_sc_hd__o21ai_2 _5601_ (.A1(_0892_),
    .A2(_1504_),
    .B1(_1611_),
    .Y(\cpuregs_wrdata[4] ));
 sky130_fd_sc_hd__nand2_1 _5602_ (.A(_0162_),
    .B(_1504_),
    .Y(_1612_));
 sky130_fd_sc_hd__o21ai_2 _5603_ (.A1(_0890_),
    .A2(_1504_),
    .B1(_1612_),
    .Y(\cpuregs_wrdata[3] ));
 sky130_fd_sc_hd__nor2_1 _5604_ (.A(_0885_),
    .B(_1504_),
    .Y(_1613_));
 sky130_fd_sc_hd__a21oi_2 _5605_ (.A1(\reg_pc[2] ),
    .A2(_1504_),
    .B1(_1613_),
    .Y(\cpuregs_wrdata[2] ));
 sky130_fd_sc_hd__nand2_1 _5606_ (.A(\reg_pc[1] ),
    .B(_1504_),
    .Y(_1614_));
 sky130_fd_sc_hd__o21ai_2 _5607_ (.A1(_0882_),
    .A2(_1504_),
    .B1(_1614_),
    .Y(\cpuregs_wrdata[1] ));
 sky130_fd_sc_hd__mux2i_1 _5608_ (.A0(\reg_out[0] ),
    .A1(\alu_out_q[0] ),
    .S(latched_stalu),
    .Y(_1615_));
 sky130_fd_sc_hd__nor2_2 _5609_ (.A(_1504_),
    .B(_1615_),
    .Y(\cpuregs_wrdata[0] ));
 sky130_fd_sc_hd__inv_1 _5610_ (.A(net350),
    .Y(_0109_));
 sky130_fd_sc_hd__nor2_2 _5612_ (.A(\cpu_state[5] ),
    .B(\cpu_state[6] ),
    .Y(_1617_));
 sky130_fd_sc_hd__and3_1 _5613_ (.A(_0169_),
    .B(_0171_),
    .C(_0173_),
    .X(_1618_));
 sky130_fd_sc_hd__and3_1 _5614_ (.A(_0175_),
    .B(_0177_),
    .C(_0179_),
    .X(_1619_));
 sky130_fd_sc_hd__nand2_1 _5615_ (.A(_1618_),
    .B(_1619_),
    .Y(_1620_));
 sky130_fd_sc_hd__a211oi_1 _5616_ (.A1(_0227_),
    .A2(_0064_),
    .B1(_0224_),
    .C1(_0226_),
    .Y(_1621_));
 sky130_fd_sc_hd__o21ai_0 _5617_ (.A1(_0224_),
    .A2(_0225_),
    .B1(_0223_),
    .Y(_1622_));
 sky130_fd_sc_hd__nor2_1 _5618_ (.A(_1621_),
    .B(_1622_),
    .Y(_1623_));
 sky130_fd_sc_hd__nand3_1 _5619_ (.A(_0221_),
    .B(_0191_),
    .C(_0242_),
    .Y(_1624_));
 sky130_fd_sc_hd__nor2_1 _5620_ (.A(_0243_),
    .B(_0244_),
    .Y(_1625_));
 sky130_fd_sc_hd__nor2_1 _5621_ (.A(_1624_),
    .B(_1625_),
    .Y(_1626_));
 sky130_fd_sc_hd__o31ai_1 _5622_ (.A1(_0243_),
    .A2(_0222_),
    .A3(_1623_),
    .B1(_1626_),
    .Y(_1627_));
 sky130_fd_sc_hd__a21o_1 _5623_ (.A1(_0191_),
    .A2(_0241_),
    .B1(_0190_),
    .X(_1628_));
 sky130_fd_sc_hd__a21oi_1 _5624_ (.A1(_0221_),
    .A2(_1628_),
    .B1(_0220_),
    .Y(_1629_));
 sky130_fd_sc_hd__a21o_1 _5625_ (.A1(_0189_),
    .A2(_0237_),
    .B1(_0188_),
    .X(_1630_));
 sky130_fd_sc_hd__nor2_1 _5626_ (.A(_0239_),
    .B(_1630_),
    .Y(_1631_));
 sky130_fd_sc_hd__or2_2 _5627_ (.A(_0239_),
    .B(_0240_),
    .X(_1632_));
 sky130_fd_sc_hd__a31oi_1 _5628_ (.A1(_0189_),
    .A2(_0238_),
    .A3(_1632_),
    .B1(_1630_),
    .Y(_1633_));
 sky130_fd_sc_hd__nand2_1 _5629_ (.A(_0185_),
    .B(_0187_),
    .Y(_1634_));
 sky130_fd_sc_hd__a311oi_1 _5630_ (.A1(_1627_),
    .A2(_1629_),
    .A3(_1631_),
    .B1(_1633_),
    .C1(_1634_),
    .Y(_1635_));
 sky130_fd_sc_hd__a211oi_1 _5631_ (.A1(_0185_),
    .A2(_0186_),
    .B1(_1635_),
    .C1(_0184_),
    .Y(_1636_));
 sky130_fd_sc_hd__nand2_1 _5632_ (.A(_0181_),
    .B(_0183_),
    .Y(_1637_));
 sky130_fd_sc_hd__or2_1 _5633_ (.A(_1636_),
    .B(_1637_),
    .X(_1638_));
 sky130_fd_sc_hd__nand2_1 _5634_ (.A(_0093_),
    .B(_0101_),
    .Y(_1639_));
 sky130_fd_sc_hd__a21o_1 _5635_ (.A1(_0181_),
    .A2(_0182_),
    .B1(_0180_),
    .X(_1640_));
 sky130_fd_sc_hd__a21o_1 _5636_ (.A1(_0179_),
    .A2(_1640_),
    .B1(_0178_),
    .X(_1641_));
 sky130_fd_sc_hd__a21oi_1 _5637_ (.A1(_0177_),
    .A2(_1641_),
    .B1(_0176_),
    .Y(_1642_));
 sky130_fd_sc_hd__nand2_1 _5638_ (.A(_0175_),
    .B(_1618_),
    .Y(_1643_));
 sky130_fd_sc_hd__a21o_1 _5639_ (.A1(_0173_),
    .A2(_0174_),
    .B1(_0172_),
    .X(_1644_));
 sky130_fd_sc_hd__a21o_1 _5640_ (.A1(_0171_),
    .A2(_1644_),
    .B1(_0170_),
    .X(_1645_));
 sky130_fd_sc_hd__a21oi_1 _5641_ (.A1(_0169_),
    .A2(_1645_),
    .B1(_0168_),
    .Y(_1646_));
 sky130_fd_sc_hd__o21ai_0 _5642_ (.A1(_1642_),
    .A2(_1643_),
    .B1(_1646_),
    .Y(_1647_));
 sky130_fd_sc_hd__a21o_1 _5643_ (.A1(_0101_),
    .A2(_1647_),
    .B1(_0100_),
    .X(_1648_));
 sky130_fd_sc_hd__a21oi_1 _5644_ (.A1(_0093_),
    .A2(_1648_),
    .B1(_0092_),
    .Y(_1649_));
 sky130_fd_sc_hd__o31a_1 _5645_ (.A1(_1620_),
    .A2(_1638_),
    .A3(_1639_),
    .B1(_1649_),
    .X(_1650_));
 sky130_fd_sc_hd__nand2_1 _5646_ (.A(_0089_),
    .B(_0091_),
    .Y(_1651_));
 sky130_fd_sc_hd__a21oi_1 _5647_ (.A1(_0089_),
    .A2(_0090_),
    .B1(_0088_),
    .Y(_1652_));
 sky130_fd_sc_hd__o21a_1 _5648_ (.A1(_1650_),
    .A2(_1651_),
    .B1(_1652_),
    .X(_1653_));
 sky130_fd_sc_hd__nand4_1 _5649_ (.A(_0081_),
    .B(_0083_),
    .C(_0085_),
    .D(_0087_),
    .Y(_1654_));
 sky130_fd_sc_hd__or4_1 _5650_ (.A(_0079_),
    .B(net691),
    .C(_1653_),
    .D(_1654_),
    .X(_1655_));
 sky130_fd_sc_hd__or2_2 _5651_ (.A(\cpu_state[5] ),
    .B(\cpu_state[6] ),
    .X(_1656_));
 sky130_fd_sc_hd__inv_1 _5654_ (.A(_0083_),
    .Y(_1659_));
 sky130_fd_sc_hd__a21oi_1 _5655_ (.A1(_0085_),
    .A2(_0086_),
    .B1(_0084_),
    .Y(_1660_));
 sky130_fd_sc_hd__o21bai_1 _5656_ (.A1(_1659_),
    .A2(_1660_),
    .B1_N(_0082_),
    .Y(_1661_));
 sky130_fd_sc_hd__a21oi_1 _5657_ (.A1(_0081_),
    .A2(_1661_),
    .B1(_0080_),
    .Y(_1662_));
 sky130_fd_sc_hd__nand4_1 _5658_ (.A(_0079_),
    .B(net690),
    .C(_1653_),
    .D(_1662_),
    .Y(_1663_));
 sky130_fd_sc_hd__nand3_1 _5659_ (.A(_0079_),
    .B(_1662_),
    .C(_1654_),
    .Y(_1664_));
 sky130_fd_sc_hd__o21ai_0 _5660_ (.A1(_0079_),
    .A2(_1662_),
    .B1(_1664_),
    .Y(_1665_));
 sky130_fd_sc_hd__inv_1 _5662_ (.A(net747),
    .Y(_1667_));
 sky130_fd_sc_hd__nor2_1 _5664_ (.A(instr_srai),
    .B(instr_sra),
    .Y(_1669_));
 sky130_fd_sc_hd__inv_1 _5665_ (.A(_1669_),
    .Y(_1670_));
 sky130_fd_sc_hd__nor3_2 _5666_ (.A(instr_srli),
    .B(instr_srl),
    .C(_1670_),
    .Y(_1671_));
 sky130_fd_sc_hd__inv_1 _5669_ (.A(net714),
    .Y(_0301_));
 sky130_fd_sc_hd__a211o_1 _5670_ (.A1(_0167_),
    .A2(_0160_),
    .B1(\reg_sh[4] ),
    .C1(\reg_sh[3] ),
    .X(_1674_));
 sky130_fd_sc_hd__nor2_4 _5671_ (.A(\reg_sh[2] ),
    .B(_1674_),
    .Y(_1675_));
 sky130_fd_sc_hd__nand2_1 _5673_ (.A(net329),
    .B(net658),
    .Y(_1677_));
 sky130_fd_sc_hd__o21ai_0 _5674_ (.A1(_0301_),
    .A2(net658),
    .B1(_1677_),
    .Y(_1678_));
 sky130_fd_sc_hd__nor2_1 _5675_ (.A(instr_srli),
    .B(instr_srl),
    .Y(_1679_));
 sky130_fd_sc_hd__nand2b_2 _5676_ (.A_N(_1674_),
    .B(_0155_),
    .Y(_1680_));
 sky130_fd_sc_hd__o21ai_0 _5678_ (.A1(_1679_),
    .A2(net657),
    .B1(_1669_),
    .Y(_1682_));
 sky130_fd_sc_hd__a22oi_1 _5679_ (.A1(net671),
    .A2(_1678_),
    .B1(_1682_),
    .B2(net709),
    .Y(_1683_));
 sky130_fd_sc_hd__nor2_1 _5680_ (.A(net689),
    .B(_1683_),
    .Y(_1684_));
 sky130_fd_sc_hd__a21oi_1 _5681_ (.A1(net690),
    .A2(_1665_),
    .B1(_1684_),
    .Y(_1685_));
 sky130_fd_sc_hd__or4_1 _5682_ (.A(\decoded_imm_j[18] ),
    .B(\decoded_imm_j[17] ),
    .C(\decoded_imm_j[16] ),
    .D(\decoded_imm_j[15] ),
    .X(_1686_));
 sky130_fd_sc_hd__o21bai_4 _5683_ (.A1(\decoded_imm_j[19] ),
    .A2(_1686_),
    .B1_N(is_lui_auipc_jal),
    .Y(_1687_));
 sky130_fd_sc_hd__mux4_2 _5690_ (.A0(\cpuregs[0][30] ),
    .A1(\cpuregs[1][30] ),
    .A2(\cpuregs[2][30] ),
    .A3(\cpuregs[3][30] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_1694_));
 sky130_fd_sc_hd__mux4_2 _5693_ (.A0(\cpuregs[4][30] ),
    .A1(\cpuregs[5][30] ),
    .A2(\cpuregs[6][30] ),
    .A3(\cpuregs[7][30] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_1697_));
 sky130_fd_sc_hd__mux4_2 _5694_ (.A0(\cpuregs[16][30] ),
    .A1(\cpuregs[17][30] ),
    .A2(\cpuregs[18][30] ),
    .A3(\cpuregs[19][30] ),
    .S0(net771),
    .S1(_0042_),
    .X(_1698_));
 sky130_fd_sc_hd__mux4_2 _5699_ (.A0(\cpuregs[20][30] ),
    .A1(\cpuregs[21][30] ),
    .A2(\cpuregs[22][30] ),
    .A3(\cpuregs[23][30] ),
    .S0(net771),
    .S1(_0042_),
    .X(_1703_));
 sky130_fd_sc_hd__mux4_2 _5704_ (.A0(_1694_),
    .A1(_1697_),
    .A2(_1698_),
    .A3(_1703_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_1708_));
 sky130_fd_sc_hd__mux4_2 _5707_ (.A0(\cpuregs[8][30] ),
    .A1(\cpuregs[9][30] ),
    .A2(\cpuregs[10][30] ),
    .A3(\cpuregs[11][30] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_1711_));
 sky130_fd_sc_hd__mux4_2 _5711_ (.A0(\cpuregs[12][30] ),
    .A1(\cpuregs[13][30] ),
    .A2(\cpuregs[14][30] ),
    .A3(\cpuregs[15][30] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_1715_));
 sky130_fd_sc_hd__mux4_2 _5712_ (.A0(\cpuregs[24][30] ),
    .A1(\cpuregs[25][30] ),
    .A2(\cpuregs[26][30] ),
    .A3(\cpuregs[27][30] ),
    .S0(net771),
    .S1(_0042_),
    .X(_1716_));
 sky130_fd_sc_hd__mux4_2 _5715_ (.A0(\cpuregs[28][30] ),
    .A1(\cpuregs[29][30] ),
    .A2(\cpuregs[30][30] ),
    .A3(\cpuregs[31][30] ),
    .S0(net771),
    .S1(_0042_),
    .X(_1719_));
 sky130_fd_sc_hd__mux4_2 _5716_ (.A0(_1711_),
    .A1(_1715_),
    .A2(_1716_),
    .A3(_1719_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_1720_));
 sky130_fd_sc_hd__mux2i_2 _5719_ (.A0(_1708_),
    .A1(_1720_),
    .S(_0044_),
    .Y(_1723_));
 sky130_fd_sc_hd__nor2b_2 _5720_ (.A(instr_lui),
    .B_N(is_lui_auipc_jal),
    .Y(_1724_));
 sky130_fd_sc_hd__nand2_1 _5722_ (.A(\reg_pc[30] ),
    .B(net688),
    .Y(_1726_));
 sky130_fd_sc_hd__o21ai_0 _5723_ (.A1(_1687_),
    .A2(_1723_),
    .B1(_1726_),
    .Y(_1727_));
 sky130_fd_sc_hd__nor2_4 _5724_ (.A(net747),
    .B(_1656_),
    .Y(_1728_));
 sky130_fd_sc_hd__nand2_1 _5726_ (.A(_1727_),
    .B(_1728_),
    .Y(_1730_));
 sky130_fd_sc_hd__nand4_1 _5727_ (.A(_1655_),
    .B(_1663_),
    .C(_1685_),
    .D(_1730_),
    .Y(_4619_));
 sky130_fd_sc_hd__mux4_2 _5732_ (.A0(\cpuregs[0][29] ),
    .A1(\cpuregs[1][29] ),
    .A2(\cpuregs[2][29] ),
    .A3(\cpuregs[3][29] ),
    .S0(net774),
    .S1(net768),
    .X(_1735_));
 sky130_fd_sc_hd__mux4_2 _5733_ (.A0(\cpuregs[4][29] ),
    .A1(\cpuregs[5][29] ),
    .A2(\cpuregs[6][29] ),
    .A3(\cpuregs[7][29] ),
    .S0(net774),
    .S1(net768),
    .X(_1736_));
 sky130_fd_sc_hd__mux4_2 _5734_ (.A0(\cpuregs[16][29] ),
    .A1(\cpuregs[17][29] ),
    .A2(\cpuregs[18][29] ),
    .A3(\cpuregs[19][29] ),
    .S0(net774),
    .S1(net768),
    .X(_1737_));
 sky130_fd_sc_hd__mux4_2 _5735_ (.A0(\cpuregs[20][29] ),
    .A1(\cpuregs[21][29] ),
    .A2(\cpuregs[22][29] ),
    .A3(\cpuregs[23][29] ),
    .S0(net772),
    .S1(net767),
    .X(_1738_));
 sky130_fd_sc_hd__mux4_2 _5738_ (.A0(_1735_),
    .A1(_1736_),
    .A2(_1737_),
    .A3(_1738_),
    .S0(net766),
    .S1(_0045_),
    .X(_1741_));
 sky130_fd_sc_hd__mux4_2 _5739_ (.A0(\cpuregs[8][29] ),
    .A1(\cpuregs[9][29] ),
    .A2(\cpuregs[10][29] ),
    .A3(\cpuregs[11][29] ),
    .S0(net774),
    .S1(net768),
    .X(_1742_));
 sky130_fd_sc_hd__mux4_2 _5740_ (.A0(\cpuregs[12][29] ),
    .A1(\cpuregs[13][29] ),
    .A2(\cpuregs[14][29] ),
    .A3(\cpuregs[15][29] ),
    .S0(net774),
    .S1(net768),
    .X(_1743_));
 sky130_fd_sc_hd__mux4_2 _5741_ (.A0(\cpuregs[24][29] ),
    .A1(\cpuregs[25][29] ),
    .A2(\cpuregs[26][29] ),
    .A3(\cpuregs[27][29] ),
    .S0(net772),
    .S1(net767),
    .X(_1744_));
 sky130_fd_sc_hd__mux4_2 _5742_ (.A0(\cpuregs[28][29] ),
    .A1(\cpuregs[29][29] ),
    .A2(\cpuregs[30][29] ),
    .A3(\cpuregs[31][29] ),
    .S0(net773),
    .S1(net767),
    .X(_1745_));
 sky130_fd_sc_hd__mux4_2 _5743_ (.A0(_1742_),
    .A1(_1743_),
    .A2(_1744_),
    .A3(_1745_),
    .S0(net766),
    .S1(_0045_),
    .X(_1746_));
 sky130_fd_sc_hd__mux2i_1 _5745_ (.A0(_1741_),
    .A1(_1746_),
    .S(net764),
    .Y(_1748_));
 sky130_fd_sc_hd__nand2_1 _5746_ (.A(\reg_pc[29] ),
    .B(net688),
    .Y(_1749_));
 sky130_fd_sc_hd__o21ai_0 _5747_ (.A1(_1687_),
    .A2(_1748_),
    .B1(_1749_),
    .Y(_1750_));
 sky130_fd_sc_hd__nand2_1 _5748_ (.A(_0085_),
    .B(_0087_),
    .Y(_1751_));
 sky130_fd_sc_hd__nand2_1 _5749_ (.A(_0175_),
    .B(_0177_),
    .Y(_1752_));
 sky130_fd_sc_hd__nand2_1 _5750_ (.A(_0181_),
    .B(_0182_),
    .Y(_1753_));
 sky130_fd_sc_hd__nand3_1 _5751_ (.A(_0181_),
    .B(_0183_),
    .C(_0184_),
    .Y(_1754_));
 sky130_fd_sc_hd__nand3b_1 _5752_ (.A_N(_0180_),
    .B(_1753_),
    .C(_1754_),
    .Y(_1755_));
 sky130_fd_sc_hd__a21oi_1 _5753_ (.A1(_0179_),
    .A2(_1755_),
    .B1(_0178_),
    .Y(_1756_));
 sky130_fd_sc_hd__nor2_1 _5754_ (.A(_1752_),
    .B(_1756_),
    .Y(_1757_));
 sky130_fd_sc_hd__nand4_1 _5755_ (.A(_0181_),
    .B(_0183_),
    .C(_0185_),
    .D(_1619_),
    .Y(_1758_));
 sky130_fd_sc_hd__a21oi_1 _5756_ (.A1(_0187_),
    .A2(_0188_),
    .B1(_0186_),
    .Y(_1759_));
 sky130_fd_sc_hd__a21oi_1 _5757_ (.A1(_0175_),
    .A2(_0176_),
    .B1(_0174_),
    .Y(_1760_));
 sky130_fd_sc_hd__o21ai_0 _5758_ (.A1(_1758_),
    .A2(_1759_),
    .B1(_1760_),
    .Y(_1761_));
 sky130_fd_sc_hd__a211oi_1 _5759_ (.A1(_0219_),
    .A2(_0063_),
    .B1(_0226_),
    .C1(_0245_),
    .Y(_1762_));
 sky130_fd_sc_hd__o21ai_0 _5760_ (.A1(_0226_),
    .A2(_0227_),
    .B1(_0225_),
    .Y(_1763_));
 sky130_fd_sc_hd__nor2_1 _5761_ (.A(_0222_),
    .B(_0224_),
    .Y(_1764_));
 sky130_fd_sc_hd__o21ai_0 _5762_ (.A1(_1762_),
    .A2(_1763_),
    .B1(_1764_),
    .Y(_1765_));
 sky130_fd_sc_hd__nand2_1 _5763_ (.A(_0238_),
    .B(_0240_),
    .Y(_1766_));
 sky130_fd_sc_hd__nor2_1 _5764_ (.A(_1624_),
    .B(_1766_),
    .Y(_1767_));
 sky130_fd_sc_hd__o2111ai_1 _5765_ (.A1(_0222_),
    .A2(_0223_),
    .B1(_1765_),
    .C1(_1767_),
    .D1(_0244_),
    .Y(_1768_));
 sky130_fd_sc_hd__nand2_1 _5766_ (.A(_0221_),
    .B(_0191_),
    .Y(_1769_));
 sky130_fd_sc_hd__a21oi_1 _5767_ (.A1(_0242_),
    .A2(_0243_),
    .B1(_0241_),
    .Y(_1770_));
 sky130_fd_sc_hd__nand2_1 _5768_ (.A(_0221_),
    .B(_0190_),
    .Y(_1771_));
 sky130_fd_sc_hd__o21ai_0 _5769_ (.A1(_1769_),
    .A2(_1770_),
    .B1(_1771_),
    .Y(_1772_));
 sky130_fd_sc_hd__nor3_1 _5770_ (.A(_0237_),
    .B(_0239_),
    .C(_0240_),
    .Y(_1773_));
 sky130_fd_sc_hd__nor2_1 _5771_ (.A(_0237_),
    .B(_0238_),
    .Y(_1774_));
 sky130_fd_sc_hd__nor2_1 _5772_ (.A(_1773_),
    .B(_1774_),
    .Y(_1775_));
 sky130_fd_sc_hd__o41ai_1 _5773_ (.A1(_0237_),
    .A2(_0239_),
    .A3(_0220_),
    .A4(_1772_),
    .B1(_1775_),
    .Y(_1776_));
 sky130_fd_sc_hd__nand2_1 _5774_ (.A(_0187_),
    .B(_0189_),
    .Y(_1777_));
 sky130_fd_sc_hd__a211oi_1 _5775_ (.A1(_1768_),
    .A2(_1776_),
    .B1(_1758_),
    .C1(_1777_),
    .Y(_1778_));
 sky130_fd_sc_hd__nand3_1 _5776_ (.A(_0093_),
    .B(_0101_),
    .C(_1618_),
    .Y(_1779_));
 sky130_fd_sc_hd__nor2_1 _5777_ (.A(_1651_),
    .B(_1779_),
    .Y(_1780_));
 sky130_fd_sc_hd__o31a_1 _5778_ (.A1(_1757_),
    .A2(_1761_),
    .A3(_1778_),
    .B1(_1780_),
    .X(_1781_));
 sky130_fd_sc_hd__a21o_1 _5779_ (.A1(_0171_),
    .A2(_0172_),
    .B1(_0170_),
    .X(_1782_));
 sky130_fd_sc_hd__a21o_1 _5780_ (.A1(_0169_),
    .A2(_1782_),
    .B1(_0168_),
    .X(_1783_));
 sky130_fd_sc_hd__a21o_1 _5781_ (.A1(_0101_),
    .A2(_1783_),
    .B1(_0100_),
    .X(_1784_));
 sky130_fd_sc_hd__a21oi_1 _5782_ (.A1(_0093_),
    .A2(_1784_),
    .B1(_0092_),
    .Y(_1785_));
 sky130_fd_sc_hd__nand2_1 _5783_ (.A(_0089_),
    .B(_0090_),
    .Y(_1786_));
 sky130_fd_sc_hd__o21ai_0 _5784_ (.A1(_1651_),
    .A2(_1785_),
    .B1(_1786_),
    .Y(_1787_));
 sky130_fd_sc_hd__nor2_1 _5785_ (.A(_1781_),
    .B(_1787_),
    .Y(_1788_));
 sky130_fd_sc_hd__nor3_1 _5786_ (.A(_0084_),
    .B(_0086_),
    .C(_0088_),
    .Y(_1789_));
 sky130_fd_sc_hd__a221oi_1 _5787_ (.A1(_1660_),
    .A2(_1751_),
    .B1(_1788_),
    .B2(_1789_),
    .C1(_1659_),
    .Y(_1790_));
 sky130_fd_sc_hd__nor2_1 _5788_ (.A(_0082_),
    .B(_1790_),
    .Y(_1791_));
 sky130_fd_sc_hd__xnor2_1 _5789_ (.A(_0081_),
    .B(_1791_),
    .Y(_1792_));
 sky130_fd_sc_hd__mux2i_1 _5791_ (.A0(net710),
    .A1(net712),
    .S(net671),
    .Y(_1794_));
 sky130_fd_sc_hd__nand2_1 _5793_ (.A(net715),
    .B(net671),
    .Y(_1796_));
 sky130_fd_sc_hd__a21oi_1 _5794_ (.A1(net709),
    .A2(_1670_),
    .B1(net658),
    .Y(_1797_));
 sky130_fd_sc_hd__a221oi_1 _5795_ (.A1(net658),
    .A2(_1794_),
    .B1(_1796_),
    .B2(_1797_),
    .C1(net689),
    .Y(_1798_));
 sky130_fd_sc_hd__a221o_1 _5796_ (.A1(_1728_),
    .A2(_1750_),
    .B1(_1792_),
    .B2(net690),
    .C1(_1798_),
    .X(_4617_));
 sky130_fd_sc_hd__or4_1 _5797_ (.A(_0083_),
    .B(net691),
    .C(_1653_),
    .D(_1751_),
    .X(_1799_));
 sky130_fd_sc_hd__nand4_1 _5798_ (.A(_0083_),
    .B(net690),
    .C(_1653_),
    .D(_1660_),
    .Y(_1800_));
 sky130_fd_sc_hd__nand3_1 _5799_ (.A(_0083_),
    .B(_1660_),
    .C(_1751_),
    .Y(_1801_));
 sky130_fd_sc_hd__o21ai_0 _5800_ (.A1(_0083_),
    .A2(_1660_),
    .B1(_1801_),
    .Y(_1802_));
 sky130_fd_sc_hd__mux4_2 _5804_ (.A0(\cpuregs[0][28] ),
    .A1(\cpuregs[1][28] ),
    .A2(\cpuregs[2][28] ),
    .A3(\cpuregs[3][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1806_));
 sky130_fd_sc_hd__mux4_2 _5805_ (.A0(\cpuregs[4][28] ),
    .A1(\cpuregs[5][28] ),
    .A2(\cpuregs[6][28] ),
    .A3(\cpuregs[7][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1807_));
 sky130_fd_sc_hd__mux4_2 _5806_ (.A0(\cpuregs[16][28] ),
    .A1(\cpuregs[17][28] ),
    .A2(\cpuregs[18][28] ),
    .A3(\cpuregs[19][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1808_));
 sky130_fd_sc_hd__mux4_2 _5807_ (.A0(\cpuregs[20][28] ),
    .A1(\cpuregs[21][28] ),
    .A2(\cpuregs[22][28] ),
    .A3(\cpuregs[23][28] ),
    .S0(net772),
    .S1(net767),
    .X(_1809_));
 sky130_fd_sc_hd__mux4_2 _5808_ (.A0(_1806_),
    .A1(_1807_),
    .A2(_1808_),
    .A3(_1809_),
    .S0(net766),
    .S1(_0045_),
    .X(_1810_));
 sky130_fd_sc_hd__mux4_2 _5809_ (.A0(\cpuregs[8][28] ),
    .A1(\cpuregs[9][28] ),
    .A2(\cpuregs[10][28] ),
    .A3(\cpuregs[11][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1811_));
 sky130_fd_sc_hd__mux4_2 _5810_ (.A0(\cpuregs[12][28] ),
    .A1(\cpuregs[13][28] ),
    .A2(\cpuregs[14][28] ),
    .A3(\cpuregs[15][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1812_));
 sky130_fd_sc_hd__mux4_2 _5811_ (.A0(\cpuregs[24][28] ),
    .A1(\cpuregs[25][28] ),
    .A2(\cpuregs[26][28] ),
    .A3(\cpuregs[27][28] ),
    .S0(net772),
    .S1(net767),
    .X(_1813_));
 sky130_fd_sc_hd__mux4_2 _5812_ (.A0(\cpuregs[28][28] ),
    .A1(\cpuregs[29][28] ),
    .A2(\cpuregs[30][28] ),
    .A3(\cpuregs[31][28] ),
    .S0(net774),
    .S1(net768),
    .X(_1814_));
 sky130_fd_sc_hd__mux4_2 _5813_ (.A0(_1811_),
    .A1(_1812_),
    .A2(_1813_),
    .A3(_1814_),
    .S0(net766),
    .S1(_0045_),
    .X(_1815_));
 sky130_fd_sc_hd__mux2i_1 _5814_ (.A0(_1810_),
    .A1(_1815_),
    .S(net764),
    .Y(_1816_));
 sky130_fd_sc_hd__nand2_1 _5816_ (.A(\reg_pc[28] ),
    .B(net688),
    .Y(_1818_));
 sky130_fd_sc_hd__o21ai_0 _5817_ (.A1(_1687_),
    .A2(_1816_),
    .B1(_1818_),
    .Y(_1819_));
 sky130_fd_sc_hd__mux2i_1 _5818_ (.A0(net329),
    .A1(net713),
    .S(net671),
    .Y(_1820_));
 sky130_fd_sc_hd__nand2_1 _5820_ (.A(net716),
    .B(net671),
    .Y(_1822_));
 sky130_fd_sc_hd__a221oi_1 _5821_ (.A1(net658),
    .A2(_1820_),
    .B1(_1822_),
    .B2(_1797_),
    .C1(net689),
    .Y(_1823_));
 sky130_fd_sc_hd__a221oi_1 _5822_ (.A1(net690),
    .A2(_1802_),
    .B1(_1819_),
    .B2(_1728_),
    .C1(_1823_),
    .Y(_1824_));
 sky130_fd_sc_hd__nand3_1 _5823_ (.A(_1799_),
    .B(_1800_),
    .C(_1824_),
    .Y(_4616_));
 sky130_fd_sc_hd__o31ai_1 _5825_ (.A1(_0088_),
    .A2(_1781_),
    .A3(_1787_),
    .B1(_0087_),
    .Y(_1826_));
 sky130_fd_sc_hd__nand4b_1 _5826_ (.A_N(_0086_),
    .B(net690),
    .C(_1826_),
    .D(_0085_),
    .Y(_1827_));
 sky130_fd_sc_hd__mux4_2 _5828_ (.A0(net709),
    .A1(net717),
    .A2(net712),
    .A3(net714),
    .S0(net671),
    .S1(net658),
    .X(_1829_));
 sky130_fd_sc_hd__mux4_2 _5829_ (.A0(\cpuregs[0][27] ),
    .A1(\cpuregs[1][27] ),
    .A2(\cpuregs[2][27] ),
    .A3(\cpuregs[3][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1830_));
 sky130_fd_sc_hd__mux4_2 _5830_ (.A0(\cpuregs[4][27] ),
    .A1(\cpuregs[5][27] ),
    .A2(\cpuregs[6][27] ),
    .A3(\cpuregs[7][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1831_));
 sky130_fd_sc_hd__mux4_2 _5831_ (.A0(\cpuregs[16][27] ),
    .A1(\cpuregs[17][27] ),
    .A2(\cpuregs[18][27] ),
    .A3(\cpuregs[19][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1832_));
 sky130_fd_sc_hd__mux4_2 _5832_ (.A0(\cpuregs[20][27] ),
    .A1(\cpuregs[21][27] ),
    .A2(\cpuregs[22][27] ),
    .A3(\cpuregs[23][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1833_));
 sky130_fd_sc_hd__mux4_2 _5833_ (.A0(_1830_),
    .A1(_1831_),
    .A2(_1832_),
    .A3(_1833_),
    .S0(net765),
    .S1(net763),
    .X(_1834_));
 sky130_fd_sc_hd__mux4_2 _5834_ (.A0(\cpuregs[8][27] ),
    .A1(\cpuregs[9][27] ),
    .A2(\cpuregs[10][27] ),
    .A3(\cpuregs[11][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1835_));
 sky130_fd_sc_hd__mux4_2 _5835_ (.A0(\cpuregs[12][27] ),
    .A1(\cpuregs[13][27] ),
    .A2(\cpuregs[14][27] ),
    .A3(\cpuregs[15][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1836_));
 sky130_fd_sc_hd__mux4_2 _5836_ (.A0(\cpuregs[24][27] ),
    .A1(\cpuregs[25][27] ),
    .A2(\cpuregs[26][27] ),
    .A3(\cpuregs[27][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1837_));
 sky130_fd_sc_hd__mux4_2 _5837_ (.A0(\cpuregs[28][27] ),
    .A1(\cpuregs[29][27] ),
    .A2(\cpuregs[30][27] ),
    .A3(\cpuregs[31][27] ),
    .S0(net772),
    .S1(net767),
    .X(_1838_));
 sky130_fd_sc_hd__mux4_2 _5838_ (.A0(_1835_),
    .A1(_1836_),
    .A2(_1837_),
    .A3(_1838_),
    .S0(net765),
    .S1(net763),
    .X(_1839_));
 sky130_fd_sc_hd__mux2i_1 _5839_ (.A0(_1834_),
    .A1(_1839_),
    .S(net764),
    .Y(_1840_));
 sky130_fd_sc_hd__nand2_1 _5840_ (.A(\reg_pc[27] ),
    .B(net688),
    .Y(_1841_));
 sky130_fd_sc_hd__o21ai_0 _5841_ (.A1(_1687_),
    .A2(_1840_),
    .B1(_1841_),
    .Y(_1842_));
 sky130_fd_sc_hd__nor3b_1 _5842_ (.A(_0085_),
    .B(net691),
    .C_N(_0086_),
    .Y(_1843_));
 sky130_fd_sc_hd__a221oi_1 _5843_ (.A1(net747),
    .A2(_1829_),
    .B1(_1842_),
    .B2(_1728_),
    .C1(_1843_),
    .Y(_1844_));
 sky130_fd_sc_hd__o311ai_0 _5844_ (.A1(_0085_),
    .A2(net691),
    .A3(_1826_),
    .B1(_1827_),
    .C1(_1844_),
    .Y(_4615_));
 sky130_fd_sc_hd__inv_1 _5846_ (.A(_0087_),
    .Y(_1846_));
 sky130_fd_sc_hd__xnor2_1 _5847_ (.A(_1846_),
    .B(_1653_),
    .Y(_1847_));
 sky130_fd_sc_hd__mux4_2 _5848_ (.A0(net713),
    .A1(net715),
    .A2(net710),
    .A3(net718),
    .S0(net671),
    .S1(net657),
    .X(_1848_));
 sky130_fd_sc_hd__mux4_2 _5853_ (.A0(\cpuregs[0][26] ),
    .A1(\cpuregs[1][26] ),
    .A2(\cpuregs[2][26] ),
    .A3(\cpuregs[3][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1853_));
 sky130_fd_sc_hd__mux4_2 _5856_ (.A0(\cpuregs[4][26] ),
    .A1(\cpuregs[5][26] ),
    .A2(\cpuregs[6][26] ),
    .A3(\cpuregs[7][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1856_));
 sky130_fd_sc_hd__mux4_2 _5859_ (.A0(\cpuregs[16][26] ),
    .A1(\cpuregs[17][26] ),
    .A2(\cpuregs[18][26] ),
    .A3(\cpuregs[19][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1859_));
 sky130_fd_sc_hd__mux4_2 _5862_ (.A0(\cpuregs[20][26] ),
    .A1(\cpuregs[21][26] ),
    .A2(\cpuregs[22][26] ),
    .A3(\cpuregs[23][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1862_));
 sky130_fd_sc_hd__mux4_2 _5865_ (.A0(_1853_),
    .A1(_1856_),
    .A2(_1859_),
    .A3(_1862_),
    .S0(net766),
    .S1(_0045_),
    .X(_1865_));
 sky130_fd_sc_hd__mux4_2 _5868_ (.A0(\cpuregs[8][26] ),
    .A1(\cpuregs[9][26] ),
    .A2(\cpuregs[10][26] ),
    .A3(\cpuregs[11][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1868_));
 sky130_fd_sc_hd__mux4_2 _5871_ (.A0(\cpuregs[12][26] ),
    .A1(\cpuregs[13][26] ),
    .A2(\cpuregs[14][26] ),
    .A3(\cpuregs[15][26] ),
    .S0(net774),
    .S1(net768),
    .X(_1871_));
 sky130_fd_sc_hd__mux4_2 _5872_ (.A0(\cpuregs[24][26] ),
    .A1(\cpuregs[25][26] ),
    .A2(\cpuregs[26][26] ),
    .A3(\cpuregs[27][26] ),
    .S0(net772),
    .S1(net767),
    .X(_1872_));
 sky130_fd_sc_hd__mux4_2 _5875_ (.A0(\cpuregs[28][26] ),
    .A1(\cpuregs[29][26] ),
    .A2(\cpuregs[30][26] ),
    .A3(\cpuregs[31][26] ),
    .S0(net772),
    .S1(net767),
    .X(_1875_));
 sky130_fd_sc_hd__mux4_2 _5878_ (.A0(_1868_),
    .A1(_1871_),
    .A2(_1872_),
    .A3(_1875_),
    .S0(net766),
    .S1(_0045_),
    .X(_1878_));
 sky130_fd_sc_hd__mux2i_1 _5880_ (.A0(_1865_),
    .A1(_1878_),
    .S(net764),
    .Y(_1880_));
 sky130_fd_sc_hd__nand2_1 _5882_ (.A(\reg_pc[26] ),
    .B(net688),
    .Y(_1882_));
 sky130_fd_sc_hd__o21ai_0 _5883_ (.A1(_1687_),
    .A2(_1880_),
    .B1(_1882_),
    .Y(_1883_));
 sky130_fd_sc_hd__a22oi_1 _5885_ (.A1(net747),
    .A2(_1848_),
    .B1(_1883_),
    .B2(_1728_),
    .Y(_1885_));
 sky130_fd_sc_hd__o21ai_0 _5886_ (.A1(net691),
    .A2(_1847_),
    .B1(_1885_),
    .Y(_4614_));
 sky130_fd_sc_hd__or3_1 _5887_ (.A(_1757_),
    .B(_1761_),
    .C(_1778_),
    .X(_1886_));
 sky130_fd_sc_hd__nand2b_1 _5888_ (.A_N(_1779_),
    .B(_1886_),
    .Y(_1887_));
 sky130_fd_sc_hd__nand2_1 _5889_ (.A(_1785_),
    .B(_1887_),
    .Y(_1888_));
 sky130_fd_sc_hd__a211oi_1 _5890_ (.A1(_0091_),
    .A2(_1888_),
    .B1(_0089_),
    .C1(_0090_),
    .Y(_1889_));
 sky130_fd_sc_hd__nand2_1 _5891_ (.A(net690),
    .B(_1788_),
    .Y(_1890_));
 sky130_fd_sc_hd__mux4_2 _5895_ (.A0(net329),
    .A1(net714),
    .A2(net719),
    .A3(net716),
    .S0(net658),
    .S1(net671),
    .X(_1894_));
 sky130_fd_sc_hd__mux4_2 _5896_ (.A0(\cpuregs[0][25] ),
    .A1(\cpuregs[1][25] ),
    .A2(\cpuregs[2][25] ),
    .A3(\cpuregs[3][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1895_));
 sky130_fd_sc_hd__mux4_2 _5899_ (.A0(\cpuregs[4][25] ),
    .A1(\cpuregs[5][25] ),
    .A2(\cpuregs[6][25] ),
    .A3(\cpuregs[7][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1898_));
 sky130_fd_sc_hd__mux4_2 _5900_ (.A0(\cpuregs[16][25] ),
    .A1(\cpuregs[17][25] ),
    .A2(\cpuregs[18][25] ),
    .A3(\cpuregs[19][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1899_));
 sky130_fd_sc_hd__mux4_2 _5901_ (.A0(\cpuregs[20][25] ),
    .A1(\cpuregs[21][25] ),
    .A2(\cpuregs[22][25] ),
    .A3(\cpuregs[23][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1900_));
 sky130_fd_sc_hd__mux4_2 _5902_ (.A0(_1895_),
    .A1(_1898_),
    .A2(_1899_),
    .A3(_1900_),
    .S0(net766),
    .S1(_0045_),
    .X(_1901_));
 sky130_fd_sc_hd__mux4_2 _5903_ (.A0(\cpuregs[8][25] ),
    .A1(\cpuregs[9][25] ),
    .A2(\cpuregs[10][25] ),
    .A3(\cpuregs[11][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1902_));
 sky130_fd_sc_hd__mux4_2 _5904_ (.A0(\cpuregs[12][25] ),
    .A1(\cpuregs[13][25] ),
    .A2(\cpuregs[14][25] ),
    .A3(\cpuregs[15][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1903_));
 sky130_fd_sc_hd__mux4_2 _5907_ (.A0(\cpuregs[24][25] ),
    .A1(\cpuregs[25][25] ),
    .A2(\cpuregs[26][25] ),
    .A3(\cpuregs[27][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1906_));
 sky130_fd_sc_hd__mux4_2 _5908_ (.A0(\cpuregs[28][25] ),
    .A1(\cpuregs[29][25] ),
    .A2(\cpuregs[30][25] ),
    .A3(\cpuregs[31][25] ),
    .S0(net774),
    .S1(net768),
    .X(_1907_));
 sky130_fd_sc_hd__mux4_2 _5909_ (.A0(_1902_),
    .A1(_1903_),
    .A2(_1906_),
    .A3(_1907_),
    .S0(net766),
    .S1(_0045_),
    .X(_1908_));
 sky130_fd_sc_hd__mux2i_1 _5910_ (.A0(_1901_),
    .A1(_1908_),
    .S(net764),
    .Y(_1909_));
 sky130_fd_sc_hd__nand2_1 _5911_ (.A(\reg_pc[25] ),
    .B(net688),
    .Y(_1910_));
 sky130_fd_sc_hd__o21ai_0 _5912_ (.A1(_1687_),
    .A2(_1909_),
    .B1(_1910_),
    .Y(_1911_));
 sky130_fd_sc_hd__a22oi_1 _5913_ (.A1(net747),
    .A2(_1894_),
    .B1(_1911_),
    .B2(_1728_),
    .Y(_1912_));
 sky130_fd_sc_hd__o21ai_0 _5914_ (.A1(_1889_),
    .A2(_1890_),
    .B1(_1912_),
    .Y(_4613_));
 sky130_fd_sc_hd__xor2_1 _5915_ (.A(_0091_),
    .B(_1650_),
    .X(_1913_));
 sky130_fd_sc_hd__mux4_2 _5916_ (.A0(net712),
    .A1(net715),
    .A2(net720),
    .A3(net717),
    .S0(net658),
    .S1(net671),
    .X(_1914_));
 sky130_fd_sc_hd__mux4_2 _5917_ (.A0(\cpuregs[0][24] ),
    .A1(\cpuregs[1][24] ),
    .A2(\cpuregs[2][24] ),
    .A3(\cpuregs[3][24] ),
    .S0(net774),
    .S1(net768),
    .X(_1915_));
 sky130_fd_sc_hd__mux4_2 _5918_ (.A0(\cpuregs[4][24] ),
    .A1(\cpuregs[5][24] ),
    .A2(\cpuregs[6][24] ),
    .A3(\cpuregs[7][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1916_));
 sky130_fd_sc_hd__mux4_2 _5919_ (.A0(\cpuregs[16][24] ),
    .A1(\cpuregs[17][24] ),
    .A2(\cpuregs[18][24] ),
    .A3(\cpuregs[19][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1917_));
 sky130_fd_sc_hd__mux4_2 _5920_ (.A0(\cpuregs[20][24] ),
    .A1(\cpuregs[21][24] ),
    .A2(\cpuregs[22][24] ),
    .A3(\cpuregs[23][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1918_));
 sky130_fd_sc_hd__mux4_2 _5922_ (.A0(_1915_),
    .A1(_1916_),
    .A2(_1917_),
    .A3(_1918_),
    .S0(net766),
    .S1(_0045_),
    .X(_1920_));
 sky130_fd_sc_hd__mux4_2 _5923_ (.A0(\cpuregs[8][24] ),
    .A1(\cpuregs[9][24] ),
    .A2(\cpuregs[10][24] ),
    .A3(\cpuregs[11][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1921_));
 sky130_fd_sc_hd__mux4_2 _5924_ (.A0(\cpuregs[12][24] ),
    .A1(\cpuregs[13][24] ),
    .A2(\cpuregs[14][24] ),
    .A3(\cpuregs[15][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1922_));
 sky130_fd_sc_hd__mux4_2 _5925_ (.A0(\cpuregs[24][24] ),
    .A1(\cpuregs[25][24] ),
    .A2(\cpuregs[26][24] ),
    .A3(\cpuregs[27][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1923_));
 sky130_fd_sc_hd__mux4_2 _5926_ (.A0(\cpuregs[28][24] ),
    .A1(\cpuregs[29][24] ),
    .A2(\cpuregs[30][24] ),
    .A3(\cpuregs[31][24] ),
    .S0(net772),
    .S1(net767),
    .X(_1924_));
 sky130_fd_sc_hd__mux4_2 _5927_ (.A0(_1921_),
    .A1(_1922_),
    .A2(_1923_),
    .A3(_1924_),
    .S0(net766),
    .S1(_0045_),
    .X(_1925_));
 sky130_fd_sc_hd__mux2i_1 _5928_ (.A0(_1920_),
    .A1(_1925_),
    .S(net764),
    .Y(_1926_));
 sky130_fd_sc_hd__nand2_1 _5929_ (.A(\reg_pc[24] ),
    .B(net688),
    .Y(_1927_));
 sky130_fd_sc_hd__o21ai_0 _5930_ (.A1(_1687_),
    .A2(_1926_),
    .B1(_1927_),
    .Y(_1928_));
 sky130_fd_sc_hd__a22oi_1 _5931_ (.A1(net747),
    .A2(_1914_),
    .B1(_1928_),
    .B2(_1728_),
    .Y(_1929_));
 sky130_fd_sc_hd__o21ai_0 _5932_ (.A1(net691),
    .A2(_1913_),
    .B1(_1929_),
    .Y(_4612_));
 sky130_fd_sc_hd__a31oi_1 _5933_ (.A1(_0101_),
    .A2(_1618_),
    .A3(_1886_),
    .B1(_1784_),
    .Y(_1930_));
 sky130_fd_sc_hd__xor2_1 _5934_ (.A(_0093_),
    .B(_1930_),
    .X(_1931_));
 sky130_fd_sc_hd__mux4_2 _5937_ (.A0(\cpuregs[0][23] ),
    .A1(\cpuregs[1][23] ),
    .A2(\cpuregs[2][23] ),
    .A3(\cpuregs[3][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1934_));
 sky130_fd_sc_hd__mux4_2 _5940_ (.A0(\cpuregs[4][23] ),
    .A1(\cpuregs[5][23] ),
    .A2(\cpuregs[6][23] ),
    .A3(\cpuregs[7][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1937_));
 sky130_fd_sc_hd__mux4_2 _5943_ (.A0(\cpuregs[16][23] ),
    .A1(\cpuregs[17][23] ),
    .A2(\cpuregs[18][23] ),
    .A3(\cpuregs[19][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1940_));
 sky130_fd_sc_hd__mux4_2 _5946_ (.A0(\cpuregs[20][23] ),
    .A1(\cpuregs[21][23] ),
    .A2(\cpuregs[22][23] ),
    .A3(\cpuregs[23][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1943_));
 sky130_fd_sc_hd__mux4_2 _5948_ (.A0(_1934_),
    .A1(_1937_),
    .A2(_1940_),
    .A3(_1943_),
    .S0(net766),
    .S1(net763),
    .X(_1945_));
 sky130_fd_sc_hd__mux4_2 _5949_ (.A0(\cpuregs[8][23] ),
    .A1(\cpuregs[9][23] ),
    .A2(\cpuregs[10][23] ),
    .A3(\cpuregs[11][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1946_));
 sky130_fd_sc_hd__mux4_2 _5950_ (.A0(\cpuregs[12][23] ),
    .A1(\cpuregs[13][23] ),
    .A2(\cpuregs[14][23] ),
    .A3(\cpuregs[15][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1947_));
 sky130_fd_sc_hd__mux4_2 _5951_ (.A0(\cpuregs[24][23] ),
    .A1(\cpuregs[25][23] ),
    .A2(\cpuregs[26][23] ),
    .A3(\cpuregs[27][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1948_));
 sky130_fd_sc_hd__mux4_2 _5952_ (.A0(\cpuregs[28][23] ),
    .A1(\cpuregs[29][23] ),
    .A2(\cpuregs[30][23] ),
    .A3(\cpuregs[31][23] ),
    .S0(net772),
    .S1(net767),
    .X(_1949_));
 sky130_fd_sc_hd__mux4_2 _5953_ (.A0(_1946_),
    .A1(_1947_),
    .A2(_1948_),
    .A3(_1949_),
    .S0(net765),
    .S1(net763),
    .X(_1950_));
 sky130_fd_sc_hd__mux2i_1 _5954_ (.A0(_1945_),
    .A1(_1950_),
    .S(net764),
    .Y(_1951_));
 sky130_fd_sc_hd__nand2_1 _5955_ (.A(\reg_pc[23] ),
    .B(net688),
    .Y(_1952_));
 sky130_fd_sc_hd__o21ai_0 _5956_ (.A1(_1687_),
    .A2(_1951_),
    .B1(_1952_),
    .Y(_1953_));
 sky130_fd_sc_hd__mux4_2 _5957_ (.A0(net713),
    .A1(net716),
    .A2(net722),
    .A3(net718),
    .S0(net658),
    .S1(net671),
    .X(_1954_));
 sky130_fd_sc_hd__a22oi_1 _5958_ (.A1(_1728_),
    .A2(_1953_),
    .B1(_1954_),
    .B2(net747),
    .Y(_1955_));
 sky130_fd_sc_hd__o21ai_0 _5959_ (.A1(net691),
    .A2(_1931_),
    .B1(_1955_),
    .Y(_4611_));
 sky130_fd_sc_hd__nor2_1 _5960_ (.A(_1620_),
    .B(_1638_),
    .Y(_1956_));
 sky130_fd_sc_hd__nor2_1 _5961_ (.A(_1647_),
    .B(_1956_),
    .Y(_1957_));
 sky130_fd_sc_hd__xor2_1 _5962_ (.A(_0101_),
    .B(_1957_),
    .X(_1958_));
 sky130_fd_sc_hd__mux4_2 _5963_ (.A0(\cpuregs[0][22] ),
    .A1(\cpuregs[1][22] ),
    .A2(\cpuregs[2][22] ),
    .A3(\cpuregs[3][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1959_));
 sky130_fd_sc_hd__mux4_2 _5964_ (.A0(\cpuregs[4][22] ),
    .A1(\cpuregs[5][22] ),
    .A2(\cpuregs[6][22] ),
    .A3(\cpuregs[7][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1960_));
 sky130_fd_sc_hd__mux4_2 _5965_ (.A0(\cpuregs[16][22] ),
    .A1(\cpuregs[17][22] ),
    .A2(\cpuregs[18][22] ),
    .A3(\cpuregs[19][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1961_));
 sky130_fd_sc_hd__mux4_2 _5966_ (.A0(\cpuregs[20][22] ),
    .A1(\cpuregs[21][22] ),
    .A2(\cpuregs[22][22] ),
    .A3(\cpuregs[23][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1962_));
 sky130_fd_sc_hd__mux4_2 _5967_ (.A0(_1959_),
    .A1(_1960_),
    .A2(_1961_),
    .A3(_1962_),
    .S0(net765),
    .S1(net763),
    .X(_1963_));
 sky130_fd_sc_hd__mux4_2 _5968_ (.A0(\cpuregs[8][22] ),
    .A1(\cpuregs[9][22] ),
    .A2(\cpuregs[10][22] ),
    .A3(\cpuregs[11][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1964_));
 sky130_fd_sc_hd__mux4_2 _5969_ (.A0(\cpuregs[12][22] ),
    .A1(\cpuregs[13][22] ),
    .A2(\cpuregs[14][22] ),
    .A3(\cpuregs[15][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1965_));
 sky130_fd_sc_hd__mux4_2 _5970_ (.A0(\cpuregs[24][22] ),
    .A1(\cpuregs[25][22] ),
    .A2(\cpuregs[26][22] ),
    .A3(\cpuregs[27][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1966_));
 sky130_fd_sc_hd__mux4_2 _5971_ (.A0(\cpuregs[28][22] ),
    .A1(\cpuregs[29][22] ),
    .A2(\cpuregs[30][22] ),
    .A3(\cpuregs[31][22] ),
    .S0(net773),
    .S1(net768),
    .X(_1967_));
 sky130_fd_sc_hd__mux4_2 _5972_ (.A0(_1964_),
    .A1(_1965_),
    .A2(_1966_),
    .A3(_1967_),
    .S0(net765),
    .S1(net763),
    .X(_1968_));
 sky130_fd_sc_hd__mux2i_1 _5973_ (.A0(_1963_),
    .A1(_1968_),
    .S(net764),
    .Y(_1969_));
 sky130_fd_sc_hd__nand2_1 _5974_ (.A(\reg_pc[22] ),
    .B(net688),
    .Y(_1970_));
 sky130_fd_sc_hd__o21ai_0 _5975_ (.A1(_1687_),
    .A2(_1969_),
    .B1(_1970_),
    .Y(_1971_));
 sky130_fd_sc_hd__mux4_2 _5976_ (.A0(net714),
    .A1(net717),
    .A2(net723),
    .A3(net719),
    .S0(net658),
    .S1(net671),
    .X(_1972_));
 sky130_fd_sc_hd__a22oi_1 _5978_ (.A1(_1728_),
    .A2(_1971_),
    .B1(_1972_),
    .B2(net747),
    .Y(_1974_));
 sky130_fd_sc_hd__o21ai_0 _5979_ (.A1(net691),
    .A2(_1958_),
    .B1(_1974_),
    .Y(_4610_));
 sky130_fd_sc_hd__a21o_1 _5980_ (.A1(_0173_),
    .A2(_1886_),
    .B1(_0172_),
    .X(_1975_));
 sky130_fd_sc_hd__a21oi_1 _5981_ (.A1(_0171_),
    .A2(_1975_),
    .B1(_0170_),
    .Y(_1976_));
 sky130_fd_sc_hd__xor2_1 _5982_ (.A(_0169_),
    .B(_1976_),
    .X(_1977_));
 sky130_fd_sc_hd__mux4_2 _5983_ (.A0(\cpuregs[0][21] ),
    .A1(\cpuregs[1][21] ),
    .A2(\cpuregs[2][21] ),
    .A3(\cpuregs[3][21] ),
    .S0(net773),
    .S1(net768),
    .X(_1978_));
 sky130_fd_sc_hd__mux4_2 _5984_ (.A0(\cpuregs[4][21] ),
    .A1(\cpuregs[5][21] ),
    .A2(\cpuregs[6][21] ),
    .A3(\cpuregs[7][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1979_));
 sky130_fd_sc_hd__mux4_2 _5985_ (.A0(\cpuregs[16][21] ),
    .A1(\cpuregs[17][21] ),
    .A2(\cpuregs[18][21] ),
    .A3(\cpuregs[19][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1980_));
 sky130_fd_sc_hd__mux4_2 _5986_ (.A0(\cpuregs[20][21] ),
    .A1(\cpuregs[21][21] ),
    .A2(\cpuregs[22][21] ),
    .A3(\cpuregs[23][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1981_));
 sky130_fd_sc_hd__mux4_2 _5987_ (.A0(_1978_),
    .A1(_1979_),
    .A2(_1980_),
    .A3(_1981_),
    .S0(net765),
    .S1(net763),
    .X(_1982_));
 sky130_fd_sc_hd__mux4_2 _5988_ (.A0(\cpuregs[8][21] ),
    .A1(\cpuregs[9][21] ),
    .A2(\cpuregs[10][21] ),
    .A3(\cpuregs[11][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1983_));
 sky130_fd_sc_hd__mux4_2 _5989_ (.A0(\cpuregs[12][21] ),
    .A1(\cpuregs[13][21] ),
    .A2(\cpuregs[14][21] ),
    .A3(\cpuregs[15][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1984_));
 sky130_fd_sc_hd__mux4_2 _5990_ (.A0(\cpuregs[24][21] ),
    .A1(\cpuregs[25][21] ),
    .A2(\cpuregs[26][21] ),
    .A3(\cpuregs[27][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1985_));
 sky130_fd_sc_hd__mux4_2 _5991_ (.A0(\cpuregs[28][21] ),
    .A1(\cpuregs[29][21] ),
    .A2(\cpuregs[30][21] ),
    .A3(\cpuregs[31][21] ),
    .S0(net770),
    .S1(net768),
    .X(_1986_));
 sky130_fd_sc_hd__mux4_2 _5992_ (.A0(_1983_),
    .A1(_1984_),
    .A2(_1985_),
    .A3(_1986_),
    .S0(net765),
    .S1(net763),
    .X(_1987_));
 sky130_fd_sc_hd__mux2i_1 _5993_ (.A0(_1982_),
    .A1(_1987_),
    .S(net764),
    .Y(_1988_));
 sky130_fd_sc_hd__nand2_1 _5994_ (.A(\reg_pc[21] ),
    .B(net688),
    .Y(_1989_));
 sky130_fd_sc_hd__o21ai_0 _5995_ (.A1(_1687_),
    .A2(_1988_),
    .B1(_1989_),
    .Y(_1990_));
 sky130_fd_sc_hd__mux4_2 _5996_ (.A0(net715),
    .A1(net718),
    .A2(net724),
    .A3(net720),
    .S0(net658),
    .S1(net671),
    .X(_1991_));
 sky130_fd_sc_hd__a22oi_1 _5997_ (.A1(_1728_),
    .A2(_1990_),
    .B1(_1991_),
    .B2(net747),
    .Y(_1992_));
 sky130_fd_sc_hd__o21ai_0 _5998_ (.A1(net691),
    .A2(_1977_),
    .B1(_1992_),
    .Y(_4609_));
 sky130_fd_sc_hd__nand2b_1 _5999_ (.A_N(_1640_),
    .B(_1638_),
    .Y(_1993_));
 sky130_fd_sc_hd__a21o_1 _6000_ (.A1(_0177_),
    .A2(_0178_),
    .B1(_0176_),
    .X(_1994_));
 sky130_fd_sc_hd__a21oi_1 _6001_ (.A1(_0175_),
    .A2(_1994_),
    .B1(_0174_),
    .Y(_1995_));
 sky130_fd_sc_hd__nor2b_1 _6002_ (.A(_1995_),
    .B_N(_0173_),
    .Y(_1996_));
 sky130_fd_sc_hd__a311oi_1 _6003_ (.A1(_0173_),
    .A2(_1619_),
    .A3(_1993_),
    .B1(_1996_),
    .C1(_0172_),
    .Y(_1997_));
 sky130_fd_sc_hd__xor2_1 _6004_ (.A(_0171_),
    .B(_1997_),
    .X(_1998_));
 sky130_fd_sc_hd__mux4_2 _6005_ (.A0(\cpuregs[0][20] ),
    .A1(\cpuregs[1][20] ),
    .A2(\cpuregs[2][20] ),
    .A3(\cpuregs[3][20] ),
    .S0(net772),
    .S1(net767),
    .X(_1999_));
 sky130_fd_sc_hd__mux4_2 _6006_ (.A0(\cpuregs[4][20] ),
    .A1(\cpuregs[5][20] ),
    .A2(\cpuregs[6][20] ),
    .A3(\cpuregs[7][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2000_));
 sky130_fd_sc_hd__mux4_2 _6007_ (.A0(\cpuregs[16][20] ),
    .A1(\cpuregs[17][20] ),
    .A2(\cpuregs[18][20] ),
    .A3(\cpuregs[19][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2001_));
 sky130_fd_sc_hd__mux4_2 _6008_ (.A0(\cpuregs[20][20] ),
    .A1(\cpuregs[21][20] ),
    .A2(\cpuregs[22][20] ),
    .A3(\cpuregs[23][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2002_));
 sky130_fd_sc_hd__mux4_2 _6009_ (.A0(_1999_),
    .A1(_2000_),
    .A2(_2001_),
    .A3(_2002_),
    .S0(net766),
    .S1(_0045_),
    .X(_2003_));
 sky130_fd_sc_hd__mux4_2 _6010_ (.A0(\cpuregs[8][20] ),
    .A1(\cpuregs[9][20] ),
    .A2(\cpuregs[10][20] ),
    .A3(\cpuregs[11][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2004_));
 sky130_fd_sc_hd__mux4_2 _6011_ (.A0(\cpuregs[12][20] ),
    .A1(\cpuregs[13][20] ),
    .A2(\cpuregs[14][20] ),
    .A3(\cpuregs[15][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2005_));
 sky130_fd_sc_hd__mux4_2 _6012_ (.A0(\cpuregs[24][20] ),
    .A1(\cpuregs[25][20] ),
    .A2(\cpuregs[26][20] ),
    .A3(\cpuregs[27][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2006_));
 sky130_fd_sc_hd__mux4_2 _6013_ (.A0(\cpuregs[28][20] ),
    .A1(\cpuregs[29][20] ),
    .A2(\cpuregs[30][20] ),
    .A3(\cpuregs[31][20] ),
    .S0(net772),
    .S1(net767),
    .X(_2007_));
 sky130_fd_sc_hd__mux4_2 _6014_ (.A0(_2004_),
    .A1(_2005_),
    .A2(_2006_),
    .A3(_2007_),
    .S0(net766),
    .S1(_0045_),
    .X(_2008_));
 sky130_fd_sc_hd__mux2i_1 _6015_ (.A0(_2003_),
    .A1(_2008_),
    .S(net764),
    .Y(_2009_));
 sky130_fd_sc_hd__nand2_1 _6016_ (.A(\reg_pc[20] ),
    .B(net688),
    .Y(_2010_));
 sky130_fd_sc_hd__o21ai_0 _6017_ (.A1(_1687_),
    .A2(_2009_),
    .B1(_2010_),
    .Y(_2011_));
 sky130_fd_sc_hd__mux4_2 _6018_ (.A0(net719),
    .A1(net716),
    .A2(net722),
    .A3(net725),
    .S0(net657),
    .S1(net671),
    .X(_2012_));
 sky130_fd_sc_hd__a22oi_1 _6019_ (.A1(_1728_),
    .A2(_2011_),
    .B1(_2012_),
    .B2(net747),
    .Y(_2013_));
 sky130_fd_sc_hd__o21ai_0 _6020_ (.A1(net691),
    .A2(_1998_),
    .B1(_2013_),
    .Y(_4608_));
 sky130_fd_sc_hd__xnor2_1 _6021_ (.A(_0173_),
    .B(_1886_),
    .Y(_2014_));
 sky130_fd_sc_hd__mux4_2 _6023_ (.A0(_0108_),
    .A1(_0246_),
    .A2(_0123_),
    .A3(_0313_),
    .S0(net671),
    .S1(net657),
    .X(_2016_));
 sky130_fd_sc_hd__mux4_2 _6024_ (.A0(\cpuregs[0][19] ),
    .A1(\cpuregs[1][19] ),
    .A2(\cpuregs[2][19] ),
    .A3(\cpuregs[3][19] ),
    .S0(net771),
    .S1(net768),
    .X(_2017_));
 sky130_fd_sc_hd__mux4_2 _6025_ (.A0(\cpuregs[4][19] ),
    .A1(\cpuregs[5][19] ),
    .A2(\cpuregs[6][19] ),
    .A3(\cpuregs[7][19] ),
    .S0(net771),
    .S1(net768),
    .X(_2018_));
 sky130_fd_sc_hd__mux4_2 _6026_ (.A0(\cpuregs[16][19] ),
    .A1(\cpuregs[17][19] ),
    .A2(\cpuregs[18][19] ),
    .A3(\cpuregs[19][19] ),
    .S0(net771),
    .S1(net768),
    .X(_2019_));
 sky130_fd_sc_hd__mux4_2 _6027_ (.A0(\cpuregs[20][19] ),
    .A1(\cpuregs[21][19] ),
    .A2(\cpuregs[22][19] ),
    .A3(\cpuregs[23][19] ),
    .S0(net771),
    .S1(net768),
    .X(_2020_));
 sky130_fd_sc_hd__mux4_2 _6028_ (.A0(_2017_),
    .A1(_2018_),
    .A2(_2019_),
    .A3(_2020_),
    .S0(net765),
    .S1(net763),
    .X(_2021_));
 sky130_fd_sc_hd__mux4_2 _6029_ (.A0(\cpuregs[8][19] ),
    .A1(\cpuregs[9][19] ),
    .A2(\cpuregs[10][19] ),
    .A3(\cpuregs[11][19] ),
    .S0(net771),
    .S1(net769),
    .X(_2022_));
 sky130_fd_sc_hd__mux4_2 _6030_ (.A0(\cpuregs[12][19] ),
    .A1(\cpuregs[13][19] ),
    .A2(\cpuregs[14][19] ),
    .A3(\cpuregs[15][19] ),
    .S0(net771),
    .S1(net769),
    .X(_2023_));
 sky130_fd_sc_hd__mux4_2 _6031_ (.A0(\cpuregs[24][19] ),
    .A1(\cpuregs[25][19] ),
    .A2(\cpuregs[26][19] ),
    .A3(\cpuregs[27][19] ),
    .S0(net771),
    .S1(net769),
    .X(_2024_));
 sky130_fd_sc_hd__mux4_2 _6032_ (.A0(\cpuregs[28][19] ),
    .A1(\cpuregs[29][19] ),
    .A2(\cpuregs[30][19] ),
    .A3(\cpuregs[31][19] ),
    .S0(net771),
    .S1(net769),
    .X(_2025_));
 sky130_fd_sc_hd__mux4_2 _6034_ (.A0(_2022_),
    .A1(_2023_),
    .A2(_2024_),
    .A3(_2025_),
    .S0(net766),
    .S1(net763),
    .X(_2027_));
 sky130_fd_sc_hd__mux2i_1 _6035_ (.A0(_2021_),
    .A1(_2027_),
    .S(net764),
    .Y(_2028_));
 sky130_fd_sc_hd__nand2_1 _6036_ (.A(\reg_pc[19] ),
    .B(net688),
    .Y(_2029_));
 sky130_fd_sc_hd__o21ai_0 _6037_ (.A1(_1687_),
    .A2(_2028_),
    .B1(_2029_),
    .Y(_2030_));
 sky130_fd_sc_hd__nand2_1 _6038_ (.A(_1728_),
    .B(_2030_),
    .Y(_2031_));
 sky130_fd_sc_hd__o221ai_1 _6039_ (.A1(net691),
    .A2(_2014_),
    .B1(_2016_),
    .B2(net689),
    .C1(_2031_),
    .Y(_4606_));
 sky130_fd_sc_hd__nand2_1 _6040_ (.A(_0177_),
    .B(_0179_),
    .Y(_2032_));
 sky130_fd_sc_hd__o21ai_0 _6041_ (.A1(_1638_),
    .A2(_2032_),
    .B1(_1642_),
    .Y(_2033_));
 sky130_fd_sc_hd__xor2_1 _6042_ (.A(_0175_),
    .B(_2033_),
    .X(_2034_));
 sky130_fd_sc_hd__mux4_2 _6043_ (.A0(net718),
    .A1(net722),
    .A2(net727),
    .A3(net724),
    .S0(net658),
    .S1(net671),
    .X(_2035_));
 sky130_fd_sc_hd__nand2_1 _6044_ (.A(net689),
    .B(net691),
    .Y(_2036_));
 sky130_fd_sc_hd__mux4_2 _6045_ (.A0(\cpuregs[0][18] ),
    .A1(\cpuregs[1][18] ),
    .A2(\cpuregs[2][18] ),
    .A3(\cpuregs[3][18] ),
    .S0(net771),
    .S1(net769),
    .X(_2037_));
 sky130_fd_sc_hd__mux4_2 _6046_ (.A0(\cpuregs[4][18] ),
    .A1(\cpuregs[5][18] ),
    .A2(\cpuregs[6][18] ),
    .A3(\cpuregs[7][18] ),
    .S0(net770),
    .S1(net768),
    .X(_2038_));
 sky130_fd_sc_hd__mux4_2 _6047_ (.A0(\cpuregs[16][18] ),
    .A1(\cpuregs[17][18] ),
    .A2(\cpuregs[18][18] ),
    .A3(\cpuregs[19][18] ),
    .S0(net770),
    .S1(net768),
    .X(_2039_));
 sky130_fd_sc_hd__mux4_2 _6048_ (.A0(\cpuregs[20][18] ),
    .A1(\cpuregs[21][18] ),
    .A2(\cpuregs[22][18] ),
    .A3(\cpuregs[23][18] ),
    .S0(net770),
    .S1(net768),
    .X(_2040_));
 sky130_fd_sc_hd__mux4_2 _6049_ (.A0(_2037_),
    .A1(_2038_),
    .A2(_2039_),
    .A3(_2040_),
    .S0(net765),
    .S1(net763),
    .X(_2041_));
 sky130_fd_sc_hd__mux4_2 _6050_ (.A0(\cpuregs[8][18] ),
    .A1(\cpuregs[9][18] ),
    .A2(\cpuregs[10][18] ),
    .A3(\cpuregs[11][18] ),
    .S0(net770),
    .S1(net769),
    .X(_2042_));
 sky130_fd_sc_hd__mux4_2 _6051_ (.A0(\cpuregs[12][18] ),
    .A1(\cpuregs[13][18] ),
    .A2(\cpuregs[14][18] ),
    .A3(\cpuregs[15][18] ),
    .S0(net770),
    .S1(net769),
    .X(_2043_));
 sky130_fd_sc_hd__mux4_2 _6052_ (.A0(\cpuregs[24][18] ),
    .A1(\cpuregs[25][18] ),
    .A2(\cpuregs[26][18] ),
    .A3(\cpuregs[27][18] ),
    .S0(net770),
    .S1(net769),
    .X(_2044_));
 sky130_fd_sc_hd__mux4_2 _6053_ (.A0(\cpuregs[28][18] ),
    .A1(\cpuregs[29][18] ),
    .A2(\cpuregs[30][18] ),
    .A3(\cpuregs[31][18] ),
    .S0(net770),
    .S1(net769),
    .X(_2045_));
 sky130_fd_sc_hd__mux4_2 _6054_ (.A0(_2042_),
    .A1(_2043_),
    .A2(_2044_),
    .A3(_2045_),
    .S0(net765),
    .S1(net763),
    .X(_2046_));
 sky130_fd_sc_hd__mux2i_1 _6055_ (.A0(_2041_),
    .A1(_2046_),
    .S(net764),
    .Y(_2047_));
 sky130_fd_sc_hd__nor2_1 _6056_ (.A(_1687_),
    .B(_2047_),
    .Y(_2048_));
 sky130_fd_sc_hd__a21oi_1 _6057_ (.A1(\reg_pc[18] ),
    .A2(net688),
    .B1(_2048_),
    .Y(_2049_));
 sky130_fd_sc_hd__nor2_1 _6058_ (.A(_2036_),
    .B(_2049_),
    .Y(_2050_));
 sky130_fd_sc_hd__a221o_1 _6059_ (.A1(net690),
    .A2(_2034_),
    .B1(_2035_),
    .B2(net746),
    .C1(_2050_),
    .X(_4605_));
 sky130_fd_sc_hd__nor2_1 _6060_ (.A(_0186_),
    .B(_0188_),
    .Y(_2051_));
 sky130_fd_sc_hd__or3_1 _6061_ (.A(_0186_),
    .B(_0188_),
    .C(_0189_),
    .X(_2052_));
 sky130_fd_sc_hd__o21ai_0 _6062_ (.A1(_0186_),
    .A2(_0187_),
    .B1(_2052_),
    .Y(_2053_));
 sky130_fd_sc_hd__a31oi_1 _6063_ (.A1(_1768_),
    .A2(_1776_),
    .A3(_2051_),
    .B1(_2053_),
    .Y(_2054_));
 sky130_fd_sc_hd__a21oi_1 _6064_ (.A1(_0185_),
    .A2(_2054_),
    .B1(_0184_),
    .Y(_2055_));
 sky130_fd_sc_hd__o21ai_0 _6065_ (.A1(_1637_),
    .A2(_2055_),
    .B1(_1753_),
    .Y(_2056_));
 sky130_fd_sc_hd__o21ai_0 _6066_ (.A1(_0180_),
    .A2(_2056_),
    .B1(_0179_),
    .Y(_2057_));
 sky130_fd_sc_hd__nand2b_1 _6067_ (.A_N(_0178_),
    .B(_2057_),
    .Y(_2058_));
 sky130_fd_sc_hd__xnor2_1 _6068_ (.A(_0177_),
    .B(_2058_),
    .Y(_2059_));
 sky130_fd_sc_hd__mux4_2 _6069_ (.A0(net719),
    .A1(net723),
    .A2(net728),
    .A3(net725),
    .S0(net658),
    .S1(net671),
    .X(_2060_));
 sky130_fd_sc_hd__mux4_2 _6070_ (.A0(\cpuregs[0][17] ),
    .A1(\cpuregs[1][17] ),
    .A2(\cpuregs[2][17] ),
    .A3(\cpuregs[3][17] ),
    .S0(net774),
    .S1(net768),
    .X(_2061_));
 sky130_fd_sc_hd__mux4_2 _6071_ (.A0(\cpuregs[4][17] ),
    .A1(\cpuregs[5][17] ),
    .A2(\cpuregs[6][17] ),
    .A3(\cpuregs[7][17] ),
    .S0(net774),
    .S1(net768),
    .X(_2062_));
 sky130_fd_sc_hd__mux4_2 _6074_ (.A0(\cpuregs[16][17] ),
    .A1(\cpuregs[17][17] ),
    .A2(\cpuregs[18][17] ),
    .A3(\cpuregs[19][17] ),
    .S0(net773),
    .S1(net767),
    .X(_2065_));
 sky130_fd_sc_hd__mux4_2 _6075_ (.A0(\cpuregs[20][17] ),
    .A1(\cpuregs[21][17] ),
    .A2(\cpuregs[22][17] ),
    .A3(\cpuregs[23][17] ),
    .S0(net773),
    .S1(net767),
    .X(_2066_));
 sky130_fd_sc_hd__mux4_2 _6076_ (.A0(_2061_),
    .A1(_2062_),
    .A2(_2065_),
    .A3(_2066_),
    .S0(net766),
    .S1(_0045_),
    .X(_2067_));
 sky130_fd_sc_hd__mux4_2 _6077_ (.A0(\cpuregs[8][17] ),
    .A1(\cpuregs[9][17] ),
    .A2(\cpuregs[10][17] ),
    .A3(\cpuregs[11][17] ),
    .S0(net774),
    .S1(net767),
    .X(_2068_));
 sky130_fd_sc_hd__mux4_2 _6078_ (.A0(\cpuregs[12][17] ),
    .A1(\cpuregs[13][17] ),
    .A2(\cpuregs[14][17] ),
    .A3(\cpuregs[15][17] ),
    .S0(net773),
    .S1(net767),
    .X(_2069_));
 sky130_fd_sc_hd__mux4_2 _6079_ (.A0(\cpuregs[24][17] ),
    .A1(\cpuregs[25][17] ),
    .A2(\cpuregs[26][17] ),
    .A3(\cpuregs[27][17] ),
    .S0(net773),
    .S1(net767),
    .X(_2070_));
 sky130_fd_sc_hd__mux4_2 _6080_ (.A0(\cpuregs[28][17] ),
    .A1(\cpuregs[29][17] ),
    .A2(\cpuregs[30][17] ),
    .A3(\cpuregs[31][17] ),
    .S0(net773),
    .S1(net767),
    .X(_2071_));
 sky130_fd_sc_hd__mux4_2 _6081_ (.A0(_2068_),
    .A1(_2069_),
    .A2(_2070_),
    .A3(_2071_),
    .S0(net766),
    .S1(_0045_),
    .X(_2072_));
 sky130_fd_sc_hd__mux2i_1 _6082_ (.A0(_2067_),
    .A1(_2072_),
    .S(net764),
    .Y(_2073_));
 sky130_fd_sc_hd__nand2_1 _6083_ (.A(\reg_pc[17] ),
    .B(net688),
    .Y(_2074_));
 sky130_fd_sc_hd__o21ai_0 _6084_ (.A1(_1687_),
    .A2(_2073_),
    .B1(_2074_),
    .Y(_2075_));
 sky130_fd_sc_hd__a22oi_1 _6085_ (.A1(net746),
    .A2(_2060_),
    .B1(_2075_),
    .B2(_1728_),
    .Y(_2076_));
 sky130_fd_sc_hd__o21ai_0 _6086_ (.A1(net691),
    .A2(_2059_),
    .B1(_2076_),
    .Y(_4604_));
 sky130_fd_sc_hd__xnor2_1 _6087_ (.A(_0179_),
    .B(_1993_),
    .Y(_2077_));
 sky130_fd_sc_hd__mux4_2 _6088_ (.A0(net720),
    .A1(net724),
    .A2(net729),
    .A3(net726),
    .S0(net658),
    .S1(net671),
    .X(_2078_));
 sky130_fd_sc_hd__mux4_2 _6089_ (.A0(\cpuregs[0][16] ),
    .A1(\cpuregs[1][16] ),
    .A2(\cpuregs[2][16] ),
    .A3(\cpuregs[3][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2079_));
 sky130_fd_sc_hd__mux4_2 _6090_ (.A0(\cpuregs[4][16] ),
    .A1(\cpuregs[5][16] ),
    .A2(\cpuregs[6][16] ),
    .A3(\cpuregs[7][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2080_));
 sky130_fd_sc_hd__mux4_2 _6091_ (.A0(\cpuregs[16][16] ),
    .A1(\cpuregs[17][16] ),
    .A2(\cpuregs[18][16] ),
    .A3(\cpuregs[19][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2081_));
 sky130_fd_sc_hd__mux4_2 _6094_ (.A0(\cpuregs[20][16] ),
    .A1(\cpuregs[21][16] ),
    .A2(\cpuregs[22][16] ),
    .A3(\cpuregs[23][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2084_));
 sky130_fd_sc_hd__mux4_2 _6095_ (.A0(_2079_),
    .A1(_2080_),
    .A2(_2081_),
    .A3(_2084_),
    .S0(net765),
    .S1(net763),
    .X(_2085_));
 sky130_fd_sc_hd__mux4_2 _6096_ (.A0(\cpuregs[8][16] ),
    .A1(\cpuregs[9][16] ),
    .A2(\cpuregs[10][16] ),
    .A3(\cpuregs[11][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2086_));
 sky130_fd_sc_hd__mux4_2 _6097_ (.A0(\cpuregs[12][16] ),
    .A1(\cpuregs[13][16] ),
    .A2(\cpuregs[14][16] ),
    .A3(\cpuregs[15][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2087_));
 sky130_fd_sc_hd__mux4_2 _6098_ (.A0(\cpuregs[24][16] ),
    .A1(\cpuregs[25][16] ),
    .A2(\cpuregs[26][16] ),
    .A3(\cpuregs[27][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2088_));
 sky130_fd_sc_hd__mux4_2 _6099_ (.A0(\cpuregs[28][16] ),
    .A1(\cpuregs[29][16] ),
    .A2(\cpuregs[30][16] ),
    .A3(\cpuregs[31][16] ),
    .S0(net773),
    .S1(net767),
    .X(_2089_));
 sky130_fd_sc_hd__mux4_2 _6100_ (.A0(_2086_),
    .A1(_2087_),
    .A2(_2088_),
    .A3(_2089_),
    .S0(net765),
    .S1(net763),
    .X(_2090_));
 sky130_fd_sc_hd__mux2i_1 _6101_ (.A0(_2085_),
    .A1(_2090_),
    .S(net764),
    .Y(_2091_));
 sky130_fd_sc_hd__nand2_1 _6102_ (.A(\reg_pc[16] ),
    .B(net688),
    .Y(_2092_));
 sky130_fd_sc_hd__o21ai_0 _6103_ (.A1(_1687_),
    .A2(_2091_),
    .B1(_2092_),
    .Y(_2093_));
 sky130_fd_sc_hd__a22oi_1 _6104_ (.A1(net746),
    .A2(_2078_),
    .B1(_2093_),
    .B2(_1728_),
    .Y(_2094_));
 sky130_fd_sc_hd__o21ai_0 _6105_ (.A1(net691),
    .A2(_2077_),
    .B1(_2094_),
    .Y(_4603_));
 sky130_fd_sc_hd__inv_1 _6106_ (.A(_0183_),
    .Y(_2095_));
 sky130_fd_sc_hd__nor2_1 _6107_ (.A(_2095_),
    .B(_2055_),
    .Y(_2096_));
 sky130_fd_sc_hd__o31ai_1 _6108_ (.A1(_0181_),
    .A2(_0182_),
    .A3(_2096_),
    .B1(net690),
    .Y(_2097_));
 sky130_fd_sc_hd__mux4_2 _6109_ (.A0(net722),
    .A1(net725),
    .A2(net730),
    .A3(net727),
    .S0(net658),
    .S1(net671),
    .X(_2098_));
 sky130_fd_sc_hd__mux4_2 _6110_ (.A0(\cpuregs[0][15] ),
    .A1(\cpuregs[1][15] ),
    .A2(\cpuregs[2][15] ),
    .A3(\cpuregs[3][15] ),
    .S0(net774),
    .S1(net768),
    .X(_2099_));
 sky130_fd_sc_hd__mux4_2 _6111_ (.A0(\cpuregs[4][15] ),
    .A1(\cpuregs[5][15] ),
    .A2(\cpuregs[6][15] ),
    .A3(\cpuregs[7][15] ),
    .S0(net774),
    .S1(net768),
    .X(_2100_));
 sky130_fd_sc_hd__mux4_2 _6112_ (.A0(\cpuregs[16][15] ),
    .A1(\cpuregs[17][15] ),
    .A2(\cpuregs[18][15] ),
    .A3(\cpuregs[19][15] ),
    .S0(net773),
    .S1(net767),
    .X(_2101_));
 sky130_fd_sc_hd__mux4_2 _6113_ (.A0(\cpuregs[20][15] ),
    .A1(\cpuregs[21][15] ),
    .A2(\cpuregs[22][15] ),
    .A3(\cpuregs[23][15] ),
    .S0(net773),
    .S1(net767),
    .X(_2102_));
 sky130_fd_sc_hd__mux4_2 _6114_ (.A0(_2099_),
    .A1(_2100_),
    .A2(_2101_),
    .A3(_2102_),
    .S0(net766),
    .S1(_0045_),
    .X(_2103_));
 sky130_fd_sc_hd__mux4_2 _6115_ (.A0(\cpuregs[8][15] ),
    .A1(\cpuregs[9][15] ),
    .A2(\cpuregs[10][15] ),
    .A3(\cpuregs[11][15] ),
    .S0(net774),
    .S1(net768),
    .X(_2104_));
 sky130_fd_sc_hd__mux4_2 _6116_ (.A0(\cpuregs[12][15] ),
    .A1(\cpuregs[13][15] ),
    .A2(\cpuregs[14][15] ),
    .A3(\cpuregs[15][15] ),
    .S0(net774),
    .S1(net768),
    .X(_2105_));
 sky130_fd_sc_hd__mux4_2 _6117_ (.A0(\cpuregs[24][15] ),
    .A1(\cpuregs[25][15] ),
    .A2(\cpuregs[26][15] ),
    .A3(\cpuregs[27][15] ),
    .S0(net773),
    .S1(net767),
    .X(_2106_));
 sky130_fd_sc_hd__mux4_2 _6118_ (.A0(\cpuregs[28][15] ),
    .A1(\cpuregs[29][15] ),
    .A2(\cpuregs[30][15] ),
    .A3(\cpuregs[31][15] ),
    .S0(net773),
    .S1(net767),
    .X(_2107_));
 sky130_fd_sc_hd__mux4_2 _6119_ (.A0(_2104_),
    .A1(_2105_),
    .A2(_2106_),
    .A3(_2107_),
    .S0(net766),
    .S1(_0045_),
    .X(_2108_));
 sky130_fd_sc_hd__mux2i_1 _6120_ (.A0(_2103_),
    .A1(_2108_),
    .S(net764),
    .Y(_2109_));
 sky130_fd_sc_hd__nand2_1 _6121_ (.A(\reg_pc[15] ),
    .B(net688),
    .Y(_2110_));
 sky130_fd_sc_hd__o21ai_0 _6122_ (.A1(_1687_),
    .A2(_2109_),
    .B1(_2110_),
    .Y(_2111_));
 sky130_fd_sc_hd__a22oi_1 _6123_ (.A1(net746),
    .A2(_2098_),
    .B1(_2111_),
    .B2(_1728_),
    .Y(_2112_));
 sky130_fd_sc_hd__o21ai_0 _6124_ (.A1(_2056_),
    .A2(_2097_),
    .B1(_2112_),
    .Y(_4602_));
 sky130_fd_sc_hd__xnor2_1 _6125_ (.A(_2095_),
    .B(_1636_),
    .Y(_2113_));
 sky130_fd_sc_hd__inv_1 _6126_ (.A(net731),
    .Y(_0283_));
 sky130_fd_sc_hd__inv_1 _6127_ (.A(net728),
    .Y(_0317_));
 sky130_fd_sc_hd__mux4_2 _6128_ (.A0(_0246_),
    .A1(_0313_),
    .A2(_0283_),
    .A3(_0317_),
    .S0(net658),
    .S1(net671),
    .X(_2114_));
 sky130_fd_sc_hd__mux4_2 _6129_ (.A0(\cpuregs[0][14] ),
    .A1(\cpuregs[1][14] ),
    .A2(\cpuregs[2][14] ),
    .A3(\cpuregs[3][14] ),
    .S0(net773),
    .S1(net768),
    .X(_2115_));
 sky130_fd_sc_hd__mux4_2 _6130_ (.A0(\cpuregs[4][14] ),
    .A1(\cpuregs[5][14] ),
    .A2(\cpuregs[6][14] ),
    .A3(\cpuregs[7][14] ),
    .S0(net773),
    .S1(net768),
    .X(_2116_));
 sky130_fd_sc_hd__mux4_2 _6131_ (.A0(\cpuregs[16][14] ),
    .A1(\cpuregs[17][14] ),
    .A2(\cpuregs[18][14] ),
    .A3(\cpuregs[19][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2117_));
 sky130_fd_sc_hd__mux4_2 _6132_ (.A0(\cpuregs[20][14] ),
    .A1(\cpuregs[21][14] ),
    .A2(\cpuregs[22][14] ),
    .A3(\cpuregs[23][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2118_));
 sky130_fd_sc_hd__mux4_2 _6133_ (.A0(_2115_),
    .A1(_2116_),
    .A2(_2117_),
    .A3(_2118_),
    .S0(net765),
    .S1(net763),
    .X(_2119_));
 sky130_fd_sc_hd__mux4_2 _6134_ (.A0(\cpuregs[8][14] ),
    .A1(\cpuregs[9][14] ),
    .A2(\cpuregs[10][14] ),
    .A3(\cpuregs[11][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2120_));
 sky130_fd_sc_hd__mux4_2 _6137_ (.A0(\cpuregs[12][14] ),
    .A1(\cpuregs[13][14] ),
    .A2(\cpuregs[14][14] ),
    .A3(\cpuregs[15][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2123_));
 sky130_fd_sc_hd__mux4_2 _6138_ (.A0(\cpuregs[24][14] ),
    .A1(\cpuregs[25][14] ),
    .A2(\cpuregs[26][14] ),
    .A3(\cpuregs[27][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2124_));
 sky130_fd_sc_hd__mux4_2 _6139_ (.A0(\cpuregs[28][14] ),
    .A1(\cpuregs[29][14] ),
    .A2(\cpuregs[30][14] ),
    .A3(\cpuregs[31][14] ),
    .S0(net770),
    .S1(net768),
    .X(_2125_));
 sky130_fd_sc_hd__mux4_2 _6141_ (.A0(_2120_),
    .A1(_2123_),
    .A2(_2124_),
    .A3(_2125_),
    .S0(net765),
    .S1(net763),
    .X(_2127_));
 sky130_fd_sc_hd__mux2i_1 _6142_ (.A0(_2119_),
    .A1(_2127_),
    .S(net764),
    .Y(_2128_));
 sky130_fd_sc_hd__nand2_1 _6143_ (.A(\reg_pc[14] ),
    .B(net688),
    .Y(_2129_));
 sky130_fd_sc_hd__o21ai_0 _6144_ (.A1(_1687_),
    .A2(_2128_),
    .B1(_2129_),
    .Y(_2130_));
 sky130_fd_sc_hd__nand2_1 _6145_ (.A(_1728_),
    .B(_2130_),
    .Y(_2131_));
 sky130_fd_sc_hd__o221ai_1 _6146_ (.A1(net691),
    .A2(_2113_),
    .B1(_2114_),
    .B2(net689),
    .C1(_2131_),
    .Y(_4601_));
 sky130_fd_sc_hd__xnor2_1 _6147_ (.A(_0185_),
    .B(_2054_),
    .Y(_2132_));
 sky130_fd_sc_hd__mux4_2 _6148_ (.A0(_0346_),
    .A1(_0210_),
    .A2(_0250_),
    .A3(_0411_),
    .S0(net671),
    .S1(net657),
    .X(_2133_));
 sky130_fd_sc_hd__mux4_2 _6149_ (.A0(\cpuregs[0][13] ),
    .A1(\cpuregs[1][13] ),
    .A2(\cpuregs[2][13] ),
    .A3(\cpuregs[3][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2134_));
 sky130_fd_sc_hd__mux4_2 _6150_ (.A0(\cpuregs[4][13] ),
    .A1(\cpuregs[5][13] ),
    .A2(\cpuregs[6][13] ),
    .A3(\cpuregs[7][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2135_));
 sky130_fd_sc_hd__mux4_2 _6151_ (.A0(\cpuregs[16][13] ),
    .A1(\cpuregs[17][13] ),
    .A2(\cpuregs[18][13] ),
    .A3(\cpuregs[19][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2136_));
 sky130_fd_sc_hd__mux4_2 _6152_ (.A0(\cpuregs[20][13] ),
    .A1(\cpuregs[21][13] ),
    .A2(\cpuregs[22][13] ),
    .A3(\cpuregs[23][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2137_));
 sky130_fd_sc_hd__mux4_2 _6153_ (.A0(_2134_),
    .A1(_2135_),
    .A2(_2136_),
    .A3(_2137_),
    .S0(net765),
    .S1(net763),
    .X(_2138_));
 sky130_fd_sc_hd__mux4_2 _6154_ (.A0(\cpuregs[8][13] ),
    .A1(\cpuregs[9][13] ),
    .A2(\cpuregs[10][13] ),
    .A3(\cpuregs[11][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2139_));
 sky130_fd_sc_hd__mux4_2 _6155_ (.A0(\cpuregs[12][13] ),
    .A1(\cpuregs[13][13] ),
    .A2(\cpuregs[14][13] ),
    .A3(\cpuregs[15][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2140_));
 sky130_fd_sc_hd__mux4_2 _6156_ (.A0(\cpuregs[24][13] ),
    .A1(\cpuregs[25][13] ),
    .A2(\cpuregs[26][13] ),
    .A3(\cpuregs[27][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2141_));
 sky130_fd_sc_hd__mux4_2 _6157_ (.A0(\cpuregs[28][13] ),
    .A1(\cpuregs[29][13] ),
    .A2(\cpuregs[30][13] ),
    .A3(\cpuregs[31][13] ),
    .S0(net770),
    .S1(net769),
    .X(_2142_));
 sky130_fd_sc_hd__mux4_2 _6158_ (.A0(_2139_),
    .A1(_2140_),
    .A2(_2141_),
    .A3(_2142_),
    .S0(net765),
    .S1(net763),
    .X(_2143_));
 sky130_fd_sc_hd__mux2i_1 _6159_ (.A0(_2138_),
    .A1(_2143_),
    .S(net764),
    .Y(_2144_));
 sky130_fd_sc_hd__nand2_1 _6160_ (.A(\reg_pc[13] ),
    .B(net688),
    .Y(_2145_));
 sky130_fd_sc_hd__o21ai_0 _6161_ (.A1(_1687_),
    .A2(_2144_),
    .B1(_2145_),
    .Y(_2146_));
 sky130_fd_sc_hd__nand2_1 _6162_ (.A(_1728_),
    .B(_2146_),
    .Y(_2147_));
 sky130_fd_sc_hd__o221ai_1 _6163_ (.A1(net691),
    .A2(_2132_),
    .B1(_2133_),
    .B2(net689),
    .C1(_2147_),
    .Y(_4600_));
 sky130_fd_sc_hd__nand2_1 _6164_ (.A(_1627_),
    .B(_1629_),
    .Y(_2148_));
 sky130_fd_sc_hd__a21o_1 _6165_ (.A1(_0240_),
    .A2(_2148_),
    .B1(_0239_),
    .X(_2149_));
 sky130_fd_sc_hd__a31oi_1 _6166_ (.A1(_0189_),
    .A2(_0238_),
    .A3(_2149_),
    .B1(_1630_),
    .Y(_2150_));
 sky130_fd_sc_hd__xor2_1 _6167_ (.A(_0187_),
    .B(_2150_),
    .X(_2151_));
 sky130_fd_sc_hd__mux4_2 _6168_ (.A0(\cpuregs[0][12] ),
    .A1(\cpuregs[1][12] ),
    .A2(\cpuregs[2][12] ),
    .A3(\cpuregs[3][12] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2152_));
 sky130_fd_sc_hd__mux4_2 _6169_ (.A0(\cpuregs[4][12] ),
    .A1(\cpuregs[5][12] ),
    .A2(\cpuregs[6][12] ),
    .A3(\cpuregs[7][12] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2153_));
 sky130_fd_sc_hd__mux4_2 _6170_ (.A0(\cpuregs[16][12] ),
    .A1(\cpuregs[17][12] ),
    .A2(\cpuregs[18][12] ),
    .A3(\cpuregs[19][12] ),
    .S0(net770),
    .S1(net769),
    .X(_2154_));
 sky130_fd_sc_hd__mux4_2 _6171_ (.A0(\cpuregs[20][12] ),
    .A1(\cpuregs[21][12] ),
    .A2(\cpuregs[22][12] ),
    .A3(\cpuregs[23][12] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2155_));
 sky130_fd_sc_hd__mux4_2 _6172_ (.A0(_2152_),
    .A1(_2153_),
    .A2(_2154_),
    .A3(_2155_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2156_));
 sky130_fd_sc_hd__mux4_2 _6173_ (.A0(\cpuregs[8][12] ),
    .A1(\cpuregs[9][12] ),
    .A2(\cpuregs[10][12] ),
    .A3(\cpuregs[11][12] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2157_));
 sky130_fd_sc_hd__mux4_2 _6174_ (.A0(\cpuregs[12][12] ),
    .A1(\cpuregs[13][12] ),
    .A2(\cpuregs[14][12] ),
    .A3(\cpuregs[15][12] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2158_));
 sky130_fd_sc_hd__mux4_2 _6175_ (.A0(\cpuregs[24][12] ),
    .A1(\cpuregs[25][12] ),
    .A2(\cpuregs[26][12] ),
    .A3(\cpuregs[27][12] ),
    .S0(net770),
    .S1(net769),
    .X(_2159_));
 sky130_fd_sc_hd__mux4_2 _6176_ (.A0(\cpuregs[28][12] ),
    .A1(\cpuregs[29][12] ),
    .A2(\cpuregs[30][12] ),
    .A3(\cpuregs[31][12] ),
    .S0(net770),
    .S1(net769),
    .X(_2160_));
 sky130_fd_sc_hd__mux4_2 _6177_ (.A0(_2157_),
    .A1(_2158_),
    .A2(_2159_),
    .A3(_2160_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2161_));
 sky130_fd_sc_hd__mux2i_1 _6178_ (.A0(_2156_),
    .A1(_2161_),
    .S(_0044_),
    .Y(_2162_));
 sky130_fd_sc_hd__nor2_1 _6179_ (.A(_1687_),
    .B(_2162_),
    .Y(_2163_));
 sky130_fd_sc_hd__a21oi_1 _6180_ (.A1(\reg_pc[12] ),
    .A2(net688),
    .B1(_2163_),
    .Y(_2164_));
 sky130_fd_sc_hd__mux4_2 _6182_ (.A0(net725),
    .A1(net728),
    .A2(net703),
    .A3(net730),
    .S0(net658),
    .S1(net671),
    .X(_2166_));
 sky130_fd_sc_hd__nand2_1 _6183_ (.A(net746),
    .B(_2166_),
    .Y(_2167_));
 sky130_fd_sc_hd__o221ai_1 _6184_ (.A1(net691),
    .A2(_2151_),
    .B1(_2164_),
    .B2(_2036_),
    .C1(_2167_),
    .Y(_4599_));
 sky130_fd_sc_hd__nand2_1 _6185_ (.A(_1768_),
    .B(_1776_),
    .Y(_2168_));
 sky130_fd_sc_hd__xnor2_1 _6186_ (.A(_0189_),
    .B(_2168_),
    .Y(_2169_));
 sky130_fd_sc_hd__mux4_2 _6187_ (.A0(net729),
    .A1(net726),
    .A2(net731),
    .A3(net704),
    .S0(net657),
    .S1(net671),
    .X(_2170_));
 sky130_fd_sc_hd__mux4_2 _6188_ (.A0(\cpuregs[0][11] ),
    .A1(\cpuregs[1][11] ),
    .A2(\cpuregs[2][11] ),
    .A3(\cpuregs[3][11] ),
    .S0(net770),
    .S1(net768),
    .X(_2171_));
 sky130_fd_sc_hd__mux4_2 _6189_ (.A0(\cpuregs[4][11] ),
    .A1(\cpuregs[5][11] ),
    .A2(\cpuregs[6][11] ),
    .A3(\cpuregs[7][11] ),
    .S0(net770),
    .S1(net768),
    .X(_2172_));
 sky130_fd_sc_hd__mux4_2 _6190_ (.A0(\cpuregs[16][11] ),
    .A1(\cpuregs[17][11] ),
    .A2(\cpuregs[18][11] ),
    .A3(\cpuregs[19][11] ),
    .S0(net770),
    .S1(net768),
    .X(_2173_));
 sky130_fd_sc_hd__mux4_2 _6191_ (.A0(\cpuregs[20][11] ),
    .A1(\cpuregs[21][11] ),
    .A2(\cpuregs[22][11] ),
    .A3(\cpuregs[23][11] ),
    .S0(net770),
    .S1(net768),
    .X(_2174_));
 sky130_fd_sc_hd__mux4_2 _6192_ (.A0(_2171_),
    .A1(_2172_),
    .A2(_2173_),
    .A3(_2174_),
    .S0(net765),
    .S1(net763),
    .X(_2175_));
 sky130_fd_sc_hd__mux4_2 _6193_ (.A0(\cpuregs[8][11] ),
    .A1(\cpuregs[9][11] ),
    .A2(\cpuregs[10][11] ),
    .A3(\cpuregs[11][11] ),
    .S0(net770),
    .S1(net768),
    .X(_2176_));
 sky130_fd_sc_hd__mux4_2 _6194_ (.A0(\cpuregs[12][11] ),
    .A1(\cpuregs[13][11] ),
    .A2(\cpuregs[14][11] ),
    .A3(\cpuregs[15][11] ),
    .S0(net770),
    .S1(net769),
    .X(_2177_));
 sky130_fd_sc_hd__mux4_2 _6195_ (.A0(\cpuregs[24][11] ),
    .A1(\cpuregs[25][11] ),
    .A2(\cpuregs[26][11] ),
    .A3(\cpuregs[27][11] ),
    .S0(net770),
    .S1(net769),
    .X(_2178_));
 sky130_fd_sc_hd__mux4_2 _6196_ (.A0(\cpuregs[28][11] ),
    .A1(\cpuregs[29][11] ),
    .A2(\cpuregs[30][11] ),
    .A3(\cpuregs[31][11] ),
    .S0(net770),
    .S1(net769),
    .X(_2179_));
 sky130_fd_sc_hd__mux4_2 _6197_ (.A0(_2176_),
    .A1(_2177_),
    .A2(_2178_),
    .A3(_2179_),
    .S0(net765),
    .S1(net763),
    .X(_2180_));
 sky130_fd_sc_hd__mux2i_1 _6198_ (.A0(_2175_),
    .A1(_2180_),
    .S(net764),
    .Y(_2181_));
 sky130_fd_sc_hd__nand2_1 _6199_ (.A(\reg_pc[11] ),
    .B(net688),
    .Y(_2182_));
 sky130_fd_sc_hd__o21ai_0 _6200_ (.A1(_1687_),
    .A2(_2181_),
    .B1(_2182_),
    .Y(_2183_));
 sky130_fd_sc_hd__a22oi_1 _6201_ (.A1(net746),
    .A2(_2170_),
    .B1(_2183_),
    .B2(_1728_),
    .Y(_2184_));
 sky130_fd_sc_hd__o21ai_0 _6202_ (.A1(net691),
    .A2(_2169_),
    .B1(_2184_),
    .Y(_4598_));
 sky130_fd_sc_hd__xnor2_1 _6203_ (.A(_0238_),
    .B(_2149_),
    .Y(_2185_));
 sky130_fd_sc_hd__inv_1 _6204_ (.A(net705),
    .Y(_0375_));
 sky130_fd_sc_hd__mux4_2 _6205_ (.A0(_0346_),
    .A1(_0321_),
    .A2(_0375_),
    .A3(_0411_),
    .S0(net658),
    .S1(net671),
    .X(_2186_));
 sky130_fd_sc_hd__mux4_2 _6206_ (.A0(\cpuregs[0][10] ),
    .A1(\cpuregs[1][10] ),
    .A2(\cpuregs[2][10] ),
    .A3(\cpuregs[3][10] ),
    .S0(net771),
    .S1(net769),
    .X(_2187_));
 sky130_fd_sc_hd__mux4_2 _6207_ (.A0(\cpuregs[4][10] ),
    .A1(\cpuregs[5][10] ),
    .A2(\cpuregs[6][10] ),
    .A3(\cpuregs[7][10] ),
    .S0(net771),
    .S1(net769),
    .X(_2188_));
 sky130_fd_sc_hd__mux4_2 _6208_ (.A0(\cpuregs[16][10] ),
    .A1(\cpuregs[17][10] ),
    .A2(\cpuregs[18][10] ),
    .A3(\cpuregs[19][10] ),
    .S0(net771),
    .S1(net769),
    .X(_2189_));
 sky130_fd_sc_hd__mux4_2 _6209_ (.A0(\cpuregs[20][10] ),
    .A1(\cpuregs[21][10] ),
    .A2(\cpuregs[22][10] ),
    .A3(\cpuregs[23][10] ),
    .S0(net770),
    .S1(net769),
    .X(_2190_));
 sky130_fd_sc_hd__mux4_2 _6210_ (.A0(_2187_),
    .A1(_2188_),
    .A2(_2189_),
    .A3(_2190_),
    .S0(net766),
    .S1(net763),
    .X(_2191_));
 sky130_fd_sc_hd__mux4_2 _6211_ (.A0(\cpuregs[8][10] ),
    .A1(\cpuregs[9][10] ),
    .A2(\cpuregs[10][10] ),
    .A3(\cpuregs[11][10] ),
    .S0(net771),
    .S1(net769),
    .X(_2192_));
 sky130_fd_sc_hd__mux4_2 _6212_ (.A0(\cpuregs[12][10] ),
    .A1(\cpuregs[13][10] ),
    .A2(\cpuregs[14][10] ),
    .A3(\cpuregs[15][10] ),
    .S0(net771),
    .S1(net769),
    .X(_2193_));
 sky130_fd_sc_hd__mux4_2 _6213_ (.A0(\cpuregs[24][10] ),
    .A1(\cpuregs[25][10] ),
    .A2(\cpuregs[26][10] ),
    .A3(\cpuregs[27][10] ),
    .S0(net770),
    .S1(net769),
    .X(_2194_));
 sky130_fd_sc_hd__mux4_2 _6214_ (.A0(\cpuregs[28][10] ),
    .A1(\cpuregs[29][10] ),
    .A2(\cpuregs[30][10] ),
    .A3(\cpuregs[31][10] ),
    .S0(net770),
    .S1(net769),
    .X(_2195_));
 sky130_fd_sc_hd__mux4_2 _6215_ (.A0(_2192_),
    .A1(_2193_),
    .A2(_2194_),
    .A3(_2195_),
    .S0(net766),
    .S1(net763),
    .X(_2196_));
 sky130_fd_sc_hd__mux2i_1 _6216_ (.A0(_2191_),
    .A1(_2196_),
    .S(net764),
    .Y(_2197_));
 sky130_fd_sc_hd__nand2_1 _6217_ (.A(\reg_pc[10] ),
    .B(net688),
    .Y(_2198_));
 sky130_fd_sc_hd__o21ai_0 _6218_ (.A1(_1687_),
    .A2(_2197_),
    .B1(_2198_),
    .Y(_2199_));
 sky130_fd_sc_hd__nand2_1 _6219_ (.A(_1728_),
    .B(_2199_),
    .Y(_2200_));
 sky130_fd_sc_hd__o221ai_1 _6220_ (.A1(net691),
    .A2(_2185_),
    .B1(_2186_),
    .B2(net689),
    .C1(_2200_),
    .Y(_4597_));
 sky130_fd_sc_hd__mux4_2 _6221_ (.A0(\cpuregs[0][9] ),
    .A1(\cpuregs[1][9] ),
    .A2(\cpuregs[2][9] ),
    .A3(\cpuregs[3][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2201_));
 sky130_fd_sc_hd__mux4_2 _6222_ (.A0(\cpuregs[4][9] ),
    .A1(\cpuregs[5][9] ),
    .A2(\cpuregs[6][9] ),
    .A3(\cpuregs[7][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2202_));
 sky130_fd_sc_hd__mux4_2 _6223_ (.A0(\cpuregs[16][9] ),
    .A1(\cpuregs[17][9] ),
    .A2(\cpuregs[18][9] ),
    .A3(\cpuregs[19][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2203_));
 sky130_fd_sc_hd__mux4_2 _6224_ (.A0(\cpuregs[20][9] ),
    .A1(\cpuregs[21][9] ),
    .A2(\cpuregs[22][9] ),
    .A3(\cpuregs[23][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2204_));
 sky130_fd_sc_hd__mux4_2 _6225_ (.A0(_2201_),
    .A1(_2202_),
    .A2(_2203_),
    .A3(_2204_),
    .S0(net765),
    .S1(net763),
    .X(_2205_));
 sky130_fd_sc_hd__mux4_2 _6226_ (.A0(\cpuregs[8][9] ),
    .A1(\cpuregs[9][9] ),
    .A2(\cpuregs[10][9] ),
    .A3(\cpuregs[11][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2206_));
 sky130_fd_sc_hd__mux4_2 _6227_ (.A0(\cpuregs[12][9] ),
    .A1(\cpuregs[13][9] ),
    .A2(\cpuregs[14][9] ),
    .A3(\cpuregs[15][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2207_));
 sky130_fd_sc_hd__mux4_2 _6228_ (.A0(\cpuregs[24][9] ),
    .A1(\cpuregs[25][9] ),
    .A2(\cpuregs[26][9] ),
    .A3(\cpuregs[27][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2208_));
 sky130_fd_sc_hd__mux4_2 _6229_ (.A0(\cpuregs[28][9] ),
    .A1(\cpuregs[29][9] ),
    .A2(\cpuregs[30][9] ),
    .A3(\cpuregs[31][9] ),
    .S0(net770),
    .S1(net769),
    .X(_2209_));
 sky130_fd_sc_hd__mux4_2 _6230_ (.A0(_2206_),
    .A1(_2207_),
    .A2(_2208_),
    .A3(_2209_),
    .S0(net765),
    .S1(net763),
    .X(_2210_));
 sky130_fd_sc_hd__mux2i_1 _6231_ (.A0(_2205_),
    .A1(_2210_),
    .S(net764),
    .Y(_2211_));
 sky130_fd_sc_hd__nor2_1 _6232_ (.A(_1687_),
    .B(_2211_),
    .Y(_2212_));
 sky130_fd_sc_hd__a21oi_1 _6233_ (.A1(\reg_pc[9] ),
    .A2(net688),
    .B1(_2212_),
    .Y(_2213_));
 sky130_fd_sc_hd__nor2_1 _6234_ (.A(_1762_),
    .B(_1763_),
    .Y(_2214_));
 sky130_fd_sc_hd__o21a_1 _6235_ (.A1(_0224_),
    .A2(_2214_),
    .B1(_0223_),
    .X(_2215_));
 sky130_fd_sc_hd__o21ai_0 _6236_ (.A1(_0222_),
    .A2(_2215_),
    .B1(_0244_),
    .Y(_2216_));
 sky130_fd_sc_hd__nor2_1 _6237_ (.A(_0220_),
    .B(_1772_),
    .Y(_2217_));
 sky130_fd_sc_hd__o21ai_0 _6238_ (.A1(_1624_),
    .A2(_2216_),
    .B1(_2217_),
    .Y(_2218_));
 sky130_fd_sc_hd__xor2_1 _6239_ (.A(_0240_),
    .B(_2218_),
    .X(_2219_));
 sky130_fd_sc_hd__mux4_2 _6240_ (.A0(net728),
    .A1(net731),
    .A2(net706),
    .A3(net703),
    .S0(net658),
    .S1(net671),
    .X(_2220_));
 sky130_fd_sc_hd__a22oi_1 _6241_ (.A1(net690),
    .A2(_2219_),
    .B1(_2220_),
    .B2(net746),
    .Y(_2221_));
 sky130_fd_sc_hd__o21ai_0 _6242_ (.A1(_2036_),
    .A2(_2213_),
    .B1(_2221_),
    .Y(_4627_));
 sky130_fd_sc_hd__inv_1 _6243_ (.A(_0242_),
    .Y(_2222_));
 sky130_fd_sc_hd__o21a_1 _6244_ (.A1(_0222_),
    .A2(_1623_),
    .B1(_0244_),
    .X(_2223_));
 sky130_fd_sc_hd__nor2_1 _6245_ (.A(_0243_),
    .B(_2223_),
    .Y(_2224_));
 sky130_fd_sc_hd__o21bai_1 _6246_ (.A1(_2222_),
    .A2(_2224_),
    .B1_N(_0241_),
    .Y(_2225_));
 sky130_fd_sc_hd__a21oi_1 _6247_ (.A1(_0191_),
    .A2(_2225_),
    .B1(_0190_),
    .Y(_2226_));
 sky130_fd_sc_hd__xor2_1 _6248_ (.A(_0221_),
    .B(_2226_),
    .X(_2227_));
 sky130_fd_sc_hd__mux4_2 _6249_ (.A0(net729),
    .A1(net702),
    .A2(net707),
    .A3(net704),
    .S0(net658),
    .S1(net671),
    .X(_2228_));
 sky130_fd_sc_hd__mux4_2 _6250_ (.A0(\cpuregs[0][8] ),
    .A1(\cpuregs[1][8] ),
    .A2(\cpuregs[2][8] ),
    .A3(\cpuregs[3][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2229_));
 sky130_fd_sc_hd__mux4_2 _6251_ (.A0(\cpuregs[4][8] ),
    .A1(\cpuregs[5][8] ),
    .A2(\cpuregs[6][8] ),
    .A3(\cpuregs[7][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2230_));
 sky130_fd_sc_hd__mux4_2 _6252_ (.A0(\cpuregs[16][8] ),
    .A1(\cpuregs[17][8] ),
    .A2(\cpuregs[18][8] ),
    .A3(\cpuregs[19][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2231_));
 sky130_fd_sc_hd__mux4_2 _6253_ (.A0(\cpuregs[20][8] ),
    .A1(\cpuregs[21][8] ),
    .A2(\cpuregs[22][8] ),
    .A3(\cpuregs[23][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2232_));
 sky130_fd_sc_hd__mux4_2 _6254_ (.A0(_2229_),
    .A1(_2230_),
    .A2(_2231_),
    .A3(_2232_),
    .S0(net765),
    .S1(net763),
    .X(_2233_));
 sky130_fd_sc_hd__mux4_2 _6255_ (.A0(\cpuregs[8][8] ),
    .A1(\cpuregs[9][8] ),
    .A2(\cpuregs[10][8] ),
    .A3(\cpuregs[11][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2234_));
 sky130_fd_sc_hd__mux4_2 _6256_ (.A0(\cpuregs[12][8] ),
    .A1(\cpuregs[13][8] ),
    .A2(\cpuregs[14][8] ),
    .A3(\cpuregs[15][8] ),
    .S0(net771),
    .S1(net768),
    .X(_2235_));
 sky130_fd_sc_hd__mux4_2 _6257_ (.A0(\cpuregs[24][8] ),
    .A1(\cpuregs[25][8] ),
    .A2(\cpuregs[26][8] ),
    .A3(\cpuregs[27][8] ),
    .S0(net770),
    .S1(net768),
    .X(_2236_));
 sky130_fd_sc_hd__mux4_2 _6258_ (.A0(\cpuregs[28][8] ),
    .A1(\cpuregs[29][8] ),
    .A2(\cpuregs[30][8] ),
    .A3(\cpuregs[31][8] ),
    .S0(net770),
    .S1(net768),
    .X(_2237_));
 sky130_fd_sc_hd__mux4_2 _6259_ (.A0(_2234_),
    .A1(_2235_),
    .A2(_2236_),
    .A3(_2237_),
    .S0(net765),
    .S1(net763),
    .X(_2238_));
 sky130_fd_sc_hd__mux2i_1 _6260_ (.A0(_2233_),
    .A1(_2238_),
    .S(net764),
    .Y(_2239_));
 sky130_fd_sc_hd__nand2_1 _6261_ (.A(\reg_pc[8] ),
    .B(net688),
    .Y(_2240_));
 sky130_fd_sc_hd__o21ai_0 _6262_ (.A1(_1687_),
    .A2(_2239_),
    .B1(_2240_),
    .Y(_2241_));
 sky130_fd_sc_hd__a22oi_1 _6263_ (.A1(net746),
    .A2(_2228_),
    .B1(_2241_),
    .B2(_1728_),
    .Y(_2242_));
 sky130_fd_sc_hd__o21ai_0 _6264_ (.A1(net691),
    .A2(_2227_),
    .B1(_2242_),
    .Y(_4626_));
 sky130_fd_sc_hd__nand2b_1 _6265_ (.A_N(_0243_),
    .B(_2216_),
    .Y(_2243_));
 sky130_fd_sc_hd__a21oi_1 _6266_ (.A1(_0242_),
    .A2(_2243_),
    .B1(_0241_),
    .Y(_2244_));
 sky130_fd_sc_hd__xor2_1 _6267_ (.A(_0191_),
    .B(_2244_),
    .X(_2245_));
 sky130_fd_sc_hd__mux4_2 _6268_ (.A0(net703),
    .A1(net730),
    .A2(net705),
    .A3(net708),
    .S0(net657),
    .S1(net671),
    .X(_2246_));
 sky130_fd_sc_hd__mux4_2 _6269_ (.A0(\cpuregs[0][7] ),
    .A1(\cpuregs[1][7] ),
    .A2(\cpuregs[2][7] ),
    .A3(\cpuregs[3][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2247_));
 sky130_fd_sc_hd__mux4_2 _6270_ (.A0(\cpuregs[4][7] ),
    .A1(\cpuregs[5][7] ),
    .A2(\cpuregs[6][7] ),
    .A3(\cpuregs[7][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2248_));
 sky130_fd_sc_hd__mux4_2 _6271_ (.A0(\cpuregs[16][7] ),
    .A1(\cpuregs[17][7] ),
    .A2(\cpuregs[18][7] ),
    .A3(\cpuregs[19][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2249_));
 sky130_fd_sc_hd__mux4_2 _6272_ (.A0(\cpuregs[20][7] ),
    .A1(\cpuregs[21][7] ),
    .A2(\cpuregs[22][7] ),
    .A3(\cpuregs[23][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2250_));
 sky130_fd_sc_hd__mux4_2 _6273_ (.A0(_2247_),
    .A1(_2248_),
    .A2(_2249_),
    .A3(_2250_),
    .S0(net765),
    .S1(net763),
    .X(_2251_));
 sky130_fd_sc_hd__mux4_2 _6274_ (.A0(\cpuregs[8][7] ),
    .A1(\cpuregs[9][7] ),
    .A2(\cpuregs[10][7] ),
    .A3(\cpuregs[11][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2252_));
 sky130_fd_sc_hd__mux4_2 _6275_ (.A0(\cpuregs[12][7] ),
    .A1(\cpuregs[13][7] ),
    .A2(\cpuregs[14][7] ),
    .A3(\cpuregs[15][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2253_));
 sky130_fd_sc_hd__mux4_2 _6276_ (.A0(\cpuregs[24][7] ),
    .A1(\cpuregs[25][7] ),
    .A2(\cpuregs[26][7] ),
    .A3(\cpuregs[27][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2254_));
 sky130_fd_sc_hd__mux4_2 _6277_ (.A0(\cpuregs[28][7] ),
    .A1(\cpuregs[29][7] ),
    .A2(\cpuregs[30][7] ),
    .A3(\cpuregs[31][7] ),
    .S0(net770),
    .S1(net768),
    .X(_2255_));
 sky130_fd_sc_hd__mux4_2 _6278_ (.A0(_2252_),
    .A1(_2253_),
    .A2(_2254_),
    .A3(_2255_),
    .S0(net765),
    .S1(net763),
    .X(_2256_));
 sky130_fd_sc_hd__mux2i_1 _6279_ (.A0(_2251_),
    .A1(_2256_),
    .S(net764),
    .Y(_2257_));
 sky130_fd_sc_hd__nand2_1 _6280_ (.A(\reg_pc[7] ),
    .B(net688),
    .Y(_2258_));
 sky130_fd_sc_hd__o21ai_0 _6281_ (.A1(_1687_),
    .A2(net670),
    .B1(_2258_),
    .Y(_2259_));
 sky130_fd_sc_hd__a22oi_1 _6282_ (.A1(net746),
    .A2(_2246_),
    .B1(_2259_),
    .B2(_1728_),
    .Y(_2260_));
 sky130_fd_sc_hd__o21ai_0 _6283_ (.A1(net691),
    .A2(_2245_),
    .B1(_2260_),
    .Y(_4625_));
 sky130_fd_sc_hd__inv_1 _6284_ (.A(net706),
    .Y(_0329_));
 sky130_fd_sc_hd__inv_1 _6285_ (.A(net711),
    .Y(_0333_));
 sky130_fd_sc_hd__mux4_2 _6286_ (.A0(_0452_),
    .A1(_0283_),
    .A2(_0329_),
    .A3(_0333_),
    .S0(net657),
    .S1(net671),
    .X(_2261_));
 sky130_fd_sc_hd__xnor2_1 _6287_ (.A(_2222_),
    .B(_2224_),
    .Y(_2262_));
 sky130_fd_sc_hd__mux4_2 _6288_ (.A0(\cpuregs[0][6] ),
    .A1(\cpuregs[1][6] ),
    .A2(\cpuregs[2][6] ),
    .A3(\cpuregs[3][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2263_));
 sky130_fd_sc_hd__mux4_2 _6289_ (.A0(\cpuregs[4][6] ),
    .A1(\cpuregs[5][6] ),
    .A2(\cpuregs[6][6] ),
    .A3(\cpuregs[7][6] ),
    .S0(net773),
    .S1(net768),
    .X(_2264_));
 sky130_fd_sc_hd__mux4_2 _6290_ (.A0(\cpuregs[16][6] ),
    .A1(\cpuregs[17][6] ),
    .A2(\cpuregs[18][6] ),
    .A3(\cpuregs[19][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2265_));
 sky130_fd_sc_hd__mux4_2 _6291_ (.A0(\cpuregs[20][6] ),
    .A1(\cpuregs[21][6] ),
    .A2(\cpuregs[22][6] ),
    .A3(\cpuregs[23][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2266_));
 sky130_fd_sc_hd__mux4_2 _6292_ (.A0(_2263_),
    .A1(_2264_),
    .A2(_2265_),
    .A3(_2266_),
    .S0(net765),
    .S1(net763),
    .X(_2267_));
 sky130_fd_sc_hd__mux4_2 _6293_ (.A0(\cpuregs[8][6] ),
    .A1(\cpuregs[9][6] ),
    .A2(\cpuregs[10][6] ),
    .A3(\cpuregs[11][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2268_));
 sky130_fd_sc_hd__mux4_2 _6294_ (.A0(\cpuregs[12][6] ),
    .A1(\cpuregs[13][6] ),
    .A2(\cpuregs[14][6] ),
    .A3(\cpuregs[15][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2269_));
 sky130_fd_sc_hd__mux4_2 _6295_ (.A0(\cpuregs[24][6] ),
    .A1(\cpuregs[25][6] ),
    .A2(\cpuregs[26][6] ),
    .A3(\cpuregs[27][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2270_));
 sky130_fd_sc_hd__mux4_2 _6296_ (.A0(\cpuregs[28][6] ),
    .A1(\cpuregs[29][6] ),
    .A2(\cpuregs[30][6] ),
    .A3(\cpuregs[31][6] ),
    .S0(net770),
    .S1(net768),
    .X(_2271_));
 sky130_fd_sc_hd__mux4_2 _6297_ (.A0(_2268_),
    .A1(_2269_),
    .A2(_2270_),
    .A3(_2271_),
    .S0(net765),
    .S1(net763),
    .X(_2272_));
 sky130_fd_sc_hd__mux2i_1 _6298_ (.A0(_2267_),
    .A1(_2272_),
    .S(net764),
    .Y(_2273_));
 sky130_fd_sc_hd__nand2_1 _6299_ (.A(\reg_pc[6] ),
    .B(net688),
    .Y(_2274_));
 sky130_fd_sc_hd__o21ai_0 _6300_ (.A1(_1687_),
    .A2(net669),
    .B1(_2274_),
    .Y(_2275_));
 sky130_fd_sc_hd__nand2_1 _6301_ (.A(_1728_),
    .B(_2275_),
    .Y(_2276_));
 sky130_fd_sc_hd__o221ai_1 _6302_ (.A1(net689),
    .A2(_2261_),
    .B1(_2262_),
    .B2(net691),
    .C1(_2276_),
    .Y(_4624_));
 sky130_fd_sc_hd__or2_2 _6303_ (.A(_0244_),
    .B(_0222_),
    .X(_2277_));
 sky130_fd_sc_hd__o21ai_0 _6304_ (.A1(_2215_),
    .A2(_2277_),
    .B1(_2216_),
    .Y(_2278_));
 sky130_fd_sc_hd__mux4_2 _6305_ (.A0(\cpuregs[0][5] ),
    .A1(\cpuregs[1][5] ),
    .A2(\cpuregs[2][5] ),
    .A3(\cpuregs[3][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2279_));
 sky130_fd_sc_hd__mux4_2 _6306_ (.A0(\cpuregs[4][5] ),
    .A1(\cpuregs[5][5] ),
    .A2(\cpuregs[6][5] ),
    .A3(\cpuregs[7][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2280_));
 sky130_fd_sc_hd__mux4_2 _6307_ (.A0(\cpuregs[16][5] ),
    .A1(\cpuregs[17][5] ),
    .A2(\cpuregs[18][5] ),
    .A3(\cpuregs[19][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2281_));
 sky130_fd_sc_hd__mux4_2 _6308_ (.A0(\cpuregs[20][5] ),
    .A1(\cpuregs[21][5] ),
    .A2(\cpuregs[22][5] ),
    .A3(\cpuregs[23][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2282_));
 sky130_fd_sc_hd__mux4_2 _6309_ (.A0(_2279_),
    .A1(_2280_),
    .A2(_2281_),
    .A3(_2282_),
    .S0(net765),
    .S1(net763),
    .X(_2283_));
 sky130_fd_sc_hd__mux4_2 _6310_ (.A0(\cpuregs[8][5] ),
    .A1(\cpuregs[9][5] ),
    .A2(\cpuregs[10][5] ),
    .A3(\cpuregs[11][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2284_));
 sky130_fd_sc_hd__mux4_2 _6311_ (.A0(\cpuregs[12][5] ),
    .A1(\cpuregs[13][5] ),
    .A2(\cpuregs[14][5] ),
    .A3(\cpuregs[15][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2285_));
 sky130_fd_sc_hd__mux4_2 _6312_ (.A0(\cpuregs[24][5] ),
    .A1(\cpuregs[25][5] ),
    .A2(\cpuregs[26][5] ),
    .A3(\cpuregs[27][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2286_));
 sky130_fd_sc_hd__mux4_2 _6313_ (.A0(\cpuregs[28][5] ),
    .A1(\cpuregs[29][5] ),
    .A2(\cpuregs[30][5] ),
    .A3(\cpuregs[31][5] ),
    .S0(net770),
    .S1(net768),
    .X(_2287_));
 sky130_fd_sc_hd__mux4_2 _6314_ (.A0(_2284_),
    .A1(_2285_),
    .A2(_2286_),
    .A3(_2287_),
    .S0(net765),
    .S1(net763),
    .X(_2288_));
 sky130_fd_sc_hd__mux2i_1 _6315_ (.A0(_2283_),
    .A1(_2288_),
    .S(net764),
    .Y(_2289_));
 sky130_fd_sc_hd__nand2_1 _6316_ (.A(\reg_pc[5] ),
    .B(net688),
    .Y(_2290_));
 sky130_fd_sc_hd__o21ai_0 _6317_ (.A1(_1687_),
    .A2(_2289_),
    .B1(_2290_),
    .Y(_2291_));
 sky130_fd_sc_hd__mux4_2 _6318_ (.A0(net702),
    .A1(net721),
    .A2(net705),
    .A3(net707),
    .S0(net671),
    .S1(net658),
    .X(_2292_));
 sky130_fd_sc_hd__a22oi_1 _6319_ (.A1(_1728_),
    .A2(_2291_),
    .B1(_2292_),
    .B2(net746),
    .Y(_2293_));
 sky130_fd_sc_hd__o21ai_0 _6320_ (.A1(net691),
    .A2(_2278_),
    .B1(_2293_),
    .Y(_4623_));
 sky130_fd_sc_hd__a21o_1 _6321_ (.A1(_0227_),
    .A2(_0064_),
    .B1(_0226_),
    .X(_2294_));
 sky130_fd_sc_hd__a211oi_1 _6322_ (.A1(_0225_),
    .A2(_2294_),
    .B1(_0223_),
    .C1(_0224_),
    .Y(_2295_));
 sky130_fd_sc_hd__mux4_2 _6323_ (.A0(\cpuregs[0][4] ),
    .A1(\cpuregs[1][4] ),
    .A2(\cpuregs[2][4] ),
    .A3(\cpuregs[3][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2296_));
 sky130_fd_sc_hd__mux4_2 _6324_ (.A0(\cpuregs[4][4] ),
    .A1(\cpuregs[5][4] ),
    .A2(\cpuregs[6][4] ),
    .A3(\cpuregs[7][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2297_));
 sky130_fd_sc_hd__mux4_2 _6325_ (.A0(\cpuregs[16][4] ),
    .A1(\cpuregs[17][4] ),
    .A2(\cpuregs[18][4] ),
    .A3(\cpuregs[19][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2298_));
 sky130_fd_sc_hd__mux4_2 _6326_ (.A0(\cpuregs[20][4] ),
    .A1(\cpuregs[21][4] ),
    .A2(\cpuregs[22][4] ),
    .A3(\cpuregs[23][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2299_));
 sky130_fd_sc_hd__mux4_2 _6327_ (.A0(_2296_),
    .A1(_2297_),
    .A2(_2298_),
    .A3(_2299_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2300_));
 sky130_fd_sc_hd__mux4_2 _6328_ (.A0(\cpuregs[8][4] ),
    .A1(\cpuregs[9][4] ),
    .A2(\cpuregs[10][4] ),
    .A3(\cpuregs[11][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2301_));
 sky130_fd_sc_hd__mux4_2 _6329_ (.A0(\cpuregs[12][4] ),
    .A1(\cpuregs[13][4] ),
    .A2(\cpuregs[14][4] ),
    .A3(\cpuregs[15][4] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2302_));
 sky130_fd_sc_hd__mux4_2 _6330_ (.A0(\cpuregs[24][4] ),
    .A1(\cpuregs[25][4] ),
    .A2(\cpuregs[26][4] ),
    .A3(\cpuregs[27][4] ),
    .S0(net771),
    .S1(net769),
    .X(_2303_));
 sky130_fd_sc_hd__mux4_2 _6331_ (.A0(\cpuregs[28][4] ),
    .A1(\cpuregs[29][4] ),
    .A2(\cpuregs[30][4] ),
    .A3(\cpuregs[31][4] ),
    .S0(net771),
    .S1(net769),
    .X(_2304_));
 sky130_fd_sc_hd__mux4_2 _6332_ (.A0(_2301_),
    .A1(_2302_),
    .A2(_2303_),
    .A3(_2304_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2305_));
 sky130_fd_sc_hd__mux2i_1 _6333_ (.A0(_2300_),
    .A1(_2305_),
    .S(_0044_),
    .Y(_2306_));
 sky130_fd_sc_hd__nand2_1 _6334_ (.A(\reg_pc[4] ),
    .B(net688),
    .Y(_2307_));
 sky130_fd_sc_hd__o21ai_0 _6335_ (.A1(_1687_),
    .A2(_2306_),
    .B1(_2307_),
    .Y(_2308_));
 sky130_fd_sc_hd__nand2_1 _6336_ (.A(_1728_),
    .B(_2308_),
    .Y(_2309_));
 sky130_fd_sc_hd__mux4_2 _6337_ (.A0(net703),
    .A1(net732),
    .A2(net706),
    .A3(net708),
    .S0(net671),
    .S1(net658),
    .X(_2310_));
 sky130_fd_sc_hd__nand2_1 _6338_ (.A(net746),
    .B(_2310_),
    .Y(_2311_));
 sky130_fd_sc_hd__o311ai_0 _6339_ (.A1(net691),
    .A2(_1623_),
    .A3(_2295_),
    .B1(_2309_),
    .C1(_2311_),
    .Y(_4622_));
 sky130_fd_sc_hd__mux4_2 _6340_ (.A0(\cpuregs[0][3] ),
    .A1(\cpuregs[1][3] ),
    .A2(\cpuregs[2][3] ),
    .A3(\cpuregs[3][3] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2312_));
 sky130_fd_sc_hd__mux4_2 _6341_ (.A0(\cpuregs[4][3] ),
    .A1(\cpuregs[5][3] ),
    .A2(\cpuregs[6][3] ),
    .A3(\cpuregs[7][3] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2313_));
 sky130_fd_sc_hd__mux4_2 _6342_ (.A0(\cpuregs[16][3] ),
    .A1(\cpuregs[17][3] ),
    .A2(\cpuregs[18][3] ),
    .A3(\cpuregs[19][3] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2314_));
 sky130_fd_sc_hd__mux4_2 _6343_ (.A0(\cpuregs[20][3] ),
    .A1(\cpuregs[21][3] ),
    .A2(\cpuregs[22][3] ),
    .A3(\cpuregs[23][3] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2315_));
 sky130_fd_sc_hd__mux4_2 _6344_ (.A0(_2312_),
    .A1(_2313_),
    .A2(_2314_),
    .A3(_2315_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2316_));
 sky130_fd_sc_hd__mux4_2 _6345_ (.A0(\cpuregs[8][3] ),
    .A1(\cpuregs[9][3] ),
    .A2(\cpuregs[10][3] ),
    .A3(\cpuregs[11][3] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2317_));
 sky130_fd_sc_hd__mux4_2 _6346_ (.A0(\cpuregs[12][3] ),
    .A1(\cpuregs[13][3] ),
    .A2(\cpuregs[14][3] ),
    .A3(\cpuregs[15][3] ),
    .S0(net771),
    .S1(_0042_),
    .X(_2318_));
 sky130_fd_sc_hd__mux4_2 _6347_ (.A0(\cpuregs[24][3] ),
    .A1(\cpuregs[25][3] ),
    .A2(\cpuregs[26][3] ),
    .A3(\cpuregs[27][3] ),
    .S0(net770),
    .S1(net769),
    .X(_2319_));
 sky130_fd_sc_hd__mux4_2 _6348_ (.A0(\cpuregs[28][3] ),
    .A1(\cpuregs[29][3] ),
    .A2(\cpuregs[30][3] ),
    .A3(\cpuregs[31][3] ),
    .S0(net770),
    .S1(net769),
    .X(_2320_));
 sky130_fd_sc_hd__mux4_2 _6349_ (.A0(_2317_),
    .A1(_2318_),
    .A2(_2319_),
    .A3(_2320_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2321_));
 sky130_fd_sc_hd__mux2i_1 _6350_ (.A0(_2316_),
    .A1(_2321_),
    .S(_0044_),
    .Y(_2322_));
 sky130_fd_sc_hd__nor2_1 _6351_ (.A(_1687_),
    .B(_2322_),
    .Y(_2323_));
 sky130_fd_sc_hd__a21oi_1 _6352_ (.A1(\reg_pc[3] ),
    .A2(net688),
    .B1(_2323_),
    .Y(_2324_));
 sky130_fd_sc_hd__inv_1 _6353_ (.A(net707),
    .Y(_0464_));
 sky130_fd_sc_hd__nor2_1 _6354_ (.A(_0464_),
    .B(net657),
    .Y(_2325_));
 sky130_fd_sc_hd__a21oi_1 _6355_ (.A1(net704),
    .A2(net657),
    .B1(_2325_),
    .Y(_2326_));
 sky130_fd_sc_hd__nand3_1 _6356_ (.A(net711),
    .B(net671),
    .C(net658),
    .Y(_2327_));
 sky130_fd_sc_hd__o21ai_0 _6357_ (.A1(net671),
    .A2(_2326_),
    .B1(_2327_),
    .Y(_2328_));
 sky130_fd_sc_hd__a21o_1 _6358_ (.A1(_0219_),
    .A2(_0063_),
    .B1(_0245_),
    .X(_2329_));
 sky130_fd_sc_hd__a21oi_1 _6359_ (.A1(_0227_),
    .A2(_2329_),
    .B1(_0226_),
    .Y(_2330_));
 sky130_fd_sc_hd__xnor2_1 _6360_ (.A(_0225_),
    .B(_2330_),
    .Y(_2331_));
 sky130_fd_sc_hd__a22oi_1 _6361_ (.A1(net746),
    .A2(_2328_),
    .B1(_2331_),
    .B2(net690),
    .Y(_2332_));
 sky130_fd_sc_hd__o21ai_0 _6362_ (.A1(_2036_),
    .A2(_2324_),
    .B1(_2332_),
    .Y(_4621_));
 sky130_fd_sc_hd__mux4_2 _6363_ (.A0(\cpuregs[0][2] ),
    .A1(\cpuregs[1][2] ),
    .A2(\cpuregs[2][2] ),
    .A3(\cpuregs[3][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2333_));
 sky130_fd_sc_hd__mux4_2 _6364_ (.A0(\cpuregs[4][2] ),
    .A1(\cpuregs[5][2] ),
    .A2(\cpuregs[6][2] ),
    .A3(\cpuregs[7][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2334_));
 sky130_fd_sc_hd__mux4_2 _6365_ (.A0(\cpuregs[16][2] ),
    .A1(\cpuregs[17][2] ),
    .A2(\cpuregs[18][2] ),
    .A3(\cpuregs[19][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2335_));
 sky130_fd_sc_hd__mux4_2 _6366_ (.A0(\cpuregs[20][2] ),
    .A1(\cpuregs[21][2] ),
    .A2(\cpuregs[22][2] ),
    .A3(\cpuregs[23][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2336_));
 sky130_fd_sc_hd__mux4_2 _6367_ (.A0(_2333_),
    .A1(_2334_),
    .A2(_2335_),
    .A3(_2336_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2337_));
 sky130_fd_sc_hd__mux4_2 _6368_ (.A0(\cpuregs[8][2] ),
    .A1(\cpuregs[9][2] ),
    .A2(\cpuregs[10][2] ),
    .A3(\cpuregs[11][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2338_));
 sky130_fd_sc_hd__mux4_2 _6369_ (.A0(\cpuregs[12][2] ),
    .A1(\cpuregs[13][2] ),
    .A2(\cpuregs[14][2] ),
    .A3(\cpuregs[15][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2339_));
 sky130_fd_sc_hd__mux4_2 _6370_ (.A0(\cpuregs[24][2] ),
    .A1(\cpuregs[25][2] ),
    .A2(\cpuregs[26][2] ),
    .A3(\cpuregs[27][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2340_));
 sky130_fd_sc_hd__mux4_2 _6371_ (.A0(\cpuregs[28][2] ),
    .A1(\cpuregs[29][2] ),
    .A2(\cpuregs[30][2] ),
    .A3(\cpuregs[31][2] ),
    .S0(net770),
    .S1(_0042_),
    .X(_2341_));
 sky130_fd_sc_hd__mux4_2 _6372_ (.A0(_2338_),
    .A1(_2339_),
    .A2(_2340_),
    .A3(_2341_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2342_));
 sky130_fd_sc_hd__mux2i_1 _6373_ (.A0(_2337_),
    .A1(_2342_),
    .S(_0044_),
    .Y(_2343_));
 sky130_fd_sc_hd__nor2_1 _6374_ (.A(_1687_),
    .B(_2343_),
    .Y(_2344_));
 sky130_fd_sc_hd__a21oi_1 _6375_ (.A1(\reg_pc[2] ),
    .A2(net688),
    .B1(_2344_),
    .Y(_2345_));
 sky130_fd_sc_hd__inv_1 _6376_ (.A(net708),
    .Y(_0470_));
 sky130_fd_sc_hd__nor2_1 _6377_ (.A(_0470_),
    .B(net657),
    .Y(_2346_));
 sky130_fd_sc_hd__a21oi_1 _6378_ (.A1(net705),
    .A2(net657),
    .B1(_2346_),
    .Y(_2347_));
 sky130_fd_sc_hd__nand3_1 _6379_ (.A(net721),
    .B(net671),
    .C(net658),
    .Y(_2348_));
 sky130_fd_sc_hd__o21ai_0 _6380_ (.A1(net671),
    .A2(_2347_),
    .B1(_2348_),
    .Y(_2349_));
 sky130_fd_sc_hd__xor2_1 _6381_ (.A(_0227_),
    .B(_0064_),
    .X(_2350_));
 sky130_fd_sc_hd__a22oi_1 _6382_ (.A1(net746),
    .A2(_2349_),
    .B1(_2350_),
    .B2(net690),
    .Y(_2351_));
 sky130_fd_sc_hd__o21ai_0 _6383_ (.A1(_2036_),
    .A2(_2345_),
    .B1(_2351_),
    .Y(_4618_));
 sky130_fd_sc_hd__mux4_2 _6384_ (.A0(\cpuregs[0][1] ),
    .A1(\cpuregs[1][1] ),
    .A2(\cpuregs[2][1] ),
    .A3(\cpuregs[3][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2352_));
 sky130_fd_sc_hd__mux4_2 _6385_ (.A0(\cpuregs[4][1] ),
    .A1(\cpuregs[5][1] ),
    .A2(\cpuregs[6][1] ),
    .A3(\cpuregs[7][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2353_));
 sky130_fd_sc_hd__mux4_2 _6386_ (.A0(\cpuregs[16][1] ),
    .A1(\cpuregs[17][1] ),
    .A2(\cpuregs[18][1] ),
    .A3(\cpuregs[19][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2354_));
 sky130_fd_sc_hd__mux4_2 _6387_ (.A0(\cpuregs[20][1] ),
    .A1(\cpuregs[21][1] ),
    .A2(\cpuregs[22][1] ),
    .A3(\cpuregs[23][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2355_));
 sky130_fd_sc_hd__mux4_2 _6388_ (.A0(_2352_),
    .A1(_2353_),
    .A2(_2354_),
    .A3(_2355_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2356_));
 sky130_fd_sc_hd__mux4_2 _6389_ (.A0(\cpuregs[8][1] ),
    .A1(\cpuregs[9][1] ),
    .A2(\cpuregs[10][1] ),
    .A3(\cpuregs[11][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2357_));
 sky130_fd_sc_hd__mux4_2 _6390_ (.A0(\cpuregs[12][1] ),
    .A1(\cpuregs[13][1] ),
    .A2(\cpuregs[14][1] ),
    .A3(\cpuregs[15][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2358_));
 sky130_fd_sc_hd__mux4_2 _6391_ (.A0(\cpuregs[24][1] ),
    .A1(\cpuregs[25][1] ),
    .A2(\cpuregs[26][1] ),
    .A3(\cpuregs[27][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2359_));
 sky130_fd_sc_hd__mux4_2 _6392_ (.A0(\cpuregs[28][1] ),
    .A1(\cpuregs[29][1] ),
    .A2(\cpuregs[30][1] ),
    .A3(\cpuregs[31][1] ),
    .S0(_0041_),
    .S1(_0042_),
    .X(_2360_));
 sky130_fd_sc_hd__mux4_2 _6393_ (.A0(_2357_),
    .A1(_2358_),
    .A2(_2359_),
    .A3(_2360_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_2361_));
 sky130_fd_sc_hd__mux2i_1 _6394_ (.A0(_2356_),
    .A1(_2361_),
    .S(_0044_),
    .Y(_2362_));
 sky130_fd_sc_hd__nor2_1 _6395_ (.A(_1687_),
    .B(_2362_),
    .Y(_2363_));
 sky130_fd_sc_hd__a21oi_1 _6396_ (.A1(\reg_pc[1] ),
    .A2(net688),
    .B1(_2363_),
    .Y(_2364_));
 sky130_fd_sc_hd__nor2_1 _6397_ (.A(_0333_),
    .B(net657),
    .Y(_2365_));
 sky130_fd_sc_hd__a21oi_1 _6398_ (.A1(net706),
    .A2(net657),
    .B1(_2365_),
    .Y(_2366_));
 sky130_fd_sc_hd__nand3_1 _6399_ (.A(net732),
    .B(net671),
    .C(net658),
    .Y(_2367_));
 sky130_fd_sc_hd__o21ai_0 _6400_ (.A1(net671),
    .A2(_2366_),
    .B1(_2367_),
    .Y(_2368_));
 sky130_fd_sc_hd__a22oi_1 _6401_ (.A1(_0065_),
    .A2(net690),
    .B1(_2368_),
    .B2(net746),
    .Y(_2369_));
 sky130_fd_sc_hd__o21ai_0 _6402_ (.A1(_2036_),
    .A2(_2364_),
    .B1(_2369_),
    .Y(_4607_));
 sky130_fd_sc_hd__nor2_1 _6403_ (.A(_0055_),
    .B(net657),
    .Y(_2370_));
 sky130_fd_sc_hd__a21oi_1 _6404_ (.A1(net707),
    .A2(net657),
    .B1(_2370_),
    .Y(_2371_));
 sky130_fd_sc_hd__mux4_2 _6405_ (.A0(\cpuregs[0][0] ),
    .A1(\cpuregs[1][0] ),
    .A2(\cpuregs[2][0] ),
    .A3(\cpuregs[3][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2372_));
 sky130_fd_sc_hd__mux4_2 _6406_ (.A0(\cpuregs[4][0] ),
    .A1(\cpuregs[5][0] ),
    .A2(\cpuregs[6][0] ),
    .A3(\cpuregs[7][0] ),
    .S0(net774),
    .S1(net768),
    .X(_2373_));
 sky130_fd_sc_hd__mux4_2 _6407_ (.A0(\cpuregs[8][0] ),
    .A1(\cpuregs[9][0] ),
    .A2(\cpuregs[10][0] ),
    .A3(\cpuregs[11][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2374_));
 sky130_fd_sc_hd__mux4_2 _6408_ (.A0(\cpuregs[12][0] ),
    .A1(\cpuregs[13][0] ),
    .A2(\cpuregs[14][0] ),
    .A3(\cpuregs[15][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2375_));
 sky130_fd_sc_hd__mux4_2 _6409_ (.A0(_2372_),
    .A1(_2373_),
    .A2(_2374_),
    .A3(_2375_),
    .S0(_0043_),
    .S1(net764),
    .X(_2376_));
 sky130_fd_sc_hd__mux4_2 _6410_ (.A0(\cpuregs[16][0] ),
    .A1(\cpuregs[17][0] ),
    .A2(\cpuregs[18][0] ),
    .A3(\cpuregs[19][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2377_));
 sky130_fd_sc_hd__mux4_2 _6411_ (.A0(\cpuregs[20][0] ),
    .A1(\cpuregs[21][0] ),
    .A2(\cpuregs[22][0] ),
    .A3(\cpuregs[23][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2378_));
 sky130_fd_sc_hd__mux4_2 _6412_ (.A0(\cpuregs[24][0] ),
    .A1(\cpuregs[25][0] ),
    .A2(\cpuregs[26][0] ),
    .A3(\cpuregs[27][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2379_));
 sky130_fd_sc_hd__mux4_2 _6413_ (.A0(\cpuregs[28][0] ),
    .A1(\cpuregs[29][0] ),
    .A2(\cpuregs[30][0] ),
    .A3(\cpuregs[31][0] ),
    .S0(_0041_),
    .S1(net768),
    .X(_2380_));
 sky130_fd_sc_hd__mux4_2 _6414_ (.A0(_2377_),
    .A1(_2378_),
    .A2(_2379_),
    .A3(_2380_),
    .S0(net766),
    .S1(net764),
    .X(_2381_));
 sky130_fd_sc_hd__mux2i_1 _6415_ (.A0(_2376_),
    .A1(_2381_),
    .S(_0045_),
    .Y(_2382_));
 sky130_fd_sc_hd__nor3_1 _6416_ (.A(_1687_),
    .B(_2036_),
    .C(_2382_),
    .Y(_2383_));
 sky130_fd_sc_hd__a21oi_1 _6417_ (.A1(_0228_),
    .A2(net690),
    .B1(_2383_),
    .Y(_2384_));
 sky130_fd_sc_hd__o31ai_1 _6418_ (.A1(net689),
    .A2(net671),
    .A3(_2371_),
    .B1(_2384_),
    .Y(_4596_));
 sky130_fd_sc_hd__mux4_2 _6426_ (.A0(\cpuregs[0][30] ),
    .A1(\cpuregs[1][30] ),
    .A2(\cpuregs[2][30] ),
    .A3(\cpuregs[3][30] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2392_));
 sky130_fd_sc_hd__mux4_2 _6430_ (.A0(\cpuregs[4][30] ),
    .A1(\cpuregs[5][30] ),
    .A2(\cpuregs[6][30] ),
    .A3(\cpuregs[7][30] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2396_));
 sky130_fd_sc_hd__mux4_2 _6431_ (.A0(\cpuregs[8][30] ),
    .A1(\cpuregs[9][30] ),
    .A2(\cpuregs[10][30] ),
    .A3(\cpuregs[11][30] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2397_));
 sky130_fd_sc_hd__mux4_2 _6437_ (.A0(\cpuregs[12][30] ),
    .A1(\cpuregs[13][30] ),
    .A2(\cpuregs[14][30] ),
    .A3(\cpuregs[15][30] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2403_));
 sky130_fd_sc_hd__mux4_2 _6442_ (.A0(_2392_),
    .A1(_2396_),
    .A2(_2397_),
    .A3(_2403_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2408_));
 sky130_fd_sc_hd__mux4_2 _6443_ (.A0(\cpuregs[16][30] ),
    .A1(\cpuregs[17][30] ),
    .A2(\cpuregs[18][30] ),
    .A3(\cpuregs[19][30] ),
    .S0(net760),
    .S1(net757),
    .X(_2409_));
 sky130_fd_sc_hd__mux4_2 _6444_ (.A0(\cpuregs[20][30] ),
    .A1(\cpuregs[21][30] ),
    .A2(\cpuregs[22][30] ),
    .A3(\cpuregs[23][30] ),
    .S0(net760),
    .S1(net757),
    .X(_2410_));
 sky130_fd_sc_hd__mux4_2 _6445_ (.A0(\cpuregs[24][30] ),
    .A1(\cpuregs[25][30] ),
    .A2(\cpuregs[26][30] ),
    .A3(\cpuregs[27][30] ),
    .S0(net760),
    .S1(net757),
    .X(_2411_));
 sky130_fd_sc_hd__mux4_2 _6446_ (.A0(\cpuregs[28][30] ),
    .A1(\cpuregs[29][30] ),
    .A2(\cpuregs[30][30] ),
    .A3(\cpuregs[31][30] ),
    .S0(net760),
    .S1(net757),
    .X(_2412_));
 sky130_fd_sc_hd__mux4_2 _6447_ (.A0(_2409_),
    .A1(_2410_),
    .A2(_2411_),
    .A3(_2412_),
    .S0(net754),
    .S1(_0049_),
    .X(_2413_));
 sky130_fd_sc_hd__mux2i_1 _6450_ (.A0(_2408_),
    .A1(_2413_),
    .S(net751),
    .Y(_2416_));
 sky130_fd_sc_hd__nor2_1 _6451_ (.A(is_lui_auipc_jal),
    .B(is_jalr_addi_slti_sltiu_xori_ori_andi),
    .Y(_2417_));
 sky130_fd_sc_hd__nor2_1 _6452_ (.A(\decoded_imm_j[2] ),
    .B(\decoded_imm_j[1] ),
    .Y(_2418_));
 sky130_fd_sc_hd__nor3_1 _6453_ (.A(\decoded_imm_j[11] ),
    .B(\decoded_imm_j[4] ),
    .C(\decoded_imm_j[3] ),
    .Y(_2419_));
 sky130_fd_sc_hd__nand2_1 _6454_ (.A(_2418_),
    .B(_2419_),
    .Y(_2420_));
 sky130_fd_sc_hd__nand2_1 _6455_ (.A(_2417_),
    .B(_2420_),
    .Y(_2421_));
 sky130_fd_sc_hd__or2_2 _6457_ (.A(is_lui_auipc_jal),
    .B(is_jalr_addi_slti_sltiu_xori_ori_andi),
    .X(_2423_));
 sky130_fd_sc_hd__nand2_1 _6460_ (.A(\decoded_imm[30] ),
    .B(net687),
    .Y(_2426_));
 sky130_fd_sc_hd__o21ai_0 _6461_ (.A1(_2416_),
    .A2(net668),
    .B1(_2426_),
    .Y(_4587_));
 sky130_fd_sc_hd__mux4_2 _6464_ (.A0(\cpuregs[0][29] ),
    .A1(\cpuregs[1][29] ),
    .A2(\cpuregs[2][29] ),
    .A3(\cpuregs[3][29] ),
    .S0(net762),
    .S1(net756),
    .X(_2429_));
 sky130_fd_sc_hd__mux4_2 _6467_ (.A0(\cpuregs[4][29] ),
    .A1(\cpuregs[5][29] ),
    .A2(\cpuregs[6][29] ),
    .A3(\cpuregs[7][29] ),
    .S0(net762),
    .S1(net756),
    .X(_2432_));
 sky130_fd_sc_hd__mux4_2 _6470_ (.A0(\cpuregs[8][29] ),
    .A1(\cpuregs[9][29] ),
    .A2(\cpuregs[10][29] ),
    .A3(\cpuregs[11][29] ),
    .S0(net762),
    .S1(net756),
    .X(_2435_));
 sky130_fd_sc_hd__mux4_2 _6473_ (.A0(\cpuregs[12][29] ),
    .A1(\cpuregs[13][29] ),
    .A2(\cpuregs[14][29] ),
    .A3(\cpuregs[15][29] ),
    .S0(net762),
    .S1(net756),
    .X(_2438_));
 sky130_fd_sc_hd__mux4_2 _6476_ (.A0(_2429_),
    .A1(_2432_),
    .A2(_2435_),
    .A3(_2438_),
    .S0(net753),
    .S1(net752),
    .X(_2441_));
 sky130_fd_sc_hd__mux4_2 _6479_ (.A0(\cpuregs[16][29] ),
    .A1(\cpuregs[17][29] ),
    .A2(\cpuregs[18][29] ),
    .A3(\cpuregs[19][29] ),
    .S0(net761),
    .S1(net755),
    .X(_2444_));
 sky130_fd_sc_hd__mux4_2 _6480_ (.A0(\cpuregs[20][29] ),
    .A1(\cpuregs[21][29] ),
    .A2(\cpuregs[22][29] ),
    .A3(\cpuregs[23][29] ),
    .S0(net761),
    .S1(net755),
    .X(_2445_));
 sky130_fd_sc_hd__mux4_2 _6483_ (.A0(\cpuregs[24][29] ),
    .A1(\cpuregs[25][29] ),
    .A2(\cpuregs[26][29] ),
    .A3(\cpuregs[27][29] ),
    .S0(net761),
    .S1(net755),
    .X(_2448_));
 sky130_fd_sc_hd__mux4_2 _6486_ (.A0(\cpuregs[28][29] ),
    .A1(\cpuregs[29][29] ),
    .A2(\cpuregs[30][29] ),
    .A3(\cpuregs[31][29] ),
    .S0(net761),
    .S1(net755),
    .X(_2451_));
 sky130_fd_sc_hd__mux4_2 _6489_ (.A0(_2444_),
    .A1(_2445_),
    .A2(_2448_),
    .A3(_2451_),
    .S0(net753),
    .S1(net752),
    .X(_2454_));
 sky130_fd_sc_hd__mux2i_1 _6491_ (.A0(_2441_),
    .A1(_2454_),
    .S(_0050_),
    .Y(_2456_));
 sky130_fd_sc_hd__nand2_1 _6493_ (.A(\decoded_imm[29] ),
    .B(net687),
    .Y(_2458_));
 sky130_fd_sc_hd__o21ai_0 _6494_ (.A1(net668),
    .A2(_2456_),
    .B1(_2458_),
    .Y(_4585_));
 sky130_fd_sc_hd__mux4_2 _6497_ (.A0(\cpuregs[0][28] ),
    .A1(\cpuregs[1][28] ),
    .A2(\cpuregs[2][28] ),
    .A3(\cpuregs[3][28] ),
    .S0(net762),
    .S1(net756),
    .X(_2461_));
 sky130_fd_sc_hd__mux4_2 _6498_ (.A0(\cpuregs[4][28] ),
    .A1(\cpuregs[5][28] ),
    .A2(\cpuregs[6][28] ),
    .A3(\cpuregs[7][28] ),
    .S0(net762),
    .S1(net756),
    .X(_2462_));
 sky130_fd_sc_hd__mux4_2 _6499_ (.A0(\cpuregs[8][28] ),
    .A1(\cpuregs[9][28] ),
    .A2(\cpuregs[10][28] ),
    .A3(\cpuregs[11][28] ),
    .S0(net762),
    .S1(net756),
    .X(_2463_));
 sky130_fd_sc_hd__mux4_2 _6502_ (.A0(\cpuregs[12][28] ),
    .A1(\cpuregs[13][28] ),
    .A2(\cpuregs[14][28] ),
    .A3(\cpuregs[15][28] ),
    .S0(net762),
    .S1(net756),
    .X(_2466_));
 sky130_fd_sc_hd__mux4_2 _6503_ (.A0(_2461_),
    .A1(_2462_),
    .A2(_2463_),
    .A3(_2466_),
    .S0(net753),
    .S1(net752),
    .X(_2467_));
 sky130_fd_sc_hd__mux4_2 _6506_ (.A0(\cpuregs[16][28] ),
    .A1(\cpuregs[17][28] ),
    .A2(\cpuregs[18][28] ),
    .A3(\cpuregs[19][28] ),
    .S0(net761),
    .S1(net755),
    .X(_2470_));
 sky130_fd_sc_hd__mux4_2 _6509_ (.A0(\cpuregs[20][28] ),
    .A1(\cpuregs[21][28] ),
    .A2(\cpuregs[22][28] ),
    .A3(\cpuregs[23][28] ),
    .S0(net761),
    .S1(net755),
    .X(_2473_));
 sky130_fd_sc_hd__mux4_2 _6510_ (.A0(\cpuregs[24][28] ),
    .A1(\cpuregs[25][28] ),
    .A2(\cpuregs[26][28] ),
    .A3(\cpuregs[27][28] ),
    .S0(net761),
    .S1(net755),
    .X(_2474_));
 sky130_fd_sc_hd__mux4_2 _6511_ (.A0(\cpuregs[28][28] ),
    .A1(\cpuregs[29][28] ),
    .A2(\cpuregs[30][28] ),
    .A3(\cpuregs[31][28] ),
    .S0(net761),
    .S1(net755),
    .X(_2475_));
 sky130_fd_sc_hd__mux4_2 _6512_ (.A0(_2470_),
    .A1(_2473_),
    .A2(_2474_),
    .A3(_2475_),
    .S0(net753),
    .S1(net752),
    .X(_2476_));
 sky130_fd_sc_hd__mux2i_1 _6513_ (.A0(_2467_),
    .A1(_2476_),
    .S(_0050_),
    .Y(_2477_));
 sky130_fd_sc_hd__nand2_1 _6514_ (.A(\decoded_imm[28] ),
    .B(net687),
    .Y(_2478_));
 sky130_fd_sc_hd__o21ai_0 _6515_ (.A1(net668),
    .A2(_2477_),
    .B1(_2478_),
    .Y(_4584_));
 sky130_fd_sc_hd__mux4_2 _6516_ (.A0(\cpuregs[0][27] ),
    .A1(\cpuregs[1][27] ),
    .A2(\cpuregs[2][27] ),
    .A3(\cpuregs[3][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2479_));
 sky130_fd_sc_hd__mux4_2 _6517_ (.A0(\cpuregs[4][27] ),
    .A1(\cpuregs[5][27] ),
    .A2(\cpuregs[6][27] ),
    .A3(\cpuregs[7][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2480_));
 sky130_fd_sc_hd__mux4_2 _6520_ (.A0(\cpuregs[8][27] ),
    .A1(\cpuregs[9][27] ),
    .A2(\cpuregs[10][27] ),
    .A3(\cpuregs[11][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2483_));
 sky130_fd_sc_hd__mux4_2 _6521_ (.A0(\cpuregs[12][27] ),
    .A1(\cpuregs[13][27] ),
    .A2(\cpuregs[14][27] ),
    .A3(\cpuregs[15][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2484_));
 sky130_fd_sc_hd__mux4_2 _6522_ (.A0(_2479_),
    .A1(_2480_),
    .A2(_2483_),
    .A3(_2484_),
    .S0(net754),
    .S1(net752),
    .X(_2485_));
 sky130_fd_sc_hd__mux4_2 _6523_ (.A0(\cpuregs[16][27] ),
    .A1(\cpuregs[17][27] ),
    .A2(\cpuregs[18][27] ),
    .A3(\cpuregs[19][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2486_));
 sky130_fd_sc_hd__mux4_2 _6524_ (.A0(\cpuregs[20][27] ),
    .A1(\cpuregs[21][27] ),
    .A2(\cpuregs[22][27] ),
    .A3(\cpuregs[23][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2487_));
 sky130_fd_sc_hd__mux4_2 _6525_ (.A0(\cpuregs[24][27] ),
    .A1(\cpuregs[25][27] ),
    .A2(\cpuregs[26][27] ),
    .A3(\cpuregs[27][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2488_));
 sky130_fd_sc_hd__mux4_2 _6526_ (.A0(\cpuregs[28][27] ),
    .A1(\cpuregs[29][27] ),
    .A2(\cpuregs[30][27] ),
    .A3(\cpuregs[31][27] ),
    .S0(net761),
    .S1(net755),
    .X(_2489_));
 sky130_fd_sc_hd__mux4_2 _6527_ (.A0(_2486_),
    .A1(_2487_),
    .A2(_2488_),
    .A3(_2489_),
    .S0(net754),
    .S1(net752),
    .X(_2490_));
 sky130_fd_sc_hd__mux2i_1 _6528_ (.A0(_2485_),
    .A1(_2490_),
    .S(net751),
    .Y(_2491_));
 sky130_fd_sc_hd__nand2_1 _6529_ (.A(\decoded_imm[27] ),
    .B(net687),
    .Y(_2492_));
 sky130_fd_sc_hd__o21ai_0 _6530_ (.A1(net668),
    .A2(_2491_),
    .B1(_2492_),
    .Y(_4583_));
 sky130_fd_sc_hd__mux4_2 _6531_ (.A0(\cpuregs[0][26] ),
    .A1(\cpuregs[1][26] ),
    .A2(\cpuregs[2][26] ),
    .A3(\cpuregs[3][26] ),
    .S0(net762),
    .S1(net756),
    .X(_2493_));
 sky130_fd_sc_hd__mux4_2 _6534_ (.A0(\cpuregs[4][26] ),
    .A1(\cpuregs[5][26] ),
    .A2(\cpuregs[6][26] ),
    .A3(\cpuregs[7][26] ),
    .S0(net761),
    .S1(net755),
    .X(_2496_));
 sky130_fd_sc_hd__mux4_2 _6537_ (.A0(\cpuregs[8][26] ),
    .A1(\cpuregs[9][26] ),
    .A2(\cpuregs[10][26] ),
    .A3(\cpuregs[11][26] ),
    .S0(net762),
    .S1(net756),
    .X(_2499_));
 sky130_fd_sc_hd__mux4_2 _6538_ (.A0(\cpuregs[12][26] ),
    .A1(\cpuregs[13][26] ),
    .A2(\cpuregs[14][26] ),
    .A3(\cpuregs[15][26] ),
    .S0(net762),
    .S1(net756),
    .X(_2500_));
 sky130_fd_sc_hd__mux4_2 _6539_ (.A0(_2493_),
    .A1(_2496_),
    .A2(_2499_),
    .A3(_2500_),
    .S0(net753),
    .S1(net752),
    .X(_2501_));
 sky130_fd_sc_hd__mux4_2 _6540_ (.A0(\cpuregs[16][26] ),
    .A1(\cpuregs[17][26] ),
    .A2(\cpuregs[18][26] ),
    .A3(\cpuregs[19][26] ),
    .S0(net761),
    .S1(net755),
    .X(_2502_));
 sky130_fd_sc_hd__mux4_2 _6543_ (.A0(\cpuregs[20][26] ),
    .A1(\cpuregs[21][26] ),
    .A2(\cpuregs[22][26] ),
    .A3(\cpuregs[23][26] ),
    .S0(net761),
    .S1(net755),
    .X(_2505_));
 sky130_fd_sc_hd__mux4_2 _6544_ (.A0(\cpuregs[24][26] ),
    .A1(\cpuregs[25][26] ),
    .A2(\cpuregs[26][26] ),
    .A3(\cpuregs[27][26] ),
    .S0(net761),
    .S1(net755),
    .X(_2506_));
 sky130_fd_sc_hd__mux4_2 _6545_ (.A0(\cpuregs[28][26] ),
    .A1(\cpuregs[29][26] ),
    .A2(\cpuregs[30][26] ),
    .A3(\cpuregs[31][26] ),
    .S0(net761),
    .S1(net755),
    .X(_2507_));
 sky130_fd_sc_hd__mux4_2 _6546_ (.A0(_2502_),
    .A1(_2505_),
    .A2(_2506_),
    .A3(_2507_),
    .S0(net753),
    .S1(net752),
    .X(_2508_));
 sky130_fd_sc_hd__mux2i_1 _6547_ (.A0(_2501_),
    .A1(_2508_),
    .S(_0050_),
    .Y(_2509_));
 sky130_fd_sc_hd__nand2_1 _6548_ (.A(\decoded_imm[26] ),
    .B(net687),
    .Y(_2510_));
 sky130_fd_sc_hd__o21ai_0 _6549_ (.A1(net668),
    .A2(_2509_),
    .B1(_2510_),
    .Y(_4582_));
 sky130_fd_sc_hd__mux4_2 _6552_ (.A0(\cpuregs[0][25] ),
    .A1(\cpuregs[1][25] ),
    .A2(\cpuregs[2][25] ),
    .A3(\cpuregs[3][25] ),
    .S0(net762),
    .S1(net756),
    .X(_2513_));
 sky130_fd_sc_hd__mux4_2 _6553_ (.A0(\cpuregs[4][25] ),
    .A1(\cpuregs[5][25] ),
    .A2(\cpuregs[6][25] ),
    .A3(\cpuregs[7][25] ),
    .S0(net762),
    .S1(net756),
    .X(_2514_));
 sky130_fd_sc_hd__mux4_2 _6554_ (.A0(\cpuregs[8][25] ),
    .A1(\cpuregs[9][25] ),
    .A2(\cpuregs[10][25] ),
    .A3(\cpuregs[11][25] ),
    .S0(net762),
    .S1(net756),
    .X(_2515_));
 sky130_fd_sc_hd__mux4_2 _6557_ (.A0(\cpuregs[12][25] ),
    .A1(\cpuregs[13][25] ),
    .A2(\cpuregs[14][25] ),
    .A3(\cpuregs[15][25] ),
    .S0(net762),
    .S1(net756),
    .X(_2518_));
 sky130_fd_sc_hd__mux4_2 _6560_ (.A0(_2513_),
    .A1(_2514_),
    .A2(_2515_),
    .A3(_2518_),
    .S0(net753),
    .S1(net752),
    .X(_2521_));
 sky130_fd_sc_hd__mux4_2 _6561_ (.A0(\cpuregs[16][25] ),
    .A1(\cpuregs[17][25] ),
    .A2(\cpuregs[18][25] ),
    .A3(\cpuregs[19][25] ),
    .S0(net761),
    .S1(net755),
    .X(_2522_));
 sky130_fd_sc_hd__mux4_2 _6562_ (.A0(\cpuregs[20][25] ),
    .A1(\cpuregs[21][25] ),
    .A2(\cpuregs[22][25] ),
    .A3(\cpuregs[23][25] ),
    .S0(net761),
    .S1(net755),
    .X(_2523_));
 sky130_fd_sc_hd__mux4_2 _6563_ (.A0(\cpuregs[24][25] ),
    .A1(\cpuregs[25][25] ),
    .A2(\cpuregs[26][25] ),
    .A3(\cpuregs[27][25] ),
    .S0(net761),
    .S1(net755),
    .X(_2524_));
 sky130_fd_sc_hd__mux4_2 _6566_ (.A0(\cpuregs[28][25] ),
    .A1(\cpuregs[29][25] ),
    .A2(\cpuregs[30][25] ),
    .A3(\cpuregs[31][25] ),
    .S0(net761),
    .S1(net755),
    .X(_2527_));
 sky130_fd_sc_hd__mux4_2 _6567_ (.A0(_2522_),
    .A1(_2523_),
    .A2(_2524_),
    .A3(_2527_),
    .S0(net753),
    .S1(net752),
    .X(_2528_));
 sky130_fd_sc_hd__mux2i_1 _6568_ (.A0(_2521_),
    .A1(_2528_),
    .S(_0050_),
    .Y(_2529_));
 sky130_fd_sc_hd__nand2_1 _6569_ (.A(\decoded_imm[25] ),
    .B(net687),
    .Y(_2530_));
 sky130_fd_sc_hd__o21ai_0 _6570_ (.A1(net668),
    .A2(_2529_),
    .B1(_2530_),
    .Y(_4581_));
 sky130_fd_sc_hd__mux4_2 _6571_ (.A0(\cpuregs[0][24] ),
    .A1(\cpuregs[1][24] ),
    .A2(\cpuregs[2][24] ),
    .A3(\cpuregs[3][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2531_));
 sky130_fd_sc_hd__mux4_2 _6572_ (.A0(\cpuregs[4][24] ),
    .A1(\cpuregs[5][24] ),
    .A2(\cpuregs[6][24] ),
    .A3(\cpuregs[7][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2532_));
 sky130_fd_sc_hd__mux4_2 _6573_ (.A0(\cpuregs[8][24] ),
    .A1(\cpuregs[9][24] ),
    .A2(\cpuregs[10][24] ),
    .A3(\cpuregs[11][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2533_));
 sky130_fd_sc_hd__mux4_2 _6574_ (.A0(\cpuregs[12][24] ),
    .A1(\cpuregs[13][24] ),
    .A2(\cpuregs[14][24] ),
    .A3(\cpuregs[15][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2534_));
 sky130_fd_sc_hd__mux4_2 _6575_ (.A0(_2531_),
    .A1(_2532_),
    .A2(_2533_),
    .A3(_2534_),
    .S0(net753),
    .S1(net752),
    .X(_2535_));
 sky130_fd_sc_hd__mux4_2 _6576_ (.A0(\cpuregs[16][24] ),
    .A1(\cpuregs[17][24] ),
    .A2(\cpuregs[18][24] ),
    .A3(\cpuregs[19][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2536_));
 sky130_fd_sc_hd__mux4_2 _6577_ (.A0(\cpuregs[20][24] ),
    .A1(\cpuregs[21][24] ),
    .A2(\cpuregs[22][24] ),
    .A3(\cpuregs[23][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2537_));
 sky130_fd_sc_hd__mux4_2 _6578_ (.A0(\cpuregs[24][24] ),
    .A1(\cpuregs[25][24] ),
    .A2(\cpuregs[26][24] ),
    .A3(\cpuregs[27][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2538_));
 sky130_fd_sc_hd__mux4_2 _6579_ (.A0(\cpuregs[28][24] ),
    .A1(\cpuregs[29][24] ),
    .A2(\cpuregs[30][24] ),
    .A3(\cpuregs[31][24] ),
    .S0(net761),
    .S1(net755),
    .X(_2539_));
 sky130_fd_sc_hd__mux4_2 _6582_ (.A0(_2536_),
    .A1(_2537_),
    .A2(_2538_),
    .A3(_2539_),
    .S0(net753),
    .S1(net752),
    .X(_2542_));
 sky130_fd_sc_hd__mux2i_1 _6583_ (.A0(_2535_),
    .A1(_2542_),
    .S(_0050_),
    .Y(_2543_));
 sky130_fd_sc_hd__nand2_1 _6584_ (.A(\decoded_imm[24] ),
    .B(net687),
    .Y(_2544_));
 sky130_fd_sc_hd__o21ai_0 _6585_ (.A1(net668),
    .A2(_2543_),
    .B1(_2544_),
    .Y(_4580_));
 sky130_fd_sc_hd__mux4_2 _6586_ (.A0(\cpuregs[0][23] ),
    .A1(\cpuregs[1][23] ),
    .A2(\cpuregs[2][23] ),
    .A3(\cpuregs[3][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2545_));
 sky130_fd_sc_hd__mux4_2 _6587_ (.A0(\cpuregs[4][23] ),
    .A1(\cpuregs[5][23] ),
    .A2(\cpuregs[6][23] ),
    .A3(\cpuregs[7][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2546_));
 sky130_fd_sc_hd__mux4_2 _6588_ (.A0(\cpuregs[8][23] ),
    .A1(\cpuregs[9][23] ),
    .A2(\cpuregs[10][23] ),
    .A3(\cpuregs[11][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2547_));
 sky130_fd_sc_hd__mux4_2 _6589_ (.A0(\cpuregs[12][23] ),
    .A1(\cpuregs[13][23] ),
    .A2(\cpuregs[14][23] ),
    .A3(\cpuregs[15][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2548_));
 sky130_fd_sc_hd__mux4_2 _6590_ (.A0(_2545_),
    .A1(_2546_),
    .A2(_2547_),
    .A3(_2548_),
    .S0(net753),
    .S1(net752),
    .X(_2549_));
 sky130_fd_sc_hd__mux4_2 _6591_ (.A0(\cpuregs[16][23] ),
    .A1(\cpuregs[17][23] ),
    .A2(\cpuregs[18][23] ),
    .A3(\cpuregs[19][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2550_));
 sky130_fd_sc_hd__mux4_2 _6592_ (.A0(\cpuregs[20][23] ),
    .A1(\cpuregs[21][23] ),
    .A2(\cpuregs[22][23] ),
    .A3(\cpuregs[23][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2551_));
 sky130_fd_sc_hd__mux4_2 _6595_ (.A0(\cpuregs[24][23] ),
    .A1(\cpuregs[25][23] ),
    .A2(\cpuregs[26][23] ),
    .A3(\cpuregs[27][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2554_));
 sky130_fd_sc_hd__mux4_2 _6596_ (.A0(\cpuregs[28][23] ),
    .A1(\cpuregs[29][23] ),
    .A2(\cpuregs[30][23] ),
    .A3(\cpuregs[31][23] ),
    .S0(net761),
    .S1(net755),
    .X(_2555_));
 sky130_fd_sc_hd__mux4_2 _6597_ (.A0(_2550_),
    .A1(_2551_),
    .A2(_2554_),
    .A3(_2555_),
    .S0(net753),
    .S1(net752),
    .X(_2556_));
 sky130_fd_sc_hd__mux2i_1 _6598_ (.A0(_2549_),
    .A1(_2556_),
    .S(_0050_),
    .Y(_2557_));
 sky130_fd_sc_hd__nand2_1 _6599_ (.A(\decoded_imm[23] ),
    .B(net687),
    .Y(_2558_));
 sky130_fd_sc_hd__o21ai_0 _6600_ (.A1(net668),
    .A2(_2557_),
    .B1(_2558_),
    .Y(_4579_));
 sky130_fd_sc_hd__mux4_2 _6601_ (.A0(\cpuregs[0][22] ),
    .A1(\cpuregs[1][22] ),
    .A2(\cpuregs[2][22] ),
    .A3(\cpuregs[3][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2559_));
 sky130_fd_sc_hd__mux4_2 _6602_ (.A0(\cpuregs[4][22] ),
    .A1(\cpuregs[5][22] ),
    .A2(\cpuregs[6][22] ),
    .A3(\cpuregs[7][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2560_));
 sky130_fd_sc_hd__mux4_2 _6603_ (.A0(\cpuregs[8][22] ),
    .A1(\cpuregs[9][22] ),
    .A2(\cpuregs[10][22] ),
    .A3(\cpuregs[11][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2561_));
 sky130_fd_sc_hd__mux4_2 _6604_ (.A0(\cpuregs[12][22] ),
    .A1(\cpuregs[13][22] ),
    .A2(\cpuregs[14][22] ),
    .A3(\cpuregs[15][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2562_));
 sky130_fd_sc_hd__mux4_2 _6605_ (.A0(_2559_),
    .A1(_2560_),
    .A2(_2561_),
    .A3(_2562_),
    .S0(net753),
    .S1(net752),
    .X(_2563_));
 sky130_fd_sc_hd__mux4_2 _6606_ (.A0(\cpuregs[16][22] ),
    .A1(\cpuregs[17][22] ),
    .A2(\cpuregs[18][22] ),
    .A3(\cpuregs[19][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2564_));
 sky130_fd_sc_hd__mux4_2 _6607_ (.A0(\cpuregs[20][22] ),
    .A1(\cpuregs[21][22] ),
    .A2(\cpuregs[22][22] ),
    .A3(\cpuregs[23][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2565_));
 sky130_fd_sc_hd__mux4_2 _6608_ (.A0(\cpuregs[24][22] ),
    .A1(\cpuregs[25][22] ),
    .A2(\cpuregs[26][22] ),
    .A3(\cpuregs[27][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2566_));
 sky130_fd_sc_hd__mux4_2 _6609_ (.A0(\cpuregs[28][22] ),
    .A1(\cpuregs[29][22] ),
    .A2(\cpuregs[30][22] ),
    .A3(\cpuregs[31][22] ),
    .S0(net761),
    .S1(net755),
    .X(_2567_));
 sky130_fd_sc_hd__mux4_2 _6610_ (.A0(_2564_),
    .A1(_2565_),
    .A2(_2566_),
    .A3(_2567_),
    .S0(net753),
    .S1(net752),
    .X(_2568_));
 sky130_fd_sc_hd__mux2i_1 _6611_ (.A0(_2563_),
    .A1(_2568_),
    .S(_0050_),
    .Y(_2569_));
 sky130_fd_sc_hd__nand2_1 _6612_ (.A(\decoded_imm[22] ),
    .B(net687),
    .Y(_2570_));
 sky130_fd_sc_hd__o21ai_0 _6613_ (.A1(net668),
    .A2(_2569_),
    .B1(_2570_),
    .Y(_4578_));
 sky130_fd_sc_hd__mux4_2 _6615_ (.A0(\cpuregs[0][21] ),
    .A1(\cpuregs[1][21] ),
    .A2(\cpuregs[2][21] ),
    .A3(\cpuregs[3][21] ),
    .S0(net761),
    .S1(net756),
    .X(_2572_));
 sky130_fd_sc_hd__mux4_2 _6616_ (.A0(\cpuregs[4][21] ),
    .A1(\cpuregs[5][21] ),
    .A2(\cpuregs[6][21] ),
    .A3(\cpuregs[7][21] ),
    .S0(net761),
    .S1(net756),
    .X(_2573_));
 sky130_fd_sc_hd__mux4_2 _6617_ (.A0(\cpuregs[8][21] ),
    .A1(\cpuregs[9][21] ),
    .A2(\cpuregs[10][21] ),
    .A3(\cpuregs[11][21] ),
    .S0(net761),
    .S1(net756),
    .X(_2574_));
 sky130_fd_sc_hd__mux4_2 _6618_ (.A0(\cpuregs[12][21] ),
    .A1(\cpuregs[13][21] ),
    .A2(\cpuregs[14][21] ),
    .A3(\cpuregs[15][21] ),
    .S0(net761),
    .S1(net756),
    .X(_2575_));
 sky130_fd_sc_hd__mux4_2 _6619_ (.A0(_2572_),
    .A1(_2573_),
    .A2(_2574_),
    .A3(_2575_),
    .S0(net754),
    .S1(net752),
    .X(_2576_));
 sky130_fd_sc_hd__mux4_2 _6620_ (.A0(\cpuregs[16][21] ),
    .A1(\cpuregs[17][21] ),
    .A2(\cpuregs[18][21] ),
    .A3(\cpuregs[19][21] ),
    .S0(net761),
    .S1(net756),
    .X(_2577_));
 sky130_fd_sc_hd__mux4_2 _6621_ (.A0(\cpuregs[20][21] ),
    .A1(\cpuregs[21][21] ),
    .A2(\cpuregs[22][21] ),
    .A3(\cpuregs[23][21] ),
    .S0(net758),
    .S1(net757),
    .X(_2578_));
 sky130_fd_sc_hd__mux4_2 _6622_ (.A0(\cpuregs[24][21] ),
    .A1(\cpuregs[25][21] ),
    .A2(\cpuregs[26][21] ),
    .A3(\cpuregs[27][21] ),
    .S0(net758),
    .S1(net757),
    .X(_2579_));
 sky130_fd_sc_hd__mux4_2 _6623_ (.A0(\cpuregs[28][21] ),
    .A1(\cpuregs[29][21] ),
    .A2(\cpuregs[30][21] ),
    .A3(\cpuregs[31][21] ),
    .S0(net758),
    .S1(net757),
    .X(_2580_));
 sky130_fd_sc_hd__mux4_2 _6624_ (.A0(_2577_),
    .A1(_2578_),
    .A2(_2579_),
    .A3(_2580_),
    .S0(net754),
    .S1(net752),
    .X(_2581_));
 sky130_fd_sc_hd__mux2i_1 _6625_ (.A0(_2576_),
    .A1(_2581_),
    .S(net751),
    .Y(_2582_));
 sky130_fd_sc_hd__nand2_1 _6626_ (.A(\decoded_imm[21] ),
    .B(net687),
    .Y(_2583_));
 sky130_fd_sc_hd__o21ai_0 _6627_ (.A1(net668),
    .A2(_2582_),
    .B1(_2583_),
    .Y(_4577_));
 sky130_fd_sc_hd__mux4_2 _6628_ (.A0(\cpuregs[0][20] ),
    .A1(\cpuregs[1][20] ),
    .A2(\cpuregs[2][20] ),
    .A3(\cpuregs[3][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2584_));
 sky130_fd_sc_hd__mux4_2 _6629_ (.A0(\cpuregs[4][20] ),
    .A1(\cpuregs[5][20] ),
    .A2(\cpuregs[6][20] ),
    .A3(\cpuregs[7][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2585_));
 sky130_fd_sc_hd__mux4_2 _6630_ (.A0(\cpuregs[8][20] ),
    .A1(\cpuregs[9][20] ),
    .A2(\cpuregs[10][20] ),
    .A3(\cpuregs[11][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2586_));
 sky130_fd_sc_hd__mux4_2 _6631_ (.A0(\cpuregs[12][20] ),
    .A1(\cpuregs[13][20] ),
    .A2(\cpuregs[14][20] ),
    .A3(\cpuregs[15][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2587_));
 sky130_fd_sc_hd__mux4_2 _6634_ (.A0(_2584_),
    .A1(_2585_),
    .A2(_2586_),
    .A3(_2587_),
    .S0(net753),
    .S1(net752),
    .X(_2590_));
 sky130_fd_sc_hd__mux4_2 _6635_ (.A0(\cpuregs[16][20] ),
    .A1(\cpuregs[17][20] ),
    .A2(\cpuregs[18][20] ),
    .A3(\cpuregs[19][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2591_));
 sky130_fd_sc_hd__mux4_2 _6636_ (.A0(\cpuregs[20][20] ),
    .A1(\cpuregs[21][20] ),
    .A2(\cpuregs[22][20] ),
    .A3(\cpuregs[23][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2592_));
 sky130_fd_sc_hd__mux4_2 _6637_ (.A0(\cpuregs[24][20] ),
    .A1(\cpuregs[25][20] ),
    .A2(\cpuregs[26][20] ),
    .A3(\cpuregs[27][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2593_));
 sky130_fd_sc_hd__mux4_2 _6638_ (.A0(\cpuregs[28][20] ),
    .A1(\cpuregs[29][20] ),
    .A2(\cpuregs[30][20] ),
    .A3(\cpuregs[31][20] ),
    .S0(net761),
    .S1(net755),
    .X(_2594_));
 sky130_fd_sc_hd__mux4_2 _6639_ (.A0(_2591_),
    .A1(_2592_),
    .A2(_2593_),
    .A3(_2594_),
    .S0(net753),
    .S1(net752),
    .X(_2595_));
 sky130_fd_sc_hd__mux2i_1 _6641_ (.A0(_2590_),
    .A1(_2595_),
    .S(_0050_),
    .Y(_2597_));
 sky130_fd_sc_hd__nand2_1 _6642_ (.A(\decoded_imm[20] ),
    .B(net687),
    .Y(_2598_));
 sky130_fd_sc_hd__o21ai_0 _6643_ (.A1(net668),
    .A2(_2597_),
    .B1(_2598_),
    .Y(_4576_));
 sky130_fd_sc_hd__mux4_2 _6644_ (.A0(\cpuregs[0][19] ),
    .A1(\cpuregs[1][19] ),
    .A2(\cpuregs[2][19] ),
    .A3(\cpuregs[3][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2599_));
 sky130_fd_sc_hd__mux4_2 _6645_ (.A0(\cpuregs[4][19] ),
    .A1(\cpuregs[5][19] ),
    .A2(\cpuregs[6][19] ),
    .A3(\cpuregs[7][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2600_));
 sky130_fd_sc_hd__mux4_2 _6646_ (.A0(\cpuregs[8][19] ),
    .A1(\cpuregs[9][19] ),
    .A2(\cpuregs[10][19] ),
    .A3(\cpuregs[11][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2601_));
 sky130_fd_sc_hd__mux4_2 _6647_ (.A0(\cpuregs[12][19] ),
    .A1(\cpuregs[13][19] ),
    .A2(\cpuregs[14][19] ),
    .A3(\cpuregs[15][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2602_));
 sky130_fd_sc_hd__mux4_2 _6648_ (.A0(_2599_),
    .A1(_2600_),
    .A2(_2601_),
    .A3(_2602_),
    .S0(net754),
    .S1(net752),
    .X(_2603_));
 sky130_fd_sc_hd__mux4_2 _6649_ (.A0(\cpuregs[16][19] ),
    .A1(\cpuregs[17][19] ),
    .A2(\cpuregs[18][19] ),
    .A3(\cpuregs[19][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2604_));
 sky130_fd_sc_hd__mux4_2 _6650_ (.A0(\cpuregs[20][19] ),
    .A1(\cpuregs[21][19] ),
    .A2(\cpuregs[22][19] ),
    .A3(\cpuregs[23][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2605_));
 sky130_fd_sc_hd__mux4_2 _6651_ (.A0(\cpuregs[24][19] ),
    .A1(\cpuregs[25][19] ),
    .A2(\cpuregs[26][19] ),
    .A3(\cpuregs[27][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2606_));
 sky130_fd_sc_hd__mux4_2 _6652_ (.A0(\cpuregs[28][19] ),
    .A1(\cpuregs[29][19] ),
    .A2(\cpuregs[30][19] ),
    .A3(\cpuregs[31][19] ),
    .S0(net760),
    .S1(net757),
    .X(_2607_));
 sky130_fd_sc_hd__mux4_2 _6653_ (.A0(_2604_),
    .A1(_2605_),
    .A2(_2606_),
    .A3(_2607_),
    .S0(net754),
    .S1(net752),
    .X(_2608_));
 sky130_fd_sc_hd__mux2i_1 _6654_ (.A0(_2603_),
    .A1(_2608_),
    .S(net751),
    .Y(_2609_));
 sky130_fd_sc_hd__nand2_1 _6655_ (.A(\decoded_imm[19] ),
    .B(net687),
    .Y(_2610_));
 sky130_fd_sc_hd__o21ai_0 _6656_ (.A1(net668),
    .A2(_2609_),
    .B1(_2610_),
    .Y(_4574_));
 sky130_fd_sc_hd__mux4_2 _6657_ (.A0(\cpuregs[0][18] ),
    .A1(\cpuregs[1][18] ),
    .A2(\cpuregs[2][18] ),
    .A3(\cpuregs[3][18] ),
    .S0(net760),
    .S1(net757),
    .X(_2611_));
 sky130_fd_sc_hd__mux4_2 _6658_ (.A0(\cpuregs[4][18] ),
    .A1(\cpuregs[5][18] ),
    .A2(\cpuregs[6][18] ),
    .A3(\cpuregs[7][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2612_));
 sky130_fd_sc_hd__mux4_2 _6659_ (.A0(\cpuregs[8][18] ),
    .A1(\cpuregs[9][18] ),
    .A2(\cpuregs[10][18] ),
    .A3(\cpuregs[11][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2613_));
 sky130_fd_sc_hd__mux4_2 _6660_ (.A0(\cpuregs[12][18] ),
    .A1(\cpuregs[13][18] ),
    .A2(\cpuregs[14][18] ),
    .A3(\cpuregs[15][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2614_));
 sky130_fd_sc_hd__mux4_2 _6661_ (.A0(_2611_),
    .A1(_2612_),
    .A2(_2613_),
    .A3(_2614_),
    .S0(net754),
    .S1(_0049_),
    .X(_2615_));
 sky130_fd_sc_hd__mux4_2 _6662_ (.A0(\cpuregs[16][18] ),
    .A1(\cpuregs[17][18] ),
    .A2(\cpuregs[18][18] ),
    .A3(\cpuregs[19][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2616_));
 sky130_fd_sc_hd__mux4_2 _6663_ (.A0(\cpuregs[20][18] ),
    .A1(\cpuregs[21][18] ),
    .A2(\cpuregs[22][18] ),
    .A3(\cpuregs[23][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2617_));
 sky130_fd_sc_hd__mux4_2 _6664_ (.A0(\cpuregs[24][18] ),
    .A1(\cpuregs[25][18] ),
    .A2(\cpuregs[26][18] ),
    .A3(\cpuregs[27][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2618_));
 sky130_fd_sc_hd__mux4_2 _6665_ (.A0(\cpuregs[28][18] ),
    .A1(\cpuregs[29][18] ),
    .A2(\cpuregs[30][18] ),
    .A3(\cpuregs[31][18] ),
    .S0(net759),
    .S1(net757),
    .X(_2619_));
 sky130_fd_sc_hd__mux4_2 _6666_ (.A0(_2616_),
    .A1(_2617_),
    .A2(_2618_),
    .A3(_2619_),
    .S0(net754),
    .S1(_0049_),
    .X(_2620_));
 sky130_fd_sc_hd__mux2i_1 _6667_ (.A0(_2615_),
    .A1(_2620_),
    .S(net751),
    .Y(_2621_));
 sky130_fd_sc_hd__nand2_1 _6668_ (.A(\decoded_imm[18] ),
    .B(net687),
    .Y(_2622_));
 sky130_fd_sc_hd__o21ai_0 _6669_ (.A1(net668),
    .A2(_2621_),
    .B1(_2622_),
    .Y(_4573_));
 sky130_fd_sc_hd__mux4_2 _6670_ (.A0(\cpuregs[0][17] ),
    .A1(\cpuregs[1][17] ),
    .A2(\cpuregs[2][17] ),
    .A3(\cpuregs[3][17] ),
    .S0(net762),
    .S1(net757),
    .X(_2623_));
 sky130_fd_sc_hd__mux4_2 _6671_ (.A0(\cpuregs[4][17] ),
    .A1(\cpuregs[5][17] ),
    .A2(\cpuregs[6][17] ),
    .A3(\cpuregs[7][17] ),
    .S0(net762),
    .S1(net756),
    .X(_2624_));
 sky130_fd_sc_hd__mux4_2 _6672_ (.A0(\cpuregs[8][17] ),
    .A1(\cpuregs[9][17] ),
    .A2(\cpuregs[10][17] ),
    .A3(\cpuregs[11][17] ),
    .S0(net762),
    .S1(net757),
    .X(_2625_));
 sky130_fd_sc_hd__mux4_2 _6673_ (.A0(\cpuregs[12][17] ),
    .A1(\cpuregs[13][17] ),
    .A2(\cpuregs[14][17] ),
    .A3(\cpuregs[15][17] ),
    .S0(net762),
    .S1(net756),
    .X(_2626_));
 sky130_fd_sc_hd__mux4_2 _6674_ (.A0(_2623_),
    .A1(_2624_),
    .A2(_2625_),
    .A3(_2626_),
    .S0(net753),
    .S1(net752),
    .X(_2627_));
 sky130_fd_sc_hd__mux4_2 _6675_ (.A0(\cpuregs[16][17] ),
    .A1(\cpuregs[17][17] ),
    .A2(\cpuregs[18][17] ),
    .A3(\cpuregs[19][17] ),
    .S0(net762),
    .S1(net756),
    .X(_2628_));
 sky130_fd_sc_hd__mux4_2 _6676_ (.A0(\cpuregs[20][17] ),
    .A1(\cpuregs[21][17] ),
    .A2(\cpuregs[22][17] ),
    .A3(\cpuregs[23][17] ),
    .S0(net762),
    .S1(net756),
    .X(_2629_));
 sky130_fd_sc_hd__mux4_2 _6677_ (.A0(\cpuregs[24][17] ),
    .A1(\cpuregs[25][17] ),
    .A2(\cpuregs[26][17] ),
    .A3(\cpuregs[27][17] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2630_));
 sky130_fd_sc_hd__mux4_2 _6678_ (.A0(\cpuregs[28][17] ),
    .A1(\cpuregs[29][17] ),
    .A2(\cpuregs[30][17] ),
    .A3(\cpuregs[31][17] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2631_));
 sky130_fd_sc_hd__mux4_2 _6679_ (.A0(_2628_),
    .A1(_2629_),
    .A2(_2630_),
    .A3(_2631_),
    .S0(net753),
    .S1(net752),
    .X(_2632_));
 sky130_fd_sc_hd__mux2i_1 _6680_ (.A0(_2627_),
    .A1(_2632_),
    .S(_0050_),
    .Y(_2633_));
 sky130_fd_sc_hd__nand2_1 _6681_ (.A(\decoded_imm[17] ),
    .B(net687),
    .Y(_2634_));
 sky130_fd_sc_hd__o21ai_0 _6682_ (.A1(net668),
    .A2(_2633_),
    .B1(_2634_),
    .Y(_4572_));
 sky130_fd_sc_hd__mux4_2 _6683_ (.A0(\cpuregs[0][16] ),
    .A1(\cpuregs[1][16] ),
    .A2(\cpuregs[2][16] ),
    .A3(\cpuregs[3][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2635_));
 sky130_fd_sc_hd__mux4_2 _6684_ (.A0(\cpuregs[4][16] ),
    .A1(\cpuregs[5][16] ),
    .A2(\cpuregs[6][16] ),
    .A3(\cpuregs[7][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2636_));
 sky130_fd_sc_hd__mux4_2 _6685_ (.A0(\cpuregs[8][16] ),
    .A1(\cpuregs[9][16] ),
    .A2(\cpuregs[10][16] ),
    .A3(\cpuregs[11][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2637_));
 sky130_fd_sc_hd__mux4_2 _6686_ (.A0(\cpuregs[12][16] ),
    .A1(\cpuregs[13][16] ),
    .A2(\cpuregs[14][16] ),
    .A3(\cpuregs[15][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2638_));
 sky130_fd_sc_hd__mux4_2 _6687_ (.A0(_2635_),
    .A1(_2636_),
    .A2(_2637_),
    .A3(_2638_),
    .S0(net754),
    .S1(net752),
    .X(_2639_));
 sky130_fd_sc_hd__mux4_2 _6688_ (.A0(\cpuregs[16][16] ),
    .A1(\cpuregs[17][16] ),
    .A2(\cpuregs[18][16] ),
    .A3(\cpuregs[19][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2640_));
 sky130_fd_sc_hd__mux4_2 _6689_ (.A0(\cpuregs[20][16] ),
    .A1(\cpuregs[21][16] ),
    .A2(\cpuregs[22][16] ),
    .A3(\cpuregs[23][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2641_));
 sky130_fd_sc_hd__mux4_2 _6690_ (.A0(\cpuregs[24][16] ),
    .A1(\cpuregs[25][16] ),
    .A2(\cpuregs[26][16] ),
    .A3(\cpuregs[27][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2642_));
 sky130_fd_sc_hd__mux4_2 _6691_ (.A0(\cpuregs[28][16] ),
    .A1(\cpuregs[29][16] ),
    .A2(\cpuregs[30][16] ),
    .A3(\cpuregs[31][16] ),
    .S0(net761),
    .S1(net756),
    .X(_2643_));
 sky130_fd_sc_hd__mux4_2 _6692_ (.A0(_2640_),
    .A1(_2641_),
    .A2(_2642_),
    .A3(_2643_),
    .S0(net754),
    .S1(net752),
    .X(_2644_));
 sky130_fd_sc_hd__mux2i_1 _6693_ (.A0(_2639_),
    .A1(_2644_),
    .S(net751),
    .Y(_2645_));
 sky130_fd_sc_hd__nand2_1 _6694_ (.A(\decoded_imm[16] ),
    .B(net687),
    .Y(_2646_));
 sky130_fd_sc_hd__o21ai_0 _6695_ (.A1(net668),
    .A2(_2645_),
    .B1(_2646_),
    .Y(_4571_));
 sky130_fd_sc_hd__mux4_2 _6696_ (.A0(\cpuregs[0][15] ),
    .A1(\cpuregs[1][15] ),
    .A2(\cpuregs[2][15] ),
    .A3(\cpuregs[3][15] ),
    .S0(net762),
    .S1(net756),
    .X(_2647_));
 sky130_fd_sc_hd__mux4_2 _6697_ (.A0(\cpuregs[4][15] ),
    .A1(\cpuregs[5][15] ),
    .A2(\cpuregs[6][15] ),
    .A3(\cpuregs[7][15] ),
    .S0(net762),
    .S1(net756),
    .X(_2648_));
 sky130_fd_sc_hd__mux4_2 _6698_ (.A0(\cpuregs[8][15] ),
    .A1(\cpuregs[9][15] ),
    .A2(\cpuregs[10][15] ),
    .A3(\cpuregs[11][15] ),
    .S0(net762),
    .S1(net756),
    .X(_2649_));
 sky130_fd_sc_hd__mux4_2 _6699_ (.A0(\cpuregs[12][15] ),
    .A1(\cpuregs[13][15] ),
    .A2(\cpuregs[14][15] ),
    .A3(\cpuregs[15][15] ),
    .S0(net762),
    .S1(net756),
    .X(_2650_));
 sky130_fd_sc_hd__mux4_2 _6700_ (.A0(_2647_),
    .A1(_2648_),
    .A2(_2649_),
    .A3(_2650_),
    .S0(net753),
    .S1(net752),
    .X(_2651_));
 sky130_fd_sc_hd__mux4_2 _6701_ (.A0(\cpuregs[16][15] ),
    .A1(\cpuregs[17][15] ),
    .A2(\cpuregs[18][15] ),
    .A3(\cpuregs[19][15] ),
    .S0(net761),
    .S1(net755),
    .X(_2652_));
 sky130_fd_sc_hd__mux4_2 _6702_ (.A0(\cpuregs[20][15] ),
    .A1(\cpuregs[21][15] ),
    .A2(\cpuregs[22][15] ),
    .A3(\cpuregs[23][15] ),
    .S0(net761),
    .S1(net756),
    .X(_2653_));
 sky130_fd_sc_hd__mux4_2 _6703_ (.A0(\cpuregs[24][15] ),
    .A1(\cpuregs[25][15] ),
    .A2(\cpuregs[26][15] ),
    .A3(\cpuregs[27][15] ),
    .S0(net761),
    .S1(net756),
    .X(_2654_));
 sky130_fd_sc_hd__mux4_2 _6704_ (.A0(\cpuregs[28][15] ),
    .A1(\cpuregs[29][15] ),
    .A2(\cpuregs[30][15] ),
    .A3(\cpuregs[31][15] ),
    .S0(net762),
    .S1(net756),
    .X(_2655_));
 sky130_fd_sc_hd__mux4_2 _6705_ (.A0(_2652_),
    .A1(_2653_),
    .A2(_2654_),
    .A3(_2655_),
    .S0(net753),
    .S1(net752),
    .X(_2656_));
 sky130_fd_sc_hd__mux2i_1 _6706_ (.A0(_2651_),
    .A1(_2656_),
    .S(_0050_),
    .Y(_2657_));
 sky130_fd_sc_hd__nand2_1 _6707_ (.A(\decoded_imm[15] ),
    .B(net687),
    .Y(_2658_));
 sky130_fd_sc_hd__o21ai_0 _6708_ (.A1(net668),
    .A2(_2657_),
    .B1(_2658_),
    .Y(_4570_));
 sky130_fd_sc_hd__mux4_2 _6709_ (.A0(\cpuregs[0][14] ),
    .A1(\cpuregs[1][14] ),
    .A2(\cpuregs[2][14] ),
    .A3(\cpuregs[3][14] ),
    .S0(net761),
    .S1(net756),
    .X(_2659_));
 sky130_fd_sc_hd__mux4_2 _6710_ (.A0(\cpuregs[4][14] ),
    .A1(\cpuregs[5][14] ),
    .A2(\cpuregs[6][14] ),
    .A3(\cpuregs[7][14] ),
    .S0(net761),
    .S1(net756),
    .X(_2660_));
 sky130_fd_sc_hd__mux4_2 _6711_ (.A0(\cpuregs[8][14] ),
    .A1(\cpuregs[9][14] ),
    .A2(\cpuregs[10][14] ),
    .A3(\cpuregs[11][14] ),
    .S0(net761),
    .S1(net756),
    .X(_2661_));
 sky130_fd_sc_hd__mux4_2 _6712_ (.A0(\cpuregs[12][14] ),
    .A1(\cpuregs[13][14] ),
    .A2(\cpuregs[14][14] ),
    .A3(\cpuregs[15][14] ),
    .S0(net761),
    .S1(net756),
    .X(_2662_));
 sky130_fd_sc_hd__mux4_2 _6713_ (.A0(_2659_),
    .A1(_2660_),
    .A2(_2661_),
    .A3(_2662_),
    .S0(net754),
    .S1(net752),
    .X(_2663_));
 sky130_fd_sc_hd__mux4_2 _6714_ (.A0(\cpuregs[16][14] ),
    .A1(\cpuregs[17][14] ),
    .A2(\cpuregs[18][14] ),
    .A3(\cpuregs[19][14] ),
    .S0(net761),
    .S1(net756),
    .X(_2664_));
 sky130_fd_sc_hd__mux4_2 _6715_ (.A0(\cpuregs[20][14] ),
    .A1(\cpuregs[21][14] ),
    .A2(\cpuregs[22][14] ),
    .A3(\cpuregs[23][14] ),
    .S0(net759),
    .S1(net757),
    .X(_2665_));
 sky130_fd_sc_hd__mux4_2 _6716_ (.A0(\cpuregs[24][14] ),
    .A1(\cpuregs[25][14] ),
    .A2(\cpuregs[26][14] ),
    .A3(\cpuregs[27][14] ),
    .S0(net759),
    .S1(net757),
    .X(_2666_));
 sky130_fd_sc_hd__mux4_2 _6717_ (.A0(\cpuregs[28][14] ),
    .A1(\cpuregs[29][14] ),
    .A2(\cpuregs[30][14] ),
    .A3(\cpuregs[31][14] ),
    .S0(net758),
    .S1(net757),
    .X(_2667_));
 sky130_fd_sc_hd__mux4_2 _6718_ (.A0(_2664_),
    .A1(_2665_),
    .A2(_2666_),
    .A3(_2667_),
    .S0(net754),
    .S1(net752),
    .X(_2668_));
 sky130_fd_sc_hd__mux2i_1 _6719_ (.A0(_2663_),
    .A1(_2668_),
    .S(net751),
    .Y(_2669_));
 sky130_fd_sc_hd__nand2_1 _6720_ (.A(\decoded_imm[14] ),
    .B(net687),
    .Y(_2670_));
 sky130_fd_sc_hd__o21ai_0 _6721_ (.A1(net668),
    .A2(_2669_),
    .B1(_2670_),
    .Y(_4569_));
 sky130_fd_sc_hd__mux4_2 _6722_ (.A0(\cpuregs[0][13] ),
    .A1(\cpuregs[1][13] ),
    .A2(\cpuregs[2][13] ),
    .A3(\cpuregs[3][13] ),
    .S0(net759),
    .S1(net757),
    .X(_2671_));
 sky130_fd_sc_hd__mux4_2 _6723_ (.A0(\cpuregs[4][13] ),
    .A1(\cpuregs[5][13] ),
    .A2(\cpuregs[6][13] ),
    .A3(\cpuregs[7][13] ),
    .S0(net759),
    .S1(net757),
    .X(_2672_));
 sky130_fd_sc_hd__mux4_2 _6724_ (.A0(\cpuregs[8][13] ),
    .A1(\cpuregs[9][13] ),
    .A2(\cpuregs[10][13] ),
    .A3(\cpuregs[11][13] ),
    .S0(net759),
    .S1(net757),
    .X(_2673_));
 sky130_fd_sc_hd__mux4_2 _6725_ (.A0(\cpuregs[12][13] ),
    .A1(\cpuregs[13][13] ),
    .A2(\cpuregs[14][13] ),
    .A3(\cpuregs[15][13] ),
    .S0(net758),
    .S1(net757),
    .X(_2674_));
 sky130_fd_sc_hd__mux4_2 _6726_ (.A0(_2671_),
    .A1(_2672_),
    .A2(_2673_),
    .A3(_2674_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2675_));
 sky130_fd_sc_hd__mux4_2 _6727_ (.A0(\cpuregs[16][13] ),
    .A1(\cpuregs[17][13] ),
    .A2(\cpuregs[18][13] ),
    .A3(\cpuregs[19][13] ),
    .S0(net758),
    .S1(net757),
    .X(_2676_));
 sky130_fd_sc_hd__mux4_2 _6728_ (.A0(\cpuregs[20][13] ),
    .A1(\cpuregs[21][13] ),
    .A2(\cpuregs[22][13] ),
    .A3(\cpuregs[23][13] ),
    .S0(net758),
    .S1(net757),
    .X(_2677_));
 sky130_fd_sc_hd__mux4_2 _6729_ (.A0(\cpuregs[24][13] ),
    .A1(\cpuregs[25][13] ),
    .A2(\cpuregs[26][13] ),
    .A3(\cpuregs[27][13] ),
    .S0(net758),
    .S1(net757),
    .X(_2678_));
 sky130_fd_sc_hd__mux4_2 _6730_ (.A0(\cpuregs[28][13] ),
    .A1(\cpuregs[29][13] ),
    .A2(\cpuregs[30][13] ),
    .A3(\cpuregs[31][13] ),
    .S0(net758),
    .S1(net757),
    .X(_2679_));
 sky130_fd_sc_hd__mux4_2 _6731_ (.A0(_2676_),
    .A1(_2677_),
    .A2(_2678_),
    .A3(_2679_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2680_));
 sky130_fd_sc_hd__mux2i_1 _6732_ (.A0(_2675_),
    .A1(_2680_),
    .S(net751),
    .Y(_2681_));
 sky130_fd_sc_hd__nand2_1 _6733_ (.A(\decoded_imm[13] ),
    .B(net687),
    .Y(_2682_));
 sky130_fd_sc_hd__o21ai_0 _6734_ (.A1(net668),
    .A2(_2681_),
    .B1(_2682_),
    .Y(_4568_));
 sky130_fd_sc_hd__mux4_2 _6735_ (.A0(\cpuregs[0][12] ),
    .A1(\cpuregs[1][12] ),
    .A2(\cpuregs[2][12] ),
    .A3(\cpuregs[3][12] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2683_));
 sky130_fd_sc_hd__mux4_2 _6736_ (.A0(\cpuregs[4][12] ),
    .A1(\cpuregs[5][12] ),
    .A2(\cpuregs[6][12] ),
    .A3(\cpuregs[7][12] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2684_));
 sky130_fd_sc_hd__mux4_2 _6737_ (.A0(\cpuregs[8][12] ),
    .A1(\cpuregs[9][12] ),
    .A2(\cpuregs[10][12] ),
    .A3(\cpuregs[11][12] ),
    .S0(net760),
    .S1(net757),
    .X(_2685_));
 sky130_fd_sc_hd__mux4_2 _6738_ (.A0(\cpuregs[12][12] ),
    .A1(\cpuregs[13][12] ),
    .A2(\cpuregs[14][12] ),
    .A3(\cpuregs[15][12] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2686_));
 sky130_fd_sc_hd__mux4_2 _6739_ (.A0(_2683_),
    .A1(_2684_),
    .A2(_2685_),
    .A3(_2686_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2687_));
 sky130_fd_sc_hd__mux4_2 _6740_ (.A0(\cpuregs[16][12] ),
    .A1(\cpuregs[17][12] ),
    .A2(\cpuregs[18][12] ),
    .A3(\cpuregs[19][12] ),
    .S0(net758),
    .S1(net757),
    .X(_2688_));
 sky130_fd_sc_hd__mux4_2 _6741_ (.A0(\cpuregs[20][12] ),
    .A1(\cpuregs[21][12] ),
    .A2(\cpuregs[22][12] ),
    .A3(\cpuregs[23][12] ),
    .S0(net758),
    .S1(net757),
    .X(_2689_));
 sky130_fd_sc_hd__mux4_2 _6742_ (.A0(\cpuregs[24][12] ),
    .A1(\cpuregs[25][12] ),
    .A2(\cpuregs[26][12] ),
    .A3(\cpuregs[27][12] ),
    .S0(net758),
    .S1(net757),
    .X(_2690_));
 sky130_fd_sc_hd__mux4_2 _6743_ (.A0(\cpuregs[28][12] ),
    .A1(\cpuregs[29][12] ),
    .A2(\cpuregs[30][12] ),
    .A3(\cpuregs[31][12] ),
    .S0(net758),
    .S1(net757),
    .X(_2691_));
 sky130_fd_sc_hd__mux4_2 _6744_ (.A0(_2688_),
    .A1(_2689_),
    .A2(_2690_),
    .A3(_2691_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2692_));
 sky130_fd_sc_hd__mux2i_1 _6745_ (.A0(_2687_),
    .A1(_2692_),
    .S(net751),
    .Y(_2693_));
 sky130_fd_sc_hd__nand2_1 _6746_ (.A(\decoded_imm[12] ),
    .B(net687),
    .Y(_2694_));
 sky130_fd_sc_hd__o21ai_0 _6747_ (.A1(net668),
    .A2(_2693_),
    .B1(_2694_),
    .Y(_4567_));
 sky130_fd_sc_hd__mux4_2 _6748_ (.A0(\cpuregs[0][11] ),
    .A1(\cpuregs[1][11] ),
    .A2(\cpuregs[2][11] ),
    .A3(\cpuregs[3][11] ),
    .S0(net759),
    .S1(net757),
    .X(_2695_));
 sky130_fd_sc_hd__mux4_2 _6749_ (.A0(\cpuregs[4][11] ),
    .A1(\cpuregs[5][11] ),
    .A2(\cpuregs[6][11] ),
    .A3(\cpuregs[7][11] ),
    .S0(net759),
    .S1(net757),
    .X(_2696_));
 sky130_fd_sc_hd__mux4_2 _6750_ (.A0(\cpuregs[8][11] ),
    .A1(\cpuregs[9][11] ),
    .A2(\cpuregs[10][11] ),
    .A3(\cpuregs[11][11] ),
    .S0(net759),
    .S1(net757),
    .X(_2697_));
 sky130_fd_sc_hd__mux4_2 _6751_ (.A0(\cpuregs[12][11] ),
    .A1(\cpuregs[13][11] ),
    .A2(\cpuregs[14][11] ),
    .A3(\cpuregs[15][11] ),
    .S0(net759),
    .S1(net757),
    .X(_2698_));
 sky130_fd_sc_hd__mux4_2 _6752_ (.A0(_2695_),
    .A1(_2696_),
    .A2(_2697_),
    .A3(_2698_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2699_));
 sky130_fd_sc_hd__mux4_2 _6753_ (.A0(\cpuregs[16][11] ),
    .A1(\cpuregs[17][11] ),
    .A2(\cpuregs[18][11] ),
    .A3(\cpuregs[19][11] ),
    .S0(net759),
    .S1(net757),
    .X(_2700_));
 sky130_fd_sc_hd__mux4_2 _6754_ (.A0(\cpuregs[20][11] ),
    .A1(\cpuregs[21][11] ),
    .A2(\cpuregs[22][11] ),
    .A3(\cpuregs[23][11] ),
    .S0(net758),
    .S1(net757),
    .X(_2701_));
 sky130_fd_sc_hd__mux4_2 _6755_ (.A0(\cpuregs[24][11] ),
    .A1(\cpuregs[25][11] ),
    .A2(\cpuregs[26][11] ),
    .A3(\cpuregs[27][11] ),
    .S0(net758),
    .S1(net757),
    .X(_2702_));
 sky130_fd_sc_hd__mux4_2 _6756_ (.A0(\cpuregs[28][11] ),
    .A1(\cpuregs[29][11] ),
    .A2(\cpuregs[30][11] ),
    .A3(\cpuregs[31][11] ),
    .S0(net758),
    .S1(net757),
    .X(_2703_));
 sky130_fd_sc_hd__mux4_2 _6757_ (.A0(_2700_),
    .A1(_2701_),
    .A2(_2702_),
    .A3(_2703_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2704_));
 sky130_fd_sc_hd__mux2i_1 _6758_ (.A0(_2699_),
    .A1(_2704_),
    .S(net751),
    .Y(_2705_));
 sky130_fd_sc_hd__nand2_1 _6759_ (.A(\decoded_imm[11] ),
    .B(net687),
    .Y(_2706_));
 sky130_fd_sc_hd__o21ai_0 _6760_ (.A1(net668),
    .A2(_2705_),
    .B1(_2706_),
    .Y(_4566_));
 sky130_fd_sc_hd__mux4_2 _6761_ (.A0(\cpuregs[0][10] ),
    .A1(\cpuregs[1][10] ),
    .A2(\cpuregs[2][10] ),
    .A3(\cpuregs[3][10] ),
    .S0(net760),
    .S1(net757),
    .X(_2707_));
 sky130_fd_sc_hd__mux4_2 _6762_ (.A0(\cpuregs[4][10] ),
    .A1(\cpuregs[5][10] ),
    .A2(\cpuregs[6][10] ),
    .A3(\cpuregs[7][10] ),
    .S0(net760),
    .S1(net757),
    .X(_2708_));
 sky130_fd_sc_hd__mux4_2 _6763_ (.A0(\cpuregs[8][10] ),
    .A1(\cpuregs[9][10] ),
    .A2(\cpuregs[10][10] ),
    .A3(\cpuregs[11][10] ),
    .S0(net760),
    .S1(net757),
    .X(_2709_));
 sky130_fd_sc_hd__mux4_2 _6764_ (.A0(\cpuregs[12][10] ),
    .A1(\cpuregs[13][10] ),
    .A2(\cpuregs[14][10] ),
    .A3(\cpuregs[15][10] ),
    .S0(net760),
    .S1(net757),
    .X(_2710_));
 sky130_fd_sc_hd__mux4_2 _6765_ (.A0(_2707_),
    .A1(_2708_),
    .A2(_2709_),
    .A3(_2710_),
    .S0(net754),
    .S1(_0049_),
    .X(_2711_));
 sky130_fd_sc_hd__mux4_2 _6766_ (.A0(\cpuregs[16][10] ),
    .A1(\cpuregs[17][10] ),
    .A2(\cpuregs[18][10] ),
    .A3(\cpuregs[19][10] ),
    .S0(net759),
    .S1(net757),
    .X(_2712_));
 sky130_fd_sc_hd__mux4_2 _6767_ (.A0(\cpuregs[20][10] ),
    .A1(\cpuregs[21][10] ),
    .A2(\cpuregs[22][10] ),
    .A3(\cpuregs[23][10] ),
    .S0(net758),
    .S1(net757),
    .X(_2713_));
 sky130_fd_sc_hd__mux4_2 _6768_ (.A0(\cpuregs[24][10] ),
    .A1(\cpuregs[25][10] ),
    .A2(\cpuregs[26][10] ),
    .A3(\cpuregs[27][10] ),
    .S0(net758),
    .S1(net757),
    .X(_2714_));
 sky130_fd_sc_hd__mux4_2 _6769_ (.A0(\cpuregs[28][10] ),
    .A1(\cpuregs[29][10] ),
    .A2(\cpuregs[30][10] ),
    .A3(\cpuregs[31][10] ),
    .S0(net758),
    .S1(net757),
    .X(_2715_));
 sky130_fd_sc_hd__mux4_2 _6770_ (.A0(_2712_),
    .A1(_2713_),
    .A2(_2714_),
    .A3(_2715_),
    .S0(net754),
    .S1(_0049_),
    .X(_2716_));
 sky130_fd_sc_hd__mux2i_1 _6771_ (.A0(_2711_),
    .A1(_2716_),
    .S(net751),
    .Y(_2717_));
 sky130_fd_sc_hd__nand2_1 _6773_ (.A(\decoded_imm[10] ),
    .B(net687),
    .Y(_2719_));
 sky130_fd_sc_hd__o21ai_0 _6774_ (.A1(net668),
    .A2(_2717_),
    .B1(_2719_),
    .Y(_4565_));
 sky130_fd_sc_hd__mux4_2 _6775_ (.A0(\cpuregs[0][9] ),
    .A1(\cpuregs[1][9] ),
    .A2(\cpuregs[2][9] ),
    .A3(\cpuregs[3][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2720_));
 sky130_fd_sc_hd__mux4_2 _6776_ (.A0(\cpuregs[4][9] ),
    .A1(\cpuregs[5][9] ),
    .A2(\cpuregs[6][9] ),
    .A3(\cpuregs[7][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2721_));
 sky130_fd_sc_hd__mux4_2 _6777_ (.A0(\cpuregs[8][9] ),
    .A1(\cpuregs[9][9] ),
    .A2(\cpuregs[10][9] ),
    .A3(\cpuregs[11][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2722_));
 sky130_fd_sc_hd__mux4_2 _6778_ (.A0(\cpuregs[12][9] ),
    .A1(\cpuregs[13][9] ),
    .A2(\cpuregs[14][9] ),
    .A3(\cpuregs[15][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2723_));
 sky130_fd_sc_hd__mux4_2 _6779_ (.A0(_2720_),
    .A1(_2721_),
    .A2(_2722_),
    .A3(_2723_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2724_));
 sky130_fd_sc_hd__mux4_2 _6780_ (.A0(\cpuregs[16][9] ),
    .A1(\cpuregs[17][9] ),
    .A2(\cpuregs[18][9] ),
    .A3(\cpuregs[19][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2725_));
 sky130_fd_sc_hd__mux4_2 _6781_ (.A0(\cpuregs[20][9] ),
    .A1(\cpuregs[21][9] ),
    .A2(\cpuregs[22][9] ),
    .A3(\cpuregs[23][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2726_));
 sky130_fd_sc_hd__mux4_2 _6782_ (.A0(\cpuregs[24][9] ),
    .A1(\cpuregs[25][9] ),
    .A2(\cpuregs[26][9] ),
    .A3(\cpuregs[27][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2727_));
 sky130_fd_sc_hd__mux4_2 _6783_ (.A0(\cpuregs[28][9] ),
    .A1(\cpuregs[29][9] ),
    .A2(\cpuregs[30][9] ),
    .A3(\cpuregs[31][9] ),
    .S0(net758),
    .S1(net757),
    .X(_2728_));
 sky130_fd_sc_hd__mux4_2 _6784_ (.A0(_2725_),
    .A1(_2726_),
    .A2(_2727_),
    .A3(_2728_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2729_));
 sky130_fd_sc_hd__mux2i_1 _6785_ (.A0(_2724_),
    .A1(_2729_),
    .S(net751),
    .Y(_2730_));
 sky130_fd_sc_hd__nand2_1 _6786_ (.A(\decoded_imm[9] ),
    .B(net687),
    .Y(_2731_));
 sky130_fd_sc_hd__o21ai_0 _6787_ (.A1(net668),
    .A2(_2730_),
    .B1(_2731_),
    .Y(_4595_));
 sky130_fd_sc_hd__mux4_2 _6788_ (.A0(\cpuregs[0][8] ),
    .A1(\cpuregs[1][8] ),
    .A2(\cpuregs[2][8] ),
    .A3(\cpuregs[3][8] ),
    .S0(net760),
    .S1(net757),
    .X(_2732_));
 sky130_fd_sc_hd__mux4_2 _6789_ (.A0(\cpuregs[4][8] ),
    .A1(\cpuregs[5][8] ),
    .A2(\cpuregs[6][8] ),
    .A3(\cpuregs[7][8] ),
    .S0(net760),
    .S1(net757),
    .X(_2733_));
 sky130_fd_sc_hd__mux4_2 _6790_ (.A0(\cpuregs[8][8] ),
    .A1(\cpuregs[9][8] ),
    .A2(\cpuregs[10][8] ),
    .A3(\cpuregs[11][8] ),
    .S0(net760),
    .S1(net757),
    .X(_2734_));
 sky130_fd_sc_hd__mux4_2 _6791_ (.A0(\cpuregs[12][8] ),
    .A1(\cpuregs[13][8] ),
    .A2(\cpuregs[14][8] ),
    .A3(\cpuregs[15][8] ),
    .S0(net760),
    .S1(net757),
    .X(_2735_));
 sky130_fd_sc_hd__mux4_2 _6792_ (.A0(_2732_),
    .A1(_2733_),
    .A2(_2734_),
    .A3(_2735_),
    .S0(net754),
    .S1(net752),
    .X(_2736_));
 sky130_fd_sc_hd__mux4_2 _6793_ (.A0(\cpuregs[16][8] ),
    .A1(\cpuregs[17][8] ),
    .A2(\cpuregs[18][8] ),
    .A3(\cpuregs[19][8] ),
    .S0(net759),
    .S1(net757),
    .X(_2737_));
 sky130_fd_sc_hd__mux4_2 _6794_ (.A0(\cpuregs[20][8] ),
    .A1(\cpuregs[21][8] ),
    .A2(\cpuregs[22][8] ),
    .A3(\cpuregs[23][8] ),
    .S0(net759),
    .S1(net757),
    .X(_2738_));
 sky130_fd_sc_hd__mux4_2 _6795_ (.A0(\cpuregs[24][8] ),
    .A1(\cpuregs[25][8] ),
    .A2(\cpuregs[26][8] ),
    .A3(\cpuregs[27][8] ),
    .S0(net759),
    .S1(net757),
    .X(_2739_));
 sky130_fd_sc_hd__mux4_2 _6796_ (.A0(\cpuregs[28][8] ),
    .A1(\cpuregs[29][8] ),
    .A2(\cpuregs[30][8] ),
    .A3(\cpuregs[31][8] ),
    .S0(net759),
    .S1(net757),
    .X(_2740_));
 sky130_fd_sc_hd__mux4_2 _6797_ (.A0(_2737_),
    .A1(_2738_),
    .A2(_2739_),
    .A3(_2740_),
    .S0(net754),
    .S1(net752),
    .X(_2741_));
 sky130_fd_sc_hd__mux2i_1 _6798_ (.A0(_2736_),
    .A1(_2741_),
    .S(net751),
    .Y(_2742_));
 sky130_fd_sc_hd__nand2_1 _6799_ (.A(\decoded_imm[8] ),
    .B(net687),
    .Y(_2743_));
 sky130_fd_sc_hd__o21ai_0 _6800_ (.A1(net668),
    .A2(_2742_),
    .B1(_2743_),
    .Y(_4594_));
 sky130_fd_sc_hd__mux4_2 _6801_ (.A0(\cpuregs[0][7] ),
    .A1(\cpuregs[1][7] ),
    .A2(\cpuregs[2][7] ),
    .A3(\cpuregs[3][7] ),
    .S0(net761),
    .S1(net756),
    .X(_2744_));
 sky130_fd_sc_hd__mux4_2 _6802_ (.A0(\cpuregs[4][7] ),
    .A1(\cpuregs[5][7] ),
    .A2(\cpuregs[6][7] ),
    .A3(\cpuregs[7][7] ),
    .S0(net761),
    .S1(net756),
    .X(_2745_));
 sky130_fd_sc_hd__mux4_2 _6803_ (.A0(\cpuregs[8][7] ),
    .A1(\cpuregs[9][7] ),
    .A2(\cpuregs[10][7] ),
    .A3(\cpuregs[11][7] ),
    .S0(net761),
    .S1(net756),
    .X(_2746_));
 sky130_fd_sc_hd__mux4_2 _6804_ (.A0(\cpuregs[12][7] ),
    .A1(\cpuregs[13][7] ),
    .A2(\cpuregs[14][7] ),
    .A3(\cpuregs[15][7] ),
    .S0(net761),
    .S1(net756),
    .X(_2747_));
 sky130_fd_sc_hd__mux4_2 _6805_ (.A0(_2744_),
    .A1(_2745_),
    .A2(_2746_),
    .A3(_2747_),
    .S0(net754),
    .S1(net752),
    .X(_2748_));
 sky130_fd_sc_hd__mux4_2 _6806_ (.A0(\cpuregs[16][7] ),
    .A1(\cpuregs[17][7] ),
    .A2(\cpuregs[18][7] ),
    .A3(\cpuregs[19][7] ),
    .S0(net758),
    .S1(net757),
    .X(_2749_));
 sky130_fd_sc_hd__mux4_2 _6807_ (.A0(\cpuregs[20][7] ),
    .A1(\cpuregs[21][7] ),
    .A2(\cpuregs[22][7] ),
    .A3(\cpuregs[23][7] ),
    .S0(net758),
    .S1(net757),
    .X(_2750_));
 sky130_fd_sc_hd__mux4_2 _6808_ (.A0(\cpuregs[24][7] ),
    .A1(\cpuregs[25][7] ),
    .A2(\cpuregs[26][7] ),
    .A3(\cpuregs[27][7] ),
    .S0(net758),
    .S1(net757),
    .X(_2751_));
 sky130_fd_sc_hd__mux4_2 _6809_ (.A0(\cpuregs[28][7] ),
    .A1(\cpuregs[29][7] ),
    .A2(\cpuregs[30][7] ),
    .A3(\cpuregs[31][7] ),
    .S0(net758),
    .S1(net757),
    .X(_2752_));
 sky130_fd_sc_hd__mux4_2 _6810_ (.A0(_2749_),
    .A1(_2750_),
    .A2(_2751_),
    .A3(_2752_),
    .S0(net754),
    .S1(net752),
    .X(_2753_));
 sky130_fd_sc_hd__mux2i_1 _6811_ (.A0(_2748_),
    .A1(_2753_),
    .S(_0050_),
    .Y(_2754_));
 sky130_fd_sc_hd__nand2_1 _6812_ (.A(\decoded_imm[7] ),
    .B(net687),
    .Y(_2755_));
 sky130_fd_sc_hd__o21ai_0 _6813_ (.A1(net668),
    .A2(_2754_),
    .B1(_2755_),
    .Y(_4593_));
 sky130_fd_sc_hd__mux4_2 _6814_ (.A0(\cpuregs[0][6] ),
    .A1(\cpuregs[1][6] ),
    .A2(\cpuregs[2][6] ),
    .A3(\cpuregs[3][6] ),
    .S0(net761),
    .S1(net756),
    .X(_2756_));
 sky130_fd_sc_hd__mux4_2 _6815_ (.A0(\cpuregs[4][6] ),
    .A1(\cpuregs[5][6] ),
    .A2(\cpuregs[6][6] ),
    .A3(\cpuregs[7][6] ),
    .S0(net761),
    .S1(net755),
    .X(_2757_));
 sky130_fd_sc_hd__mux4_2 _6816_ (.A0(\cpuregs[8][6] ),
    .A1(\cpuregs[9][6] ),
    .A2(\cpuregs[10][6] ),
    .A3(\cpuregs[11][6] ),
    .S0(net761),
    .S1(net756),
    .X(_2758_));
 sky130_fd_sc_hd__mux4_2 _6817_ (.A0(\cpuregs[12][6] ),
    .A1(\cpuregs[13][6] ),
    .A2(\cpuregs[14][6] ),
    .A3(\cpuregs[15][6] ),
    .S0(net761),
    .S1(net756),
    .X(_2759_));
 sky130_fd_sc_hd__mux4_2 _6818_ (.A0(_2756_),
    .A1(_2757_),
    .A2(_2758_),
    .A3(_2759_),
    .S0(net754),
    .S1(net752),
    .X(_2760_));
 sky130_fd_sc_hd__mux4_2 _6819_ (.A0(\cpuregs[16][6] ),
    .A1(\cpuregs[17][6] ),
    .A2(\cpuregs[18][6] ),
    .A3(\cpuregs[19][6] ),
    .S0(net761),
    .S1(net756),
    .X(_2761_));
 sky130_fd_sc_hd__mux4_2 _6820_ (.A0(\cpuregs[20][6] ),
    .A1(\cpuregs[21][6] ),
    .A2(\cpuregs[22][6] ),
    .A3(\cpuregs[23][6] ),
    .S0(net758),
    .S1(net757),
    .X(_2762_));
 sky130_fd_sc_hd__mux4_2 _6821_ (.A0(\cpuregs[24][6] ),
    .A1(\cpuregs[25][6] ),
    .A2(\cpuregs[26][6] ),
    .A3(\cpuregs[27][6] ),
    .S0(net758),
    .S1(net757),
    .X(_2763_));
 sky130_fd_sc_hd__mux4_2 _6822_ (.A0(\cpuregs[28][6] ),
    .A1(\cpuregs[29][6] ),
    .A2(\cpuregs[30][6] ),
    .A3(\cpuregs[31][6] ),
    .S0(net758),
    .S1(net757),
    .X(_2764_));
 sky130_fd_sc_hd__mux4_2 _6823_ (.A0(_2761_),
    .A1(_2762_),
    .A2(_2763_),
    .A3(_2764_),
    .S0(net754),
    .S1(net752),
    .X(_2765_));
 sky130_fd_sc_hd__mux2i_1 _6824_ (.A0(_2760_),
    .A1(_2765_),
    .S(net751),
    .Y(_2766_));
 sky130_fd_sc_hd__nand2_1 _6825_ (.A(\decoded_imm[6] ),
    .B(net687),
    .Y(_2767_));
 sky130_fd_sc_hd__o21ai_0 _6826_ (.A1(net668),
    .A2(_2766_),
    .B1(_2767_),
    .Y(_4592_));
 sky130_fd_sc_hd__mux4_2 _6827_ (.A0(\cpuregs[0][5] ),
    .A1(\cpuregs[1][5] ),
    .A2(\cpuregs[2][5] ),
    .A3(\cpuregs[3][5] ),
    .S0(net759),
    .S1(net757),
    .X(_2768_));
 sky130_fd_sc_hd__mux4_2 _6828_ (.A0(\cpuregs[4][5] ),
    .A1(\cpuregs[5][5] ),
    .A2(\cpuregs[6][5] ),
    .A3(\cpuregs[7][5] ),
    .S0(net759),
    .S1(net757),
    .X(_2769_));
 sky130_fd_sc_hd__mux4_2 _6829_ (.A0(\cpuregs[8][5] ),
    .A1(\cpuregs[9][5] ),
    .A2(\cpuregs[10][5] ),
    .A3(\cpuregs[11][5] ),
    .S0(net759),
    .S1(net757),
    .X(_2770_));
 sky130_fd_sc_hd__mux4_2 _6830_ (.A0(\cpuregs[12][5] ),
    .A1(\cpuregs[13][5] ),
    .A2(\cpuregs[14][5] ),
    .A3(\cpuregs[15][5] ),
    .S0(net759),
    .S1(net757),
    .X(_2771_));
 sky130_fd_sc_hd__mux4_2 _6831_ (.A0(_2768_),
    .A1(_2769_),
    .A2(_2770_),
    .A3(_2771_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2772_));
 sky130_fd_sc_hd__mux4_2 _6832_ (.A0(\cpuregs[16][5] ),
    .A1(\cpuregs[17][5] ),
    .A2(\cpuregs[18][5] ),
    .A3(\cpuregs[19][5] ),
    .S0(net759),
    .S1(net757),
    .X(_2773_));
 sky130_fd_sc_hd__mux4_2 _6833_ (.A0(\cpuregs[20][5] ),
    .A1(\cpuregs[21][5] ),
    .A2(\cpuregs[22][5] ),
    .A3(\cpuregs[23][5] ),
    .S0(net758),
    .S1(net757),
    .X(_2774_));
 sky130_fd_sc_hd__mux4_2 _6834_ (.A0(\cpuregs[24][5] ),
    .A1(\cpuregs[25][5] ),
    .A2(\cpuregs[26][5] ),
    .A3(\cpuregs[27][5] ),
    .S0(net758),
    .S1(net757),
    .X(_2775_));
 sky130_fd_sc_hd__mux4_2 _6835_ (.A0(\cpuregs[28][5] ),
    .A1(\cpuregs[29][5] ),
    .A2(\cpuregs[30][5] ),
    .A3(\cpuregs[31][5] ),
    .S0(net758),
    .S1(net757),
    .X(_2776_));
 sky130_fd_sc_hd__mux4_2 _6836_ (.A0(_2773_),
    .A1(_2774_),
    .A2(_2775_),
    .A3(_2776_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2777_));
 sky130_fd_sc_hd__mux2i_1 _6837_ (.A0(_2772_),
    .A1(_2777_),
    .S(net751),
    .Y(_2778_));
 sky130_fd_sc_hd__nand2_1 _6838_ (.A(\decoded_imm[5] ),
    .B(net687),
    .Y(_2779_));
 sky130_fd_sc_hd__o21ai_0 _6839_ (.A1(net668),
    .A2(_2778_),
    .B1(_2779_),
    .Y(_4591_));
 sky130_fd_sc_hd__mux4_2 _6841_ (.A0(\cpuregs[0][4] ),
    .A1(\cpuregs[1][4] ),
    .A2(\cpuregs[2][4] ),
    .A3(\cpuregs[3][4] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2781_));
 sky130_fd_sc_hd__mux4_2 _6842_ (.A0(\cpuregs[4][4] ),
    .A1(\cpuregs[5][4] ),
    .A2(\cpuregs[6][4] ),
    .A3(\cpuregs[7][4] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2782_));
 sky130_fd_sc_hd__mux4_2 _6845_ (.A0(\cpuregs[8][4] ),
    .A1(\cpuregs[9][4] ),
    .A2(\cpuregs[10][4] ),
    .A3(\cpuregs[11][4] ),
    .S0(net760),
    .S1(net757),
    .X(_2785_));
 sky130_fd_sc_hd__mux4_2 _6847_ (.A0(\cpuregs[12][4] ),
    .A1(\cpuregs[13][4] ),
    .A2(\cpuregs[14][4] ),
    .A3(\cpuregs[15][4] ),
    .S0(net760),
    .S1(net757),
    .X(_2787_));
 sky130_fd_sc_hd__mux4_2 _6848_ (.A0(_2781_),
    .A1(_2782_),
    .A2(_2785_),
    .A3(_2787_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2788_));
 sky130_fd_sc_hd__mux4_2 _6849_ (.A0(\cpuregs[16][4] ),
    .A1(\cpuregs[17][4] ),
    .A2(\cpuregs[18][4] ),
    .A3(\cpuregs[19][4] ),
    .S0(net760),
    .S1(net757),
    .X(_2789_));
 sky130_fd_sc_hd__mux4_2 _6850_ (.A0(\cpuregs[20][4] ),
    .A1(\cpuregs[21][4] ),
    .A2(\cpuregs[22][4] ),
    .A3(\cpuregs[23][4] ),
    .S0(net760),
    .S1(net757),
    .X(_2790_));
 sky130_fd_sc_hd__mux4_2 _6851_ (.A0(\cpuregs[24][4] ),
    .A1(\cpuregs[25][4] ),
    .A2(\cpuregs[26][4] ),
    .A3(\cpuregs[27][4] ),
    .S0(net758),
    .S1(net757),
    .X(_2791_));
 sky130_fd_sc_hd__mux4_2 _6852_ (.A0(\cpuregs[28][4] ),
    .A1(\cpuregs[29][4] ),
    .A2(\cpuregs[30][4] ),
    .A3(\cpuregs[31][4] ),
    .S0(net758),
    .S1(net757),
    .X(_2792_));
 sky130_fd_sc_hd__mux4_2 _6853_ (.A0(_2789_),
    .A1(_2790_),
    .A2(_2791_),
    .A3(_2792_),
    .S0(net754),
    .S1(_0049_),
    .X(_2793_));
 sky130_fd_sc_hd__mux2_2 _6854_ (.A0(_2788_),
    .A1(_2793_),
    .S(net751),
    .X(_2794_));
 sky130_fd_sc_hd__nand2_1 _6855_ (.A(_2420_),
    .B(_2794_),
    .Y(_2795_));
 sky130_fd_sc_hd__nand2_1 _6856_ (.A(\decoded_imm[4] ),
    .B(net687),
    .Y(_2796_));
 sky130_fd_sc_hd__o21ai_0 _6857_ (.A1(net687),
    .A2(_2795_),
    .B1(_2796_),
    .Y(_4590_));
 sky130_fd_sc_hd__mux4_2 _6858_ (.A0(\cpuregs[0][3] ),
    .A1(\cpuregs[1][3] ),
    .A2(\cpuregs[2][3] ),
    .A3(\cpuregs[3][3] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2797_));
 sky130_fd_sc_hd__mux4_2 _6859_ (.A0(\cpuregs[4][3] ),
    .A1(\cpuregs[5][3] ),
    .A2(\cpuregs[6][3] ),
    .A3(\cpuregs[7][3] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2798_));
 sky130_fd_sc_hd__mux4_2 _6860_ (.A0(\cpuregs[8][3] ),
    .A1(\cpuregs[9][3] ),
    .A2(\cpuregs[10][3] ),
    .A3(\cpuregs[11][3] ),
    .S0(net760),
    .S1(net757),
    .X(_2799_));
 sky130_fd_sc_hd__mux4_2 _6861_ (.A0(\cpuregs[12][3] ),
    .A1(\cpuregs[13][3] ),
    .A2(\cpuregs[14][3] ),
    .A3(\cpuregs[15][3] ),
    .S0(net760),
    .S1(net757),
    .X(_2800_));
 sky130_fd_sc_hd__mux4_2 _6862_ (.A0(_2797_),
    .A1(_2798_),
    .A2(_2799_),
    .A3(_2800_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2801_));
 sky130_fd_sc_hd__mux4_2 _6863_ (.A0(\cpuregs[16][3] ),
    .A1(\cpuregs[17][3] ),
    .A2(\cpuregs[18][3] ),
    .A3(\cpuregs[19][3] ),
    .S0(net758),
    .S1(net757),
    .X(_2802_));
 sky130_fd_sc_hd__mux4_2 _6864_ (.A0(\cpuregs[20][3] ),
    .A1(\cpuregs[21][3] ),
    .A2(\cpuregs[22][3] ),
    .A3(\cpuregs[23][3] ),
    .S0(net758),
    .S1(net757),
    .X(_2803_));
 sky130_fd_sc_hd__mux4_2 _6865_ (.A0(\cpuregs[24][3] ),
    .A1(\cpuregs[25][3] ),
    .A2(\cpuregs[26][3] ),
    .A3(\cpuregs[27][3] ),
    .S0(net758),
    .S1(net757),
    .X(_2804_));
 sky130_fd_sc_hd__mux4_2 _6866_ (.A0(\cpuregs[28][3] ),
    .A1(\cpuregs[29][3] ),
    .A2(\cpuregs[30][3] ),
    .A3(\cpuregs[31][3] ),
    .S0(net758),
    .S1(net757),
    .X(_2805_));
 sky130_fd_sc_hd__mux4_2 _6867_ (.A0(_2802_),
    .A1(_2803_),
    .A2(_2804_),
    .A3(_2805_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2806_));
 sky130_fd_sc_hd__mux2_2 _6868_ (.A0(_2801_),
    .A1(_2806_),
    .S(net751),
    .X(_2807_));
 sky130_fd_sc_hd__nand2_1 _6869_ (.A(_2420_),
    .B(_2807_),
    .Y(_2808_));
 sky130_fd_sc_hd__nand2_1 _6870_ (.A(\decoded_imm[3] ),
    .B(net687),
    .Y(_2809_));
 sky130_fd_sc_hd__o21ai_0 _6871_ (.A1(net687),
    .A2(_2808_),
    .B1(_2809_),
    .Y(_4589_));
 sky130_fd_sc_hd__mux4_2 _6872_ (.A0(\cpuregs[0][2] ),
    .A1(\cpuregs[1][2] ),
    .A2(\cpuregs[2][2] ),
    .A3(\cpuregs[3][2] ),
    .S0(net760),
    .S1(net757),
    .X(_2810_));
 sky130_fd_sc_hd__mux4_2 _6873_ (.A0(\cpuregs[4][2] ),
    .A1(\cpuregs[5][2] ),
    .A2(\cpuregs[6][2] ),
    .A3(\cpuregs[7][2] ),
    .S0(net760),
    .S1(net757),
    .X(_2811_));
 sky130_fd_sc_hd__mux4_2 _6874_ (.A0(\cpuregs[8][2] ),
    .A1(\cpuregs[9][2] ),
    .A2(\cpuregs[10][2] ),
    .A3(\cpuregs[11][2] ),
    .S0(net760),
    .S1(net757),
    .X(_2812_));
 sky130_fd_sc_hd__mux4_2 _6875_ (.A0(\cpuregs[12][2] ),
    .A1(\cpuregs[13][2] ),
    .A2(\cpuregs[14][2] ),
    .A3(\cpuregs[15][2] ),
    .S0(net760),
    .S1(net757),
    .X(_2813_));
 sky130_fd_sc_hd__mux4_2 _6876_ (.A0(_2810_),
    .A1(_2811_),
    .A2(_2812_),
    .A3(_2813_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2814_));
 sky130_fd_sc_hd__mux4_2 _6877_ (.A0(\cpuregs[16][2] ),
    .A1(\cpuregs[17][2] ),
    .A2(\cpuregs[18][2] ),
    .A3(\cpuregs[19][2] ),
    .S0(net758),
    .S1(net757),
    .X(_2815_));
 sky130_fd_sc_hd__mux4_2 _6878_ (.A0(\cpuregs[20][2] ),
    .A1(\cpuregs[21][2] ),
    .A2(\cpuregs[22][2] ),
    .A3(\cpuregs[23][2] ),
    .S0(net760),
    .S1(net757),
    .X(_2816_));
 sky130_fd_sc_hd__mux4_2 _6879_ (.A0(\cpuregs[24][2] ),
    .A1(\cpuregs[25][2] ),
    .A2(\cpuregs[26][2] ),
    .A3(\cpuregs[27][2] ),
    .S0(net758),
    .S1(net757),
    .X(_2817_));
 sky130_fd_sc_hd__mux4_2 _6880_ (.A0(\cpuregs[28][2] ),
    .A1(\cpuregs[29][2] ),
    .A2(\cpuregs[30][2] ),
    .A3(\cpuregs[31][2] ),
    .S0(net758),
    .S1(net757),
    .X(_2818_));
 sky130_fd_sc_hd__mux4_2 _6881_ (.A0(_2815_),
    .A1(_2816_),
    .A2(_2817_),
    .A3(_2818_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2819_));
 sky130_fd_sc_hd__mux2_2 _6882_ (.A0(_2814_),
    .A1(_2819_),
    .S(net751),
    .X(_2820_));
 sky130_fd_sc_hd__nand2_1 _6883_ (.A(_2420_),
    .B(_2820_),
    .Y(_2821_));
 sky130_fd_sc_hd__nand2_1 _6884_ (.A(\decoded_imm[2] ),
    .B(net687),
    .Y(_2822_));
 sky130_fd_sc_hd__o21ai_0 _6885_ (.A1(net687),
    .A2(_2821_),
    .B1(_2822_),
    .Y(_4586_));
 sky130_fd_sc_hd__mux4_2 _6886_ (.A0(\cpuregs[0][1] ),
    .A1(\cpuregs[1][1] ),
    .A2(\cpuregs[2][1] ),
    .A3(\cpuregs[3][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2823_));
 sky130_fd_sc_hd__mux4_2 _6887_ (.A0(\cpuregs[4][1] ),
    .A1(\cpuregs[5][1] ),
    .A2(\cpuregs[6][1] ),
    .A3(\cpuregs[7][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2824_));
 sky130_fd_sc_hd__mux4_2 _6888_ (.A0(\cpuregs[8][1] ),
    .A1(\cpuregs[9][1] ),
    .A2(\cpuregs[10][1] ),
    .A3(\cpuregs[11][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2825_));
 sky130_fd_sc_hd__mux4_2 _6889_ (.A0(\cpuregs[12][1] ),
    .A1(\cpuregs[13][1] ),
    .A2(\cpuregs[14][1] ),
    .A3(\cpuregs[15][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2826_));
 sky130_fd_sc_hd__mux4_2 _6890_ (.A0(_2823_),
    .A1(_2824_),
    .A2(_2825_),
    .A3(_2826_),
    .S0(_0048_),
    .S1(_0049_),
    .X(_2827_));
 sky130_fd_sc_hd__mux4_2 _6891_ (.A0(\cpuregs[16][1] ),
    .A1(\cpuregs[17][1] ),
    .A2(\cpuregs[18][1] ),
    .A3(\cpuregs[19][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2828_));
 sky130_fd_sc_hd__mux4_2 _6892_ (.A0(\cpuregs[20][1] ),
    .A1(\cpuregs[21][1] ),
    .A2(\cpuregs[22][1] ),
    .A3(\cpuregs[23][1] ),
    .S0(_0046_),
    .S1(_0047_),
    .X(_2829_));
 sky130_fd_sc_hd__mux4_2 _6893_ (.A0(\cpuregs[24][1] ),
    .A1(\cpuregs[25][1] ),
    .A2(\cpuregs[26][1] ),
    .A3(\cpuregs[27][1] ),
    .S0(net760),
    .S1(net757),
    .X(_2830_));
 sky130_fd_sc_hd__mux4_2 _6894_ (.A0(\cpuregs[28][1] ),
    .A1(\cpuregs[29][1] ),
    .A2(\cpuregs[30][1] ),
    .A3(\cpuregs[31][1] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2831_));
 sky130_fd_sc_hd__mux4_2 _6895_ (.A0(_2828_),
    .A1(_2829_),
    .A2(_2830_),
    .A3(_2831_),
    .S0(net754),
    .S1(_0049_),
    .X(_2832_));
 sky130_fd_sc_hd__mux2_2 _6896_ (.A0(_2827_),
    .A1(_2832_),
    .S(_0050_),
    .X(_2833_));
 sky130_fd_sc_hd__nand2_1 _6897_ (.A(_2420_),
    .B(_2833_),
    .Y(_2834_));
 sky130_fd_sc_hd__nand2_1 _6898_ (.A(\decoded_imm[1] ),
    .B(net687),
    .Y(_2835_));
 sky130_fd_sc_hd__o21ai_0 _6899_ (.A1(net687),
    .A2(_2834_),
    .B1(_2835_),
    .Y(_4575_));
 sky130_fd_sc_hd__mux4_2 _6900_ (.A0(\cpuregs[0][0] ),
    .A1(\cpuregs[1][0] ),
    .A2(\cpuregs[2][0] ),
    .A3(\cpuregs[3][0] ),
    .S0(net762),
    .S1(net757),
    .X(_2836_));
 sky130_fd_sc_hd__mux4_2 _6901_ (.A0(\cpuregs[4][0] ),
    .A1(\cpuregs[5][0] ),
    .A2(\cpuregs[6][0] ),
    .A3(\cpuregs[7][0] ),
    .S0(net762),
    .S1(net757),
    .X(_2837_));
 sky130_fd_sc_hd__mux4_2 _6902_ (.A0(\cpuregs[8][0] ),
    .A1(\cpuregs[9][0] ),
    .A2(\cpuregs[10][0] ),
    .A3(\cpuregs[11][0] ),
    .S0(net762),
    .S1(net757),
    .X(_2838_));
 sky130_fd_sc_hd__mux4_2 _6903_ (.A0(\cpuregs[12][0] ),
    .A1(\cpuregs[13][0] ),
    .A2(\cpuregs[14][0] ),
    .A3(\cpuregs[15][0] ),
    .S0(net762),
    .S1(net757),
    .X(_2839_));
 sky130_fd_sc_hd__mux4_2 _6904_ (.A0(_2836_),
    .A1(_2837_),
    .A2(_2838_),
    .A3(_2839_),
    .S0(net753),
    .S1(net752),
    .X(_2840_));
 sky130_fd_sc_hd__mux4_2 _6905_ (.A0(\cpuregs[16][0] ),
    .A1(\cpuregs[17][0] ),
    .A2(\cpuregs[18][0] ),
    .A3(\cpuregs[19][0] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2841_));
 sky130_fd_sc_hd__mux4_2 _6906_ (.A0(\cpuregs[20][0] ),
    .A1(\cpuregs[21][0] ),
    .A2(\cpuregs[22][0] ),
    .A3(\cpuregs[23][0] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2842_));
 sky130_fd_sc_hd__mux4_2 _6907_ (.A0(\cpuregs[24][0] ),
    .A1(\cpuregs[25][0] ),
    .A2(\cpuregs[26][0] ),
    .A3(\cpuregs[27][0] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2843_));
 sky130_fd_sc_hd__mux4_2 _6908_ (.A0(\cpuregs[28][0] ),
    .A1(\cpuregs[29][0] ),
    .A2(\cpuregs[30][0] ),
    .A3(\cpuregs[31][0] ),
    .S0(_0046_),
    .S1(net757),
    .X(_2844_));
 sky130_fd_sc_hd__mux4_2 _6909_ (.A0(_2841_),
    .A1(_2842_),
    .A2(_2843_),
    .A3(_2844_),
    .S0(net754),
    .S1(net752),
    .X(_2845_));
 sky130_fd_sc_hd__mux2_2 _6910_ (.A0(_2840_),
    .A1(_2845_),
    .S(_0050_),
    .X(_2846_));
 sky130_fd_sc_hd__nand2_1 _6911_ (.A(_2420_),
    .B(_2846_),
    .Y(_2847_));
 sky130_fd_sc_hd__nand2_1 _6912_ (.A(\decoded_imm[0] ),
    .B(net687),
    .Y(_2848_));
 sky130_fd_sc_hd__o21ai_0 _6913_ (.A1(net687),
    .A2(_2847_),
    .B1(_2848_),
    .Y(_4564_));
 sky130_fd_sc_hd__nor2_1 _6915_ (.A(is_slli_srli_srai),
    .B(_2808_),
    .Y(_2850_));
 sky130_fd_sc_hd__a21oi_1 _6916_ (.A1(\decoded_imm_j[3] ),
    .A2(is_slli_srli_srai),
    .B1(_2850_),
    .Y(_2851_));
 sky130_fd_sc_hd__nor2_1 _6917_ (.A(_0158_),
    .B(net658),
    .Y(_2852_));
 sky130_fd_sc_hd__nor3_1 _6918_ (.A(\reg_sh[1] ),
    .B(\reg_sh[0] ),
    .C(net657),
    .Y(_2853_));
 sky130_fd_sc_hd__o21ai_0 _6919_ (.A1(_2852_),
    .A2(_2853_),
    .B1(net746),
    .Y(_2854_));
 sky130_fd_sc_hd__o21ai_0 _6920_ (.A1(net746),
    .A2(_2851_),
    .B1(_2854_),
    .Y(_0039_));
 sky130_fd_sc_hd__o21ai_0 _6921_ (.A1(_0165_),
    .A2(_1674_),
    .B1(_0155_),
    .Y(_2855_));
 sky130_fd_sc_hd__nor2_1 _6922_ (.A(is_slli_srli_srai),
    .B(_2821_),
    .Y(_2856_));
 sky130_fd_sc_hd__a211oi_1 _6923_ (.A1(\decoded_imm_j[2] ),
    .A2(is_slli_srli_srai),
    .B1(_2856_),
    .C1(net746),
    .Y(_2857_));
 sky130_fd_sc_hd__a21oi_1 _6924_ (.A1(net746),
    .A2(_2855_),
    .B1(_2857_),
    .Y(_0038_));
 sky130_fd_sc_hd__nand2_1 _6925_ (.A(\decoded_imm_j[1] ),
    .B(is_slli_srli_srai),
    .Y(_2858_));
 sky130_fd_sc_hd__o21ai_0 _6926_ (.A1(is_slli_srli_srai),
    .A2(_2834_),
    .B1(_2858_),
    .Y(_2859_));
 sky130_fd_sc_hd__o21ai_0 _6927_ (.A1(_0166_),
    .A2(net657),
    .B1(net746),
    .Y(_2860_));
 sky130_fd_sc_hd__o21a_1 _6928_ (.A1(net746),
    .A2(_2859_),
    .B1(_2860_),
    .X(_0037_));
 sky130_fd_sc_hd__nor2_1 _6929_ (.A(is_slli_srli_srai),
    .B(_2847_),
    .Y(_2861_));
 sky130_fd_sc_hd__a21oi_1 _6930_ (.A1(\decoded_imm_j[11] ),
    .A2(is_slli_srli_srai),
    .B1(_2861_),
    .Y(_2862_));
 sky130_fd_sc_hd__nand3_1 _6931_ (.A(_0163_),
    .B(net746),
    .C(net658),
    .Y(_2863_));
 sky130_fd_sc_hd__o21ai_0 _6932_ (.A1(net746),
    .A2(_2862_),
    .B1(_2863_),
    .Y(_0036_));
 sky130_fd_sc_hd__nor3_1 _6933_ (.A(latched_is_lh),
    .B(latched_is_lb),
    .C(_0962_),
    .Y(_2864_));
 sky130_fd_sc_hd__mux2_2 _6934_ (.A0(net144),
    .A1(net162),
    .S(net721),
    .X(_2865_));
 sky130_fd_sc_hd__a22o_1 _6935_ (.A1(net144),
    .A2(net696),
    .B1(_2865_),
    .B2(\mem_wordsize[2] ),
    .X(_2866_));
 sky130_fd_sc_hd__nand2_1 _6936_ (.A(net721),
    .B(net153),
    .Y(_2867_));
 sky130_fd_sc_hd__nand2_1 _6937_ (.A(net308),
    .B(_2865_),
    .Y(_2868_));
 sky130_fd_sc_hd__o21ai_0 _6938_ (.A1(net732),
    .A2(_2867_),
    .B1(_2868_),
    .Y(_2869_));
 sky130_fd_sc_hd__and2_1 _6939_ (.A(\mem_wordsize[2] ),
    .B(net721),
    .X(_2870_));
 sky130_fd_sc_hd__inv_1 _6942_ (.A(net748),
    .Y(_2873_));
 sky130_fd_sc_hd__inv_1 _6944_ (.A(\cpu_state[2] ),
    .Y(_2875_));
 sky130_fd_sc_hd__nand3_1 _6945_ (.A(_2873_),
    .B(_1667_),
    .C(_2875_),
    .Y(_2876_));
 sky130_fd_sc_hd__a221o_1 _6946_ (.A1(net167),
    .A2(net267),
    .B1(_2870_),
    .B2(net153),
    .C1(_2876_),
    .X(_2877_));
 sky130_fd_sc_hd__a21oi_1 _6947_ (.A1(net734),
    .A2(_2869_),
    .B1(_2877_),
    .Y(_2878_));
 sky130_fd_sc_hd__nor2_1 _6948_ (.A(latched_is_lb),
    .B(_2876_),
    .Y(_2879_));
 sky130_fd_sc_hd__nor2_1 _6949_ (.A(_2878_),
    .B(_2879_),
    .Y(_2880_));
 sky130_fd_sc_hd__a21o_1 _6950_ (.A1(latched_is_lh),
    .A2(_2866_),
    .B1(_2880_),
    .X(_2881_));
 sky130_fd_sc_hd__a21oi_1 _6951_ (.A1(net161),
    .A2(net678),
    .B1(_2881_),
    .Y(_2882_));
 sky130_fd_sc_hd__inv_1 _6952_ (.A(_0438_),
    .Y(_2883_));
 sky130_fd_sc_hd__a21o_1 _6953_ (.A1(_0066_),
    .A2(_0071_),
    .B1(_0070_),
    .X(_2884_));
 sky130_fd_sc_hd__a21oi_1 _6954_ (.A1(_0364_),
    .A2(_2884_),
    .B1(_0363_),
    .Y(_2885_));
 sky130_fd_sc_hd__a21oi_1 _6955_ (.A1(_0410_),
    .A2(_0361_),
    .B1(_0409_),
    .Y(_2886_));
 sky130_fd_sc_hd__nor2_1 _6956_ (.A(_0356_),
    .B(_0437_),
    .Y(_2887_));
 sky130_fd_sc_hd__o211ai_1 _6957_ (.A1(_2883_),
    .A2(_2885_),
    .B1(_2886_),
    .C1(_2887_),
    .Y(_2888_));
 sky130_fd_sc_hd__nand2_1 _6958_ (.A(_0362_),
    .B(_0410_),
    .Y(_2889_));
 sky130_fd_sc_hd__nor2_1 _6959_ (.A(_0356_),
    .B(_0357_),
    .Y(_2890_));
 sky130_fd_sc_hd__o21ai_0 _6960_ (.A1(_2889_),
    .A2(_2890_),
    .B1(_2886_),
    .Y(_2891_));
 sky130_fd_sc_hd__and2_1 _6961_ (.A(_2888_),
    .B(_2891_),
    .X(_2892_));
 sky130_fd_sc_hd__nand3_1 _6962_ (.A(_0497_),
    .B(_0131_),
    .C(_0290_),
    .Y(_2893_));
 sky130_fd_sc_hd__nand2_1 _6963_ (.A(_0495_),
    .B(_0104_),
    .Y(_2894_));
 sky130_fd_sc_hd__nor2_1 _6964_ (.A(_2893_),
    .B(_2894_),
    .Y(_2895_));
 sky130_fd_sc_hd__a21oi_1 _6965_ (.A1(_0104_),
    .A2(_0494_),
    .B1(_0103_),
    .Y(_2896_));
 sky130_fd_sc_hd__nor2_1 _6966_ (.A(_2893_),
    .B(_2896_),
    .Y(_2897_));
 sky130_fd_sc_hd__a21oi_1 _6967_ (.A1(_0130_),
    .A2(_0290_),
    .B1(_0289_),
    .Y(_2898_));
 sky130_fd_sc_hd__nor2b_1 _6968_ (.A(_2898_),
    .B_N(_0497_),
    .Y(_2899_));
 sky130_fd_sc_hd__or3_1 _6969_ (.A(_0496_),
    .B(_2897_),
    .C(_2899_),
    .X(_2900_));
 sky130_fd_sc_hd__a21o_1 _6970_ (.A1(_0446_),
    .A2(_2900_),
    .B1(_0445_),
    .X(_2901_));
 sky130_fd_sc_hd__a31oi_1 _6971_ (.A1(_0446_),
    .A2(_2892_),
    .A3(_2895_),
    .B1(_2901_),
    .Y(_2902_));
 sky130_fd_sc_hd__and3_1 _6972_ (.A(_0442_),
    .B(_0355_),
    .C(_0154_),
    .X(_2903_));
 sky130_fd_sc_hd__nand3_1 _6973_ (.A(_0384_),
    .B(_0444_),
    .C(_2903_),
    .Y(_2904_));
 sky130_fd_sc_hd__nand4_1 _6976_ (.A(_0450_),
    .B(_0386_),
    .C(_0507_),
    .D(_0135_),
    .Y(_2907_));
 sky130_fd_sc_hd__nand3_1 _6978_ (.A(_0233_),
    .B(_0265_),
    .C(_0448_),
    .Y(_2909_));
 sky130_fd_sc_hd__or3_1 _6979_ (.A(_2904_),
    .B(_2907_),
    .C(_2909_),
    .X(_2910_));
 sky130_fd_sc_hd__a21o_1 _6980_ (.A1(_0265_),
    .A2(_0447_),
    .B1(_0264_),
    .X(_2911_));
 sky130_fd_sc_hd__a21oi_1 _6981_ (.A1(_0233_),
    .A2(_2911_),
    .B1(_0232_),
    .Y(_2912_));
 sky130_fd_sc_hd__nor2b_1 _6982_ (.A(_2912_),
    .B_N(_0450_),
    .Y(_2913_));
 sky130_fd_sc_hd__o21ai_0 _6983_ (.A1(_0449_),
    .A2(_2913_),
    .B1(_0386_),
    .Y(_2914_));
 sky130_fd_sc_hd__nor3_1 _6984_ (.A(_0134_),
    .B(_0506_),
    .C(_0385_),
    .Y(_2915_));
 sky130_fd_sc_hd__or3_1 _6985_ (.A(_0134_),
    .B(_0506_),
    .C(_0135_),
    .X(_2916_));
 sky130_fd_sc_hd__o21ai_0 _6986_ (.A1(_0507_),
    .A2(_0506_),
    .B1(_2916_),
    .Y(_2917_));
 sky130_fd_sc_hd__a211o_1 _6987_ (.A1(_2914_),
    .A2(_2915_),
    .B1(_2917_),
    .C1(_2904_),
    .X(_2918_));
 sky130_fd_sc_hd__o21a_1 _6988_ (.A1(_2902_),
    .A2(_2910_),
    .B1(_2918_),
    .X(_2919_));
 sky130_fd_sc_hd__a21o_1 _6989_ (.A1(_0355_),
    .A2(_0153_),
    .B1(_0354_),
    .X(_2920_));
 sky130_fd_sc_hd__a221o_1 _6990_ (.A1(_0383_),
    .A2(_2903_),
    .B1(_2920_),
    .B2(_0442_),
    .C1(_0441_),
    .X(_2921_));
 sky130_fd_sc_hd__a21oi_1 _6991_ (.A1(_0444_),
    .A2(_2921_),
    .B1(_0443_),
    .Y(_2922_));
 sky130_fd_sc_hd__nor3b_1 _6992_ (.A(_0352_),
    .B(_0151_),
    .C_N(_2922_),
    .Y(_2923_));
 sky130_fd_sc_hd__or2_2 _6993_ (.A(_0151_),
    .B(_0152_),
    .X(_2924_));
 sky130_fd_sc_hd__a21oi_1 _6994_ (.A1(_0353_),
    .A2(_2924_),
    .B1(_0352_),
    .Y(_2925_));
 sky130_fd_sc_hd__nand2_1 _6995_ (.A(_0282_),
    .B(_0292_),
    .Y(_2926_));
 sky130_fd_sc_hd__a211o_1 _6996_ (.A1(_2919_),
    .A2(_2923_),
    .B1(_2925_),
    .C1(_2926_),
    .X(_2927_));
 sky130_fd_sc_hd__a21oi_1 _6997_ (.A1(_0292_),
    .A2(_0281_),
    .B1(_0291_),
    .Y(_2928_));
 sky130_fd_sc_hd__a222oi_1 _7001_ (.A1(\count_instr[30] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[62] ),
    .C1(\count_cycle[62] ),
    .C2(net742),
    .Y(_2932_));
 sky130_fd_sc_hd__nor3_2 _7002_ (.A(net742),
    .B(net741),
    .C(net740),
    .Y(_2933_));
 sky130_fd_sc_hd__nand2_1 _7003_ (.A(\count_cycle[30] ),
    .B(net686),
    .Y(_2934_));
 sky130_fd_sc_hd__nand2_1 _7004_ (.A(_2932_),
    .B(_2934_),
    .Y(_2935_));
 sky130_fd_sc_hd__nor3_4 _7005_ (.A(net748),
    .B(net747),
    .C(net749),
    .Y(_2936_));
 sky130_fd_sc_hd__a221oi_1 _7006_ (.A1(net710),
    .A2(net747),
    .B1(net749),
    .B2(_2935_),
    .C1(net685),
    .Y(_2937_));
 sky130_fd_sc_hd__nand2_1 _7007_ (.A(_0440_),
    .B(_2937_),
    .Y(_2938_));
 sky130_fd_sc_hd__a21oi_1 _7008_ (.A1(_2927_),
    .A2(_2928_),
    .B1(_2938_),
    .Y(_2939_));
 sky130_fd_sc_hd__and4b_1 _7009_ (.A_N(_0440_),
    .B(_2937_),
    .C(_2927_),
    .D(_2928_),
    .X(_2940_));
 sky130_fd_sc_hd__and2_1 _7011_ (.A(_2873_),
    .B(_2937_),
    .X(_2942_));
 sky130_fd_sc_hd__nor4_1 _7012_ (.A(_2882_),
    .B(_2939_),
    .C(_2940_),
    .D(_2942_),
    .Y(_0027_));
 sky130_fd_sc_hd__a222oi_1 _7019_ (.A1(\count_instr[29] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[61] ),
    .C1(\count_cycle[61] ),
    .C2(net742),
    .Y(_2949_));
 sky130_fd_sc_hd__nand2_1 _7021_ (.A(\count_cycle[29] ),
    .B(net686),
    .Y(_2951_));
 sky130_fd_sc_hd__nand2_1 _7022_ (.A(_2949_),
    .B(_2951_),
    .Y(_2952_));
 sky130_fd_sc_hd__a221oi_1 _7024_ (.A1(net329),
    .A2(net747),
    .B1(net749),
    .B2(_2952_),
    .C1(net685),
    .Y(_2954_));
 sky130_fd_sc_hd__nand2_1 _7026_ (.A(_2886_),
    .B(_2889_),
    .Y(_2956_));
 sky130_fd_sc_hd__a211oi_1 _7027_ (.A1(_0067_),
    .A2(_0364_),
    .B1(_0437_),
    .C1(_0363_),
    .Y(_2957_));
 sky130_fd_sc_hd__o21ai_0 _7028_ (.A1(_0438_),
    .A2(_0437_),
    .B1(_0357_),
    .Y(_2958_));
 sky130_fd_sc_hd__nor3_1 _7029_ (.A(_0356_),
    .B(_0409_),
    .C(_0361_),
    .Y(_2959_));
 sky130_fd_sc_hd__o21ai_0 _7030_ (.A1(_2957_),
    .A2(_2958_),
    .B1(_2959_),
    .Y(_2960_));
 sky130_fd_sc_hd__nand3_1 _7031_ (.A(_2956_),
    .B(_2895_),
    .C(_2960_),
    .Y(_2961_));
 sky130_fd_sc_hd__nand2_1 _7032_ (.A(_0233_),
    .B(_0264_),
    .Y(_2962_));
 sky130_fd_sc_hd__a211oi_1 _7033_ (.A1(_0445_),
    .A2(_0448_),
    .B1(_0447_),
    .C1(_0232_),
    .Y(_2963_));
 sky130_fd_sc_hd__nand2_1 _7034_ (.A(_2962_),
    .B(_2963_),
    .Y(_2964_));
 sky130_fd_sc_hd__nor4_1 _7035_ (.A(_0496_),
    .B(_2897_),
    .C(_2899_),
    .D(_2964_),
    .Y(_2965_));
 sky130_fd_sc_hd__o21ai_0 _7036_ (.A1(_0445_),
    .A2(_0446_),
    .B1(_0448_),
    .Y(_2966_));
 sky130_fd_sc_hd__nor2_1 _7037_ (.A(_0264_),
    .B(_0447_),
    .Y(_2967_));
 sky130_fd_sc_hd__o21ai_0 _7038_ (.A1(_0265_),
    .A2(_0264_),
    .B1(_0233_),
    .Y(_2968_));
 sky130_fd_sc_hd__a21oi_1 _7039_ (.A1(_2966_),
    .A2(_2967_),
    .B1(_2968_),
    .Y(_2969_));
 sky130_fd_sc_hd__inv_1 _7040_ (.A(_2907_),
    .Y(_2970_));
 sky130_fd_sc_hd__o2111ai_1 _7041_ (.A1(_0232_),
    .A2(_2969_),
    .B1(_2970_),
    .C1(_2903_),
    .D1(_0384_),
    .Y(_2971_));
 sky130_fd_sc_hd__a21oi_1 _7042_ (.A1(_2961_),
    .A2(_2965_),
    .B1(_2971_),
    .Y(_2972_));
 sky130_fd_sc_hd__or2_2 _7043_ (.A(_0154_),
    .B(_0153_),
    .X(_2973_));
 sky130_fd_sc_hd__a21o_1 _7044_ (.A1(_0355_),
    .A2(_2973_),
    .B1(_0354_),
    .X(_2974_));
 sky130_fd_sc_hd__inv_1 _7045_ (.A(_0384_),
    .Y(_2975_));
 sky130_fd_sc_hd__a211o_1 _7046_ (.A1(_0386_),
    .A2(_0449_),
    .B1(_0134_),
    .C1(_0385_),
    .X(_2976_));
 sky130_fd_sc_hd__o21a_1 _7047_ (.A1(_0134_),
    .A2(_0135_),
    .B1(_0507_),
    .X(_2977_));
 sky130_fd_sc_hd__a21oi_1 _7048_ (.A1(_2976_),
    .A2(_2977_),
    .B1(_0506_),
    .Y(_2978_));
 sky130_fd_sc_hd__nor3_1 _7049_ (.A(_0383_),
    .B(_0354_),
    .C(_0153_),
    .Y(_2979_));
 sky130_fd_sc_hd__o21ai_0 _7050_ (.A1(_2975_),
    .A2(_2978_),
    .B1(_2979_),
    .Y(_2980_));
 sky130_fd_sc_hd__a31o_2 _7051_ (.A1(_0442_),
    .A2(_2974_),
    .A3(_2980_),
    .B1(_0441_),
    .X(_2981_));
 sky130_fd_sc_hd__o31a_1 _7052_ (.A1(_0151_),
    .A2(_0444_),
    .A3(_0443_),
    .B1(_2924_),
    .X(_2982_));
 sky130_fd_sc_hd__o41ai_1 _7053_ (.A1(_0151_),
    .A2(_0443_),
    .A3(_2972_),
    .A4(_2981_),
    .B1(_2982_),
    .Y(_2983_));
 sky130_fd_sc_hd__nand2_1 _7054_ (.A(_0282_),
    .B(_0353_),
    .Y(_2984_));
 sky130_fd_sc_hd__a21oi_1 _7055_ (.A1(_0282_),
    .A2(_0352_),
    .B1(_0281_),
    .Y(_2985_));
 sky130_fd_sc_hd__o21ai_0 _7056_ (.A1(_2983_),
    .A2(_2984_),
    .B1(_2985_),
    .Y(_2986_));
 sky130_fd_sc_hd__xor2_1 _7057_ (.A(_0292_),
    .B(_2986_),
    .X(_2987_));
 sky130_fd_sc_hd__nand2_1 _7058_ (.A(net748),
    .B(_2987_),
    .Y(_2988_));
 sky130_fd_sc_hd__a21oi_1 _7061_ (.A1(net159),
    .A2(net678),
    .B1(_2881_),
    .Y(_2991_));
 sky130_fd_sc_hd__a21oi_1 _7062_ (.A1(_2954_),
    .A2(_2988_),
    .B1(_2991_),
    .Y(_0025_));
 sky130_fd_sc_hd__a21oi_1 _7063_ (.A1(_2919_),
    .A2(_2923_),
    .B1(_2925_),
    .Y(_2992_));
 sky130_fd_sc_hd__xnor2_1 _7064_ (.A(_0282_),
    .B(_2992_),
    .Y(_2993_));
 sky130_fd_sc_hd__a222oi_1 _7069_ (.A1(\count_instr[28] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[60] ),
    .C1(\count_cycle[60] ),
    .C2(net742),
    .Y(_2998_));
 sky130_fd_sc_hd__nand2_1 _7071_ (.A(\count_cycle[28] ),
    .B(net686),
    .Y(_3000_));
 sky130_fd_sc_hd__nand2_1 _7072_ (.A(_2998_),
    .B(_3000_),
    .Y(_3001_));
 sky130_fd_sc_hd__a221oi_1 _7074_ (.A1(net712),
    .A2(net747),
    .B1(net749),
    .B2(_3001_),
    .C1(net685),
    .Y(_3003_));
 sky130_fd_sc_hd__a21oi_1 _7075_ (.A1(net158),
    .A2(net678),
    .B1(_2881_),
    .Y(_3004_));
 sky130_fd_sc_hd__o22ai_1 _7076_ (.A1(_2873_),
    .A2(_2993_),
    .B1(_3003_),
    .B2(_3004_),
    .Y(_0024_));
 sky130_fd_sc_hd__a222oi_1 _7080_ (.A1(\count_instr[27] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[59] ),
    .C1(\count_cycle[59] ),
    .C2(net742),
    .Y(_3008_));
 sky130_fd_sc_hd__nand2_1 _7082_ (.A(\count_cycle[27] ),
    .B(net686),
    .Y(_3010_));
 sky130_fd_sc_hd__nand2_1 _7083_ (.A(_3008_),
    .B(_3010_),
    .Y(_3011_));
 sky130_fd_sc_hd__a221oi_1 _7084_ (.A1(net713),
    .A2(net747),
    .B1(net749),
    .B2(_3011_),
    .C1(net685),
    .Y(_3012_));
 sky130_fd_sc_hd__xnor2_1 _7085_ (.A(_0353_),
    .B(_2983_),
    .Y(_3013_));
 sky130_fd_sc_hd__nand2_1 _7086_ (.A(net748),
    .B(_3013_),
    .Y(_3014_));
 sky130_fd_sc_hd__a21oi_1 _7087_ (.A1(net157),
    .A2(net678),
    .B1(_2881_),
    .Y(_3015_));
 sky130_fd_sc_hd__a21oi_1 _7088_ (.A1(_3012_),
    .A2(_3014_),
    .B1(_3015_),
    .Y(_0023_));
 sky130_fd_sc_hd__nand2_1 _7089_ (.A(_2919_),
    .B(_2922_),
    .Y(_3016_));
 sky130_fd_sc_hd__xor2_1 _7090_ (.A(_0152_),
    .B(_3016_),
    .X(_3017_));
 sky130_fd_sc_hd__nand2_1 _7091_ (.A(net748),
    .B(_3017_),
    .Y(_3018_));
 sky130_fd_sc_hd__a222oi_1 _7092_ (.A1(\count_instr[26] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[58] ),
    .C1(\count_cycle[58] ),
    .C2(net742),
    .Y(_3019_));
 sky130_fd_sc_hd__nand2_1 _7093_ (.A(\count_cycle[26] ),
    .B(net686),
    .Y(_3020_));
 sky130_fd_sc_hd__nand2_1 _7094_ (.A(_3019_),
    .B(_3020_),
    .Y(_3021_));
 sky130_fd_sc_hd__a221oi_1 _7095_ (.A1(net714),
    .A2(net747),
    .B1(net749),
    .B2(_3021_),
    .C1(net685),
    .Y(_3022_));
 sky130_fd_sc_hd__a21oi_1 _7096_ (.A1(net156),
    .A2(net678),
    .B1(_2881_),
    .Y(_3023_));
 sky130_fd_sc_hd__a21oi_1 _7097_ (.A1(_3018_),
    .A2(_3022_),
    .B1(_3023_),
    .Y(_0022_));
 sky130_fd_sc_hd__nor2_1 _7099_ (.A(_2972_),
    .B(_2981_),
    .Y(_3025_));
 sky130_fd_sc_hd__xnor2_1 _7100_ (.A(_0444_),
    .B(_3025_),
    .Y(_3026_));
 sky130_fd_sc_hd__inv_1 _7101_ (.A(net715),
    .Y(_0254_));
 sky130_fd_sc_hd__a222oi_1 _7102_ (.A1(\count_instr[25] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[57] ),
    .C1(\count_cycle[57] ),
    .C2(net742),
    .Y(_3027_));
 sky130_fd_sc_hd__a21boi_0 _7103_ (.A1(\count_cycle[25] ),
    .A2(net686),
    .B1_N(_3027_),
    .Y(_3028_));
 sky130_fd_sc_hd__o221ai_1 _7104_ (.A1(_0254_),
    .A2(net689),
    .B1(_2875_),
    .B2(_3028_),
    .C1(_2876_),
    .Y(_3029_));
 sky130_fd_sc_hd__a21oi_1 _7105_ (.A1(net748),
    .A2(_3026_),
    .B1(_3029_),
    .Y(_3030_));
 sky130_fd_sc_hd__a21oi_1 _7106_ (.A1(net155),
    .A2(net678),
    .B1(_2881_),
    .Y(_3031_));
 sky130_fd_sc_hd__nor2_1 _7107_ (.A(_3030_),
    .B(_3031_),
    .Y(_0021_));
 sky130_fd_sc_hd__a222oi_1 _7109_ (.A1(\count_instr[24] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[56] ),
    .C1(\count_cycle[56] ),
    .C2(net742),
    .Y(_3033_));
 sky130_fd_sc_hd__nand2_1 _7110_ (.A(\count_cycle[24] ),
    .B(net686),
    .Y(_3034_));
 sky130_fd_sc_hd__nand2_1 _7111_ (.A(_3033_),
    .B(_3034_),
    .Y(_3035_));
 sky130_fd_sc_hd__a221oi_1 _7112_ (.A1(net716),
    .A2(net747),
    .B1(net749),
    .B2(_3035_),
    .C1(net685),
    .Y(_3036_));
 sky130_fd_sc_hd__nand2_1 _7113_ (.A(_0265_),
    .B(_0448_),
    .Y(_3037_));
 sky130_fd_sc_hd__nand3_1 _7114_ (.A(_0233_),
    .B(_0384_),
    .C(_2970_),
    .Y(_3038_));
 sky130_fd_sc_hd__a211o_1 _7115_ (.A1(_2914_),
    .A2(_2915_),
    .B1(_2917_),
    .C1(_2975_),
    .X(_3039_));
 sky130_fd_sc_hd__o31ai_1 _7116_ (.A1(_2902_),
    .A2(_3037_),
    .A3(_3038_),
    .B1(_3039_),
    .Y(_3040_));
 sky130_fd_sc_hd__o41ai_1 _7117_ (.A1(_0383_),
    .A2(_0354_),
    .A3(_0153_),
    .A4(_3040_),
    .B1(_2974_),
    .Y(_3041_));
 sky130_fd_sc_hd__xnor2_1 _7118_ (.A(_0442_),
    .B(_3041_),
    .Y(_3042_));
 sky130_fd_sc_hd__nand2_1 _7119_ (.A(net748),
    .B(_3042_),
    .Y(_3043_));
 sky130_fd_sc_hd__a21oi_1 _7120_ (.A1(net154),
    .A2(net678),
    .B1(_2881_),
    .Y(_3044_));
 sky130_fd_sc_hd__a21oi_1 _7121_ (.A1(_3036_),
    .A2(_3043_),
    .B1(_3044_),
    .Y(_0020_));
 sky130_fd_sc_hd__a222oi_1 _7122_ (.A1(\count_instr[23] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[55] ),
    .C1(\count_cycle[55] ),
    .C2(net742),
    .Y(_3045_));
 sky130_fd_sc_hd__nand2_1 _7123_ (.A(\count_cycle[23] ),
    .B(net686),
    .Y(_3046_));
 sky130_fd_sc_hd__nand2_1 _7124_ (.A(_3045_),
    .B(_3046_),
    .Y(_3047_));
 sky130_fd_sc_hd__a221oi_1 _7126_ (.A1(net717),
    .A2(net747),
    .B1(net749),
    .B2(_3047_),
    .C1(net685),
    .Y(_3049_));
 sky130_fd_sc_hd__nor2_1 _7128_ (.A(_0232_),
    .B(_2969_),
    .Y(_3051_));
 sky130_fd_sc_hd__a21oi_1 _7129_ (.A1(_2961_),
    .A2(_2965_),
    .B1(_3051_),
    .Y(_3052_));
 sky130_fd_sc_hd__a21oi_1 _7130_ (.A1(_0450_),
    .A2(_3052_),
    .B1(_0449_),
    .Y(_3053_));
 sky130_fd_sc_hd__nand4b_1 _7131_ (.A_N(_3053_),
    .B(_0135_),
    .C(_0507_),
    .D(_0386_),
    .Y(_3054_));
 sky130_fd_sc_hd__a21o_1 _7132_ (.A1(_0385_),
    .A2(_0135_),
    .B1(_0134_),
    .X(_3055_));
 sky130_fd_sc_hd__nand2_1 _7133_ (.A(_0507_),
    .B(_3055_),
    .Y(_3056_));
 sky130_fd_sc_hd__nor3_1 _7134_ (.A(_0383_),
    .B(_0506_),
    .C(_0153_),
    .Y(_3057_));
 sky130_fd_sc_hd__o31ai_1 _7135_ (.A1(_0383_),
    .A2(_0384_),
    .A3(_0153_),
    .B1(_2973_),
    .Y(_3058_));
 sky130_fd_sc_hd__a31oi_1 _7136_ (.A1(_3054_),
    .A2(_3056_),
    .A3(_3057_),
    .B1(_3058_),
    .Y(_3059_));
 sky130_fd_sc_hd__xor2_1 _7137_ (.A(_0355_),
    .B(_3059_),
    .X(_3060_));
 sky130_fd_sc_hd__nand2_1 _7138_ (.A(net748),
    .B(_3060_),
    .Y(_3061_));
 sky130_fd_sc_hd__a21oi_1 _7139_ (.A1(net153),
    .A2(net678),
    .B1(_2881_),
    .Y(_3062_));
 sky130_fd_sc_hd__a21oi_1 _7140_ (.A1(_3049_),
    .A2(_3061_),
    .B1(_3062_),
    .Y(_0019_));
 sky130_fd_sc_hd__nor2_1 _7141_ (.A(_0383_),
    .B(_3040_),
    .Y(_3063_));
 sky130_fd_sc_hd__xor2_1 _7142_ (.A(_0154_),
    .B(_3063_),
    .X(_3064_));
 sky130_fd_sc_hd__a222oi_1 _7143_ (.A1(\count_instr[22] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[54] ),
    .C1(\count_cycle[54] ),
    .C2(net742),
    .Y(_3065_));
 sky130_fd_sc_hd__nand2_1 _7144_ (.A(\count_cycle[22] ),
    .B(net686),
    .Y(_3066_));
 sky130_fd_sc_hd__nand2_1 _7145_ (.A(_3065_),
    .B(_3066_),
    .Y(_3067_));
 sky130_fd_sc_hd__a221oi_1 _7146_ (.A1(net718),
    .A2(net747),
    .B1(net749),
    .B2(_3067_),
    .C1(net685),
    .Y(_3068_));
 sky130_fd_sc_hd__a21oi_1 _7147_ (.A1(net152),
    .A2(net678),
    .B1(_2881_),
    .Y(_3069_));
 sky130_fd_sc_hd__o22ai_1 _7148_ (.A1(_2873_),
    .A2(_3064_),
    .B1(_3068_),
    .B2(_3069_),
    .Y(_0018_));
 sky130_fd_sc_hd__nand2_1 _7149_ (.A(_3054_),
    .B(_3056_),
    .Y(_3070_));
 sky130_fd_sc_hd__nor2_1 _7150_ (.A(_0506_),
    .B(_3070_),
    .Y(_3071_));
 sky130_fd_sc_hd__xnor2_1 _7151_ (.A(_2975_),
    .B(_3071_),
    .Y(_3072_));
 sky130_fd_sc_hd__a222oi_1 _7152_ (.A1(\count_instr[21] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[53] ),
    .C1(\count_cycle[53] ),
    .C2(net742),
    .Y(_3073_));
 sky130_fd_sc_hd__nand2_1 _7153_ (.A(\count_cycle[21] ),
    .B(net686),
    .Y(_3074_));
 sky130_fd_sc_hd__nand2_1 _7154_ (.A(_3073_),
    .B(_3074_),
    .Y(_3075_));
 sky130_fd_sc_hd__a221oi_1 _7155_ (.A1(net719),
    .A2(net747),
    .B1(net749),
    .B2(_3075_),
    .C1(net685),
    .Y(_3076_));
 sky130_fd_sc_hd__a21oi_1 _7156_ (.A1(net151),
    .A2(net678),
    .B1(_2881_),
    .Y(_3077_));
 sky130_fd_sc_hd__o22ai_1 _7157_ (.A1(_2873_),
    .A2(_3072_),
    .B1(_3076_),
    .B2(_3077_),
    .Y(_0017_));
 sky130_fd_sc_hd__a222oi_1 _7158_ (.A1(\count_instr[20] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[52] ),
    .C1(\count_cycle[52] ),
    .C2(net742),
    .Y(_3078_));
 sky130_fd_sc_hd__nand2_1 _7159_ (.A(\count_cycle[20] ),
    .B(net686),
    .Y(_3079_));
 sky130_fd_sc_hd__nand2_1 _7160_ (.A(_3078_),
    .B(_3079_),
    .Y(_3080_));
 sky130_fd_sc_hd__a221oi_1 _7161_ (.A1(net720),
    .A2(net747),
    .B1(net749),
    .B2(_3080_),
    .C1(net685),
    .Y(_3081_));
 sky130_fd_sc_hd__inv_1 _7162_ (.A(_0385_),
    .Y(_3082_));
 sky130_fd_sc_hd__nand2_1 _7163_ (.A(_3082_),
    .B(_2914_),
    .Y(_3083_));
 sky130_fd_sc_hd__nand4_1 _7164_ (.A(_0450_),
    .B(_0233_),
    .C(_0386_),
    .D(_0135_),
    .Y(_3084_));
 sky130_fd_sc_hd__nor3_1 _7165_ (.A(_2902_),
    .B(_3037_),
    .C(_3084_),
    .Y(_3085_));
 sky130_fd_sc_hd__a211oi_1 _7166_ (.A1(_0135_),
    .A2(_3083_),
    .B1(_3085_),
    .C1(_0134_),
    .Y(_3086_));
 sky130_fd_sc_hd__xnor2_1 _7167_ (.A(_0507_),
    .B(_3086_),
    .Y(_3087_));
 sky130_fd_sc_hd__nand2_1 _7168_ (.A(net748),
    .B(_3087_),
    .Y(_3088_));
 sky130_fd_sc_hd__a21oi_1 _7169_ (.A1(net150),
    .A2(net678),
    .B1(_2881_),
    .Y(_3089_));
 sky130_fd_sc_hd__a21oi_1 _7170_ (.A1(_3081_),
    .A2(_3088_),
    .B1(_3089_),
    .Y(_0016_));
 sky130_fd_sc_hd__inv_1 _7171_ (.A(_0386_),
    .Y(_3090_));
 sky130_fd_sc_hd__o21a_1 _7172_ (.A1(_3090_),
    .A2(_3053_),
    .B1(_3082_),
    .X(_3091_));
 sky130_fd_sc_hd__xnor2_1 _7173_ (.A(_0135_),
    .B(_3091_),
    .Y(_3092_));
 sky130_fd_sc_hd__nand2_1 _7174_ (.A(net748),
    .B(_3092_),
    .Y(_3093_));
 sky130_fd_sc_hd__a222oi_1 _7175_ (.A1(\count_instr[19] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[51] ),
    .C1(\count_cycle[51] ),
    .C2(net742),
    .Y(_3094_));
 sky130_fd_sc_hd__nand2_1 _7176_ (.A(\count_cycle[19] ),
    .B(net686),
    .Y(_3095_));
 sky130_fd_sc_hd__nand2_1 _7177_ (.A(_3094_),
    .B(_3095_),
    .Y(_3096_));
 sky130_fd_sc_hd__a221oi_1 _7178_ (.A1(net722),
    .A2(net746),
    .B1(net749),
    .B2(_3096_),
    .C1(net685),
    .Y(_3097_));
 sky130_fd_sc_hd__a21oi_1 _7179_ (.A1(net148),
    .A2(net678),
    .B1(_2881_),
    .Y(_3098_));
 sky130_fd_sc_hd__a21oi_1 _7180_ (.A1(_3093_),
    .A2(_3097_),
    .B1(_3098_),
    .Y(_0014_));
 sky130_fd_sc_hd__o21bai_1 _7181_ (.A1(_2902_),
    .A2(_3037_),
    .B1_N(_2911_),
    .Y(_3099_));
 sky130_fd_sc_hd__a21o_1 _7182_ (.A1(_0233_),
    .A2(_3099_),
    .B1(_0232_),
    .X(_3100_));
 sky130_fd_sc_hd__a2111o_1 _7183_ (.A1(_0450_),
    .A2(_3100_),
    .B1(_3090_),
    .C1(_2873_),
    .D1(_0449_),
    .X(_3101_));
 sky130_fd_sc_hd__nor2_1 _7184_ (.A(_2873_),
    .B(_0386_),
    .Y(_3102_));
 sky130_fd_sc_hd__nand3_1 _7185_ (.A(_0450_),
    .B(_3100_),
    .C(_3102_),
    .Y(_3103_));
 sky130_fd_sc_hd__a21oi_1 _7186_ (.A1(net147),
    .A2(net678),
    .B1(_2881_),
    .Y(_3104_));
 sky130_fd_sc_hd__a222oi_1 _7187_ (.A1(\count_instr[18] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[50] ),
    .C1(\count_cycle[50] ),
    .C2(net742),
    .Y(_3105_));
 sky130_fd_sc_hd__nand2_1 _7188_ (.A(\count_cycle[18] ),
    .B(net686),
    .Y(_3106_));
 sky130_fd_sc_hd__nand2_1 _7189_ (.A(_3105_),
    .B(_3106_),
    .Y(_3107_));
 sky130_fd_sc_hd__a221oi_1 _7190_ (.A1(net723),
    .A2(net746),
    .B1(net749),
    .B2(_3107_),
    .C1(net685),
    .Y(_3108_));
 sky130_fd_sc_hd__nor2_1 _7191_ (.A(_3104_),
    .B(_3108_),
    .Y(_3109_));
 sky130_fd_sc_hd__a21oi_1 _7192_ (.A1(_0449_),
    .A2(_3102_),
    .B1(_3109_),
    .Y(_3110_));
 sky130_fd_sc_hd__nand3_1 _7193_ (.A(_3101_),
    .B(_3103_),
    .C(_3110_),
    .Y(_0013_));
 sky130_fd_sc_hd__a222oi_1 _7194_ (.A1(\count_instr[17] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[49] ),
    .C1(\count_cycle[49] ),
    .C2(net742),
    .Y(_3111_));
 sky130_fd_sc_hd__nand2_1 _7195_ (.A(\count_cycle[17] ),
    .B(net686),
    .Y(_3112_));
 sky130_fd_sc_hd__nand2_1 _7196_ (.A(_3111_),
    .B(_3112_),
    .Y(_3113_));
 sky130_fd_sc_hd__a221oi_1 _7197_ (.A1(net724),
    .A2(net746),
    .B1(net749),
    .B2(_3113_),
    .C1(net685),
    .Y(_3114_));
 sky130_fd_sc_hd__xor2_1 _7198_ (.A(_0450_),
    .B(_3052_),
    .X(_3115_));
 sky130_fd_sc_hd__nand2_1 _7199_ (.A(net748),
    .B(_3115_),
    .Y(_3116_));
 sky130_fd_sc_hd__a21oi_1 _7200_ (.A1(net146),
    .A2(net678),
    .B1(_2881_),
    .Y(_3117_));
 sky130_fd_sc_hd__a21oi_1 _7201_ (.A1(_3114_),
    .A2(_3116_),
    .B1(_3117_),
    .Y(_0012_));
 sky130_fd_sc_hd__a222oi_1 _7202_ (.A1(\count_instr[16] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[48] ),
    .C1(\count_cycle[48] ),
    .C2(net742),
    .Y(_3118_));
 sky130_fd_sc_hd__nand2_1 _7203_ (.A(\count_cycle[16] ),
    .B(net686),
    .Y(_3119_));
 sky130_fd_sc_hd__nand2_1 _7204_ (.A(_3118_),
    .B(_3119_),
    .Y(_3120_));
 sky130_fd_sc_hd__a221oi_1 _7205_ (.A1(net725),
    .A2(net746),
    .B1(net749),
    .B2(_3120_),
    .C1(net685),
    .Y(_3121_));
 sky130_fd_sc_hd__xor2_1 _7206_ (.A(_0233_),
    .B(_3099_),
    .X(_3122_));
 sky130_fd_sc_hd__nand2_1 _7207_ (.A(net748),
    .B(_3122_),
    .Y(_3123_));
 sky130_fd_sc_hd__a21oi_1 _7208_ (.A1(net145),
    .A2(net678),
    .B1(_2881_),
    .Y(_3124_));
 sky130_fd_sc_hd__a21oi_1 _7209_ (.A1(_3121_),
    .A2(_3123_),
    .B1(_3124_),
    .Y(_0011_));
 sky130_fd_sc_hd__a222oi_1 _7210_ (.A1(\count_instr[15] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[47] ),
    .C1(\count_cycle[47] ),
    .C2(net742),
    .Y(_3125_));
 sky130_fd_sc_hd__nand2_1 _7211_ (.A(\count_cycle[15] ),
    .B(net686),
    .Y(_3126_));
 sky130_fd_sc_hd__nand2_1 _7212_ (.A(_3125_),
    .B(_3126_),
    .Y(_3127_));
 sky130_fd_sc_hd__a221oi_1 _7213_ (.A1(net726),
    .A2(net746),
    .B1(net749),
    .B2(_3127_),
    .C1(net685),
    .Y(_3128_));
 sky130_fd_sc_hd__nand2b_1 _7214_ (.A_N(_2900_),
    .B(_2961_),
    .Y(_3129_));
 sky130_fd_sc_hd__a21o_1 _7215_ (.A1(_0446_),
    .A2(_3129_),
    .B1(_0445_),
    .X(_3130_));
 sky130_fd_sc_hd__a21oi_1 _7216_ (.A1(_0448_),
    .A2(_3130_),
    .B1(_0447_),
    .Y(_3131_));
 sky130_fd_sc_hd__xnor2_1 _7217_ (.A(_0265_),
    .B(_3131_),
    .Y(_3132_));
 sky130_fd_sc_hd__nand2_1 _7218_ (.A(net748),
    .B(_3132_),
    .Y(_3133_));
 sky130_fd_sc_hd__nand2b_1 _7219_ (.A_N(latched_is_lh),
    .B(latched_is_lb),
    .Y(_3134_));
 sky130_fd_sc_hd__a21oi_1 _7221_ (.A1(_2866_),
    .A2(_3134_),
    .B1(_2880_),
    .Y(_3136_));
 sky130_fd_sc_hd__a21oi_1 _7222_ (.A1(_3128_),
    .A2(_3133_),
    .B1(_3136_),
    .Y(_0010_));
 sky130_fd_sc_hd__a222oi_1 _7223_ (.A1(\count_instr[14] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[46] ),
    .C1(\count_cycle[46] ),
    .C2(net742),
    .Y(_3137_));
 sky130_fd_sc_hd__nand2_1 _7224_ (.A(\count_cycle[14] ),
    .B(net686),
    .Y(_3138_));
 sky130_fd_sc_hd__nand2_1 _7225_ (.A(_3137_),
    .B(_3138_),
    .Y(_3139_));
 sky130_fd_sc_hd__a221oi_1 _7226_ (.A1(net727),
    .A2(net746),
    .B1(net749),
    .B2(_3139_),
    .C1(net685),
    .Y(_3140_));
 sky130_fd_sc_hd__xnor2_1 _7227_ (.A(_0448_),
    .B(_2902_),
    .Y(_3141_));
 sky130_fd_sc_hd__nand2_1 _7228_ (.A(net748),
    .B(_3141_),
    .Y(_3142_));
 sky130_fd_sc_hd__a21boi_1 _7229_ (.A1(net733),
    .A2(net721),
    .B1_N(_0988_),
    .Y(_3143_));
 sky130_fd_sc_hd__a22o_1 _7230_ (.A1(net161),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net143),
    .X(_3144_));
 sky130_fd_sc_hd__a21oi_1 _7231_ (.A1(_3134_),
    .A2(_3144_),
    .B1(_2880_),
    .Y(_3145_));
 sky130_fd_sc_hd__a21oi_1 _7232_ (.A1(_3140_),
    .A2(_3142_),
    .B1(_3145_),
    .Y(_0009_));
 sky130_fd_sc_hd__a222oi_1 _7233_ (.A1(\count_instr[13] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[45] ),
    .C1(\count_cycle[45] ),
    .C2(net742),
    .Y(_3146_));
 sky130_fd_sc_hd__nand2_1 _7234_ (.A(\count_cycle[13] ),
    .B(net686),
    .Y(_3147_));
 sky130_fd_sc_hd__nand2_1 _7235_ (.A(_3146_),
    .B(_3147_),
    .Y(_3148_));
 sky130_fd_sc_hd__a221oi_1 _7236_ (.A1(net728),
    .A2(net746),
    .B1(net749),
    .B2(_3148_),
    .C1(net685),
    .Y(_3149_));
 sky130_fd_sc_hd__xor2_1 _7237_ (.A(_0446_),
    .B(_3129_),
    .X(_3150_));
 sky130_fd_sc_hd__nand2_1 _7238_ (.A(net748),
    .B(_3150_),
    .Y(_3151_));
 sky130_fd_sc_hd__a22o_1 _7239_ (.A1(net159),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net142),
    .X(_3152_));
 sky130_fd_sc_hd__a21oi_1 _7240_ (.A1(_3134_),
    .A2(_3152_),
    .B1(_2880_),
    .Y(_3153_));
 sky130_fd_sc_hd__a21oi_1 _7241_ (.A1(_3149_),
    .A2(_3151_),
    .B1(_3153_),
    .Y(_0008_));
 sky130_fd_sc_hd__a222oi_1 _7242_ (.A1(\count_instr[12] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[44] ),
    .C1(\count_cycle[44] ),
    .C2(net742),
    .Y(_3154_));
 sky130_fd_sc_hd__nand2_1 _7243_ (.A(\count_cycle[12] ),
    .B(net686),
    .Y(_3155_));
 sky130_fd_sc_hd__nand2_1 _7244_ (.A(_3154_),
    .B(_3155_),
    .Y(_3156_));
 sky130_fd_sc_hd__a221oi_1 _7245_ (.A1(net729),
    .A2(net746),
    .B1(net749),
    .B2(_3156_),
    .C1(net685),
    .Y(_3157_));
 sky130_fd_sc_hd__inv_1 _7246_ (.A(_0104_),
    .Y(_3158_));
 sky130_fd_sc_hd__a31oi_1 _7247_ (.A1(_0495_),
    .A2(_2888_),
    .A3(_2891_),
    .B1(_0494_),
    .Y(_3159_));
 sky130_fd_sc_hd__o21bai_1 _7248_ (.A1(_3158_),
    .A2(_3159_),
    .B1_N(_0103_),
    .Y(_3160_));
 sky130_fd_sc_hd__a21o_1 _7249_ (.A1(_0131_),
    .A2(_3160_),
    .B1(_0130_),
    .X(_3161_));
 sky130_fd_sc_hd__a21oi_1 _7250_ (.A1(_0290_),
    .A2(_3161_),
    .B1(_0289_),
    .Y(_3162_));
 sky130_fd_sc_hd__xnor2_1 _7251_ (.A(_0497_),
    .B(_3162_),
    .Y(_3163_));
 sky130_fd_sc_hd__nand2_1 _7252_ (.A(net748),
    .B(_3163_),
    .Y(_3164_));
 sky130_fd_sc_hd__a22o_1 _7253_ (.A1(net158),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net141),
    .X(_3165_));
 sky130_fd_sc_hd__a21oi_1 _7254_ (.A1(_3134_),
    .A2(_3165_),
    .B1(_2880_),
    .Y(_3166_));
 sky130_fd_sc_hd__a21oi_1 _7255_ (.A1(_3157_),
    .A2(_3164_),
    .B1(_3166_),
    .Y(_0007_));
 sky130_fd_sc_hd__a222oi_1 _7256_ (.A1(\count_instr[11] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[43] ),
    .C1(\count_cycle[43] ),
    .C2(net742),
    .Y(_3167_));
 sky130_fd_sc_hd__nand2_1 _7257_ (.A(\count_cycle[11] ),
    .B(net686),
    .Y(_3168_));
 sky130_fd_sc_hd__nand2_1 _7258_ (.A(_3167_),
    .B(_3168_),
    .Y(_3169_));
 sky130_fd_sc_hd__a221oi_1 _7259_ (.A1(net730),
    .A2(net746),
    .B1(net749),
    .B2(_3169_),
    .C1(net685),
    .Y(_3170_));
 sky130_fd_sc_hd__a31oi_1 _7260_ (.A1(_0495_),
    .A2(_2956_),
    .A3(_2960_),
    .B1(_0494_),
    .Y(_3171_));
 sky130_fd_sc_hd__o21bai_1 _7261_ (.A1(_3158_),
    .A2(_3171_),
    .B1_N(_0103_),
    .Y(_3172_));
 sky130_fd_sc_hd__a21oi_1 _7262_ (.A1(_0131_),
    .A2(_3172_),
    .B1(_0130_),
    .Y(_3173_));
 sky130_fd_sc_hd__xnor2_1 _7263_ (.A(_0290_),
    .B(_3173_),
    .Y(_3174_));
 sky130_fd_sc_hd__nand2_1 _7264_ (.A(net748),
    .B(_3174_),
    .Y(_3175_));
 sky130_fd_sc_hd__a22o_1 _7265_ (.A1(net157),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net140),
    .X(_3176_));
 sky130_fd_sc_hd__a21oi_1 _7266_ (.A1(_3134_),
    .A2(_3176_),
    .B1(_2880_),
    .Y(_3177_));
 sky130_fd_sc_hd__a21oi_1 _7267_ (.A1(_3170_),
    .A2(_3175_),
    .B1(_3177_),
    .Y(_0006_));
 sky130_fd_sc_hd__a222oi_1 _7268_ (.A1(\count_instr[10] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[42] ),
    .C1(\count_cycle[42] ),
    .C2(net742),
    .Y(_3178_));
 sky130_fd_sc_hd__nand2_1 _7269_ (.A(\count_cycle[10] ),
    .B(net686),
    .Y(_3179_));
 sky130_fd_sc_hd__nand2_1 _7270_ (.A(_3178_),
    .B(_3179_),
    .Y(_3180_));
 sky130_fd_sc_hd__a221oi_1 _7271_ (.A1(net731),
    .A2(net746),
    .B1(net749),
    .B2(_3180_),
    .C1(net685),
    .Y(_3181_));
 sky130_fd_sc_hd__xor2_1 _7272_ (.A(_0131_),
    .B(_3160_),
    .X(_3182_));
 sky130_fd_sc_hd__nand2_1 _7273_ (.A(net748),
    .B(_3182_),
    .Y(_3183_));
 sky130_fd_sc_hd__a22o_1 _7274_ (.A1(net156),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net139),
    .X(_3184_));
 sky130_fd_sc_hd__a21oi_1 _7275_ (.A1(_3134_),
    .A2(_3184_),
    .B1(_2880_),
    .Y(_3185_));
 sky130_fd_sc_hd__a21oi_1 _7276_ (.A1(_3181_),
    .A2(_3183_),
    .B1(_3185_),
    .Y(_0005_));
 sky130_fd_sc_hd__a222oi_1 _7277_ (.A1(\count_instr[9] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[41] ),
    .C1(\count_cycle[41] ),
    .C2(net742),
    .Y(_3186_));
 sky130_fd_sc_hd__nand2_1 _7278_ (.A(\count_cycle[9] ),
    .B(net686),
    .Y(_3187_));
 sky130_fd_sc_hd__nand2_1 _7279_ (.A(_3186_),
    .B(_3187_),
    .Y(_3188_));
 sky130_fd_sc_hd__a221oi_1 _7280_ (.A1(net702),
    .A2(net746),
    .B1(net749),
    .B2(_3188_),
    .C1(net685),
    .Y(_3189_));
 sky130_fd_sc_hd__xnor2_1 _7281_ (.A(_0104_),
    .B(_3171_),
    .Y(_3190_));
 sky130_fd_sc_hd__nand2_1 _7282_ (.A(net748),
    .B(_3190_),
    .Y(_3191_));
 sky130_fd_sc_hd__a22o_1 _7283_ (.A1(net155),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net169),
    .X(_3192_));
 sky130_fd_sc_hd__a21oi_1 _7284_ (.A1(_3134_),
    .A2(_3192_),
    .B1(_2880_),
    .Y(_3193_));
 sky130_fd_sc_hd__a21oi_1 _7285_ (.A1(_3189_),
    .A2(_3191_),
    .B1(_3193_),
    .Y(_0035_));
 sky130_fd_sc_hd__a222oi_1 _7286_ (.A1(\count_instr[8] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[40] ),
    .C1(\count_cycle[40] ),
    .C2(net742),
    .Y(_3194_));
 sky130_fd_sc_hd__nand2_1 _7287_ (.A(\count_cycle[8] ),
    .B(net686),
    .Y(_3195_));
 sky130_fd_sc_hd__nand2_1 _7288_ (.A(_3194_),
    .B(_3195_),
    .Y(_3196_));
 sky130_fd_sc_hd__a221oi_1 _7289_ (.A1(net703),
    .A2(net746),
    .B1(net749),
    .B2(_3196_),
    .C1(net685),
    .Y(_3197_));
 sky130_fd_sc_hd__xor2_1 _7290_ (.A(_0495_),
    .B(_2892_),
    .X(_3198_));
 sky130_fd_sc_hd__nand2_1 _7291_ (.A(net748),
    .B(_3198_),
    .Y(_3199_));
 sky130_fd_sc_hd__a22o_1 _7292_ (.A1(net154),
    .A2(_2870_),
    .B1(_3143_),
    .B2(net168),
    .X(_3200_));
 sky130_fd_sc_hd__a21oi_1 _7293_ (.A1(_3134_),
    .A2(_3200_),
    .B1(_2880_),
    .Y(_3201_));
 sky130_fd_sc_hd__a21oi_1 _7294_ (.A1(_3197_),
    .A2(_3199_),
    .B1(_3201_),
    .Y(_0034_));
 sky130_fd_sc_hd__inv_1 _7295_ (.A(_0356_),
    .Y(_3202_));
 sky130_fd_sc_hd__a21oi_1 _7296_ (.A1(_0067_),
    .A2(_0364_),
    .B1(_0363_),
    .Y(_3203_));
 sky130_fd_sc_hd__nor2_1 _7297_ (.A(_2883_),
    .B(_3203_),
    .Y(_3204_));
 sky130_fd_sc_hd__o21ai_0 _7298_ (.A1(_0437_),
    .A2(_3204_),
    .B1(_0357_),
    .Y(_3205_));
 sky130_fd_sc_hd__nand2_1 _7299_ (.A(_3202_),
    .B(_3205_),
    .Y(_3206_));
 sky130_fd_sc_hd__a21oi_1 _7300_ (.A1(_0362_),
    .A2(_3206_),
    .B1(_0361_),
    .Y(_3207_));
 sky130_fd_sc_hd__xnor2_1 _7301_ (.A(_0410_),
    .B(_3207_),
    .Y(_3208_));
 sky130_fd_sc_hd__nand2_1 _7302_ (.A(net748),
    .B(_3208_),
    .Y(_3209_));
 sky130_fd_sc_hd__a222oi_1 _7303_ (.A1(\count_instr[7] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[39] ),
    .C1(\count_cycle[39] ),
    .C2(net742),
    .Y(_3210_));
 sky130_fd_sc_hd__nand2_1 _7304_ (.A(\count_cycle[7] ),
    .B(net686),
    .Y(_3211_));
 sky130_fd_sc_hd__nand2_1 _7305_ (.A(_3210_),
    .B(_3211_),
    .Y(_3212_));
 sky130_fd_sc_hd__a221oi_1 _7306_ (.A1(net704),
    .A2(net746),
    .B1(net749),
    .B2(_3212_),
    .C1(net685),
    .Y(_3213_));
 sky130_fd_sc_hd__a21oi_1 _7307_ (.A1(_3209_),
    .A2(_3213_),
    .B1(_2878_),
    .Y(_0033_));
 sky130_fd_sc_hd__a222oi_1 _7309_ (.A1(\count_instr[6] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[38] ),
    .C1(\count_cycle[38] ),
    .C2(net742),
    .Y(_3215_));
 sky130_fd_sc_hd__nand2_1 _7310_ (.A(\count_cycle[6] ),
    .B(net686),
    .Y(_3216_));
 sky130_fd_sc_hd__nand2_1 _7311_ (.A(_3215_),
    .B(_3216_),
    .Y(_3217_));
 sky130_fd_sc_hd__a221oi_1 _7312_ (.A1(net705),
    .A2(net746),
    .B1(net749),
    .B2(_3217_),
    .C1(net685),
    .Y(_3218_));
 sky130_fd_sc_hd__nor2_1 _7313_ (.A(_2883_),
    .B(_2885_),
    .Y(_3219_));
 sky130_fd_sc_hd__o21ai_0 _7314_ (.A1(_0437_),
    .A2(_3219_),
    .B1(_0357_),
    .Y(_3220_));
 sky130_fd_sc_hd__nand2_1 _7315_ (.A(_3202_),
    .B(_3220_),
    .Y(_3221_));
 sky130_fd_sc_hd__xor2_1 _7316_ (.A(_0362_),
    .B(_3221_),
    .X(_3222_));
 sky130_fd_sc_hd__nand2_1 _7317_ (.A(net748),
    .B(_3222_),
    .Y(_3223_));
 sky130_fd_sc_hd__a21oi_1 _7318_ (.A1(_0485_),
    .A2(net734),
    .B1(\mem_wordsize[2] ),
    .Y(_3224_));
 sky130_fd_sc_hd__nor2_1 _7319_ (.A(_0055_),
    .B(_3224_),
    .Y(_3225_));
 sky130_fd_sc_hd__nand2_1 _7320_ (.A(net308),
    .B(net734),
    .Y(_3226_));
 sky130_fd_sc_hd__mux2i_1 _7321_ (.A0(net143),
    .A1(net161),
    .S(net721),
    .Y(_3227_));
 sky130_fd_sc_hd__o21ai_0 _7322_ (.A1(_3226_),
    .A2(_3227_),
    .B1(_2936_),
    .Y(_3228_));
 sky130_fd_sc_hd__a221oi_1 _7323_ (.A1(net166),
    .A2(net267),
    .B1(_3225_),
    .B2(net152),
    .C1(_3228_),
    .Y(_3229_));
 sky130_fd_sc_hd__a21oi_1 _7324_ (.A1(_3218_),
    .A2(_3223_),
    .B1(_3229_),
    .Y(_0032_));
 sky130_fd_sc_hd__a21oi_1 _7325_ (.A1(net706),
    .A2(net746),
    .B1(net685),
    .Y(_3230_));
 sky130_fd_sc_hd__or3_1 _7326_ (.A(_0357_),
    .B(_0437_),
    .C(_3204_),
    .X(_3231_));
 sky130_fd_sc_hd__a222oi_1 _7327_ (.A1(\count_instr[5] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[37] ),
    .C1(\count_cycle[37] ),
    .C2(net742),
    .Y(_3232_));
 sky130_fd_sc_hd__nand2_1 _7328_ (.A(\count_cycle[5] ),
    .B(net686),
    .Y(_3233_));
 sky130_fd_sc_hd__nand2_1 _7329_ (.A(_3232_),
    .B(_3233_),
    .Y(_3234_));
 sky130_fd_sc_hd__a32oi_1 _7330_ (.A1(net748),
    .A2(_3205_),
    .A3(_3231_),
    .B1(_3234_),
    .B2(net749),
    .Y(_3235_));
 sky130_fd_sc_hd__mux2i_1 _7331_ (.A0(net142),
    .A1(net159),
    .S(net721),
    .Y(_3236_));
 sky130_fd_sc_hd__o21ai_0 _7332_ (.A1(_3226_),
    .A2(_3236_),
    .B1(_2936_),
    .Y(_3237_));
 sky130_fd_sc_hd__a221oi_1 _7333_ (.A1(net165),
    .A2(net267),
    .B1(_3225_),
    .B2(net151),
    .C1(_3237_),
    .Y(_3238_));
 sky130_fd_sc_hd__a21oi_1 _7334_ (.A1(_3230_),
    .A2(_3235_),
    .B1(_3238_),
    .Y(_0031_));
 sky130_fd_sc_hd__a222oi_1 _7335_ (.A1(\count_instr[4] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[36] ),
    .C1(\count_cycle[36] ),
    .C2(net742),
    .Y(_3239_));
 sky130_fd_sc_hd__nand2_1 _7336_ (.A(\count_cycle[4] ),
    .B(net686),
    .Y(_3240_));
 sky130_fd_sc_hd__nand2_1 _7337_ (.A(_3239_),
    .B(_3240_),
    .Y(_3241_));
 sky130_fd_sc_hd__a221oi_1 _7338_ (.A1(net707),
    .A2(net746),
    .B1(net749),
    .B2(_3241_),
    .C1(net685),
    .Y(_3242_));
 sky130_fd_sc_hd__xnor2_1 _7339_ (.A(_0438_),
    .B(_2885_),
    .Y(_3243_));
 sky130_fd_sc_hd__nand2_1 _7340_ (.A(net748),
    .B(_3243_),
    .Y(_3244_));
 sky130_fd_sc_hd__mux2i_1 _7341_ (.A0(net141),
    .A1(net158),
    .S(net721),
    .Y(_3245_));
 sky130_fd_sc_hd__o21ai_0 _7342_ (.A1(_3226_),
    .A2(_3245_),
    .B1(_2936_),
    .Y(_3246_));
 sky130_fd_sc_hd__a221oi_1 _7343_ (.A1(net164),
    .A2(net267),
    .B1(_3225_),
    .B2(net150),
    .C1(_3246_),
    .Y(_3247_));
 sky130_fd_sc_hd__a21oi_1 _7344_ (.A1(_3242_),
    .A2(_3244_),
    .B1(_3247_),
    .Y(_0030_));
 sky130_fd_sc_hd__mux2i_1 _7345_ (.A0(net140),
    .A1(net157),
    .S(net721),
    .Y(_3248_));
 sky130_fd_sc_hd__nor2_1 _7346_ (.A(_3226_),
    .B(_3248_),
    .Y(_3249_));
 sky130_fd_sc_hd__a221oi_1 _7347_ (.A1(net163),
    .A2(net267),
    .B1(_3225_),
    .B2(net148),
    .C1(_3249_),
    .Y(_3250_));
 sky130_fd_sc_hd__a222oi_1 _7348_ (.A1(\count_instr[3] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[35] ),
    .C1(\count_cycle[35] ),
    .C2(net742),
    .Y(_3251_));
 sky130_fd_sc_hd__nand2_1 _7349_ (.A(\count_cycle[3] ),
    .B(net686),
    .Y(_3252_));
 sky130_fd_sc_hd__nand2_1 _7350_ (.A(_3251_),
    .B(_3252_),
    .Y(_3253_));
 sky130_fd_sc_hd__xor2_1 _7351_ (.A(_0067_),
    .B(_0364_),
    .X(_3254_));
 sky130_fd_sc_hd__a222oi_1 _7352_ (.A1(net708),
    .A2(net746),
    .B1(net749),
    .B2(_3253_),
    .C1(_3254_),
    .C2(net748),
    .Y(_3255_));
 sky130_fd_sc_hd__o21ai_0 _7353_ (.A1(_2876_),
    .A2(_3250_),
    .B1(_3255_),
    .Y(_0029_));
 sky130_fd_sc_hd__mux2i_1 _7354_ (.A0(net139),
    .A1(net156),
    .S(net721),
    .Y(_3256_));
 sky130_fd_sc_hd__nor2_1 _7355_ (.A(_3226_),
    .B(_3256_),
    .Y(_3257_));
 sky130_fd_sc_hd__a221oi_1 _7356_ (.A1(net160),
    .A2(net267),
    .B1(_3225_),
    .B2(net147),
    .C1(_3257_),
    .Y(_3258_));
 sky130_fd_sc_hd__a222oi_1 _7357_ (.A1(\count_instr[2] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[34] ),
    .C1(\count_cycle[34] ),
    .C2(net742),
    .Y(_3259_));
 sky130_fd_sc_hd__nand2_1 _7358_ (.A(\count_cycle[2] ),
    .B(net686),
    .Y(_3260_));
 sky130_fd_sc_hd__nand2_1 _7359_ (.A(_3259_),
    .B(_3260_),
    .Y(_3261_));
 sky130_fd_sc_hd__a222oi_1 _7360_ (.A1(net711),
    .A2(net746),
    .B1(net749),
    .B2(_3261_),
    .C1(_0068_),
    .C2(net748),
    .Y(_3262_));
 sky130_fd_sc_hd__o21ai_0 _7361_ (.A1(_2876_),
    .A2(_3258_),
    .B1(_3262_),
    .Y(_0026_));
 sky130_fd_sc_hd__mux2i_1 _7362_ (.A0(net169),
    .A1(net155),
    .S(net721),
    .Y(_3263_));
 sky130_fd_sc_hd__nor2_1 _7363_ (.A(_3226_),
    .B(_3263_),
    .Y(_3264_));
 sky130_fd_sc_hd__a221oi_1 _7364_ (.A1(net149),
    .A2(net267),
    .B1(_3225_),
    .B2(net146),
    .C1(_3264_),
    .Y(_3265_));
 sky130_fd_sc_hd__a222oi_1 _7365_ (.A1(\count_instr[1] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[33] ),
    .C1(\count_cycle[33] ),
    .C2(net742),
    .Y(_3266_));
 sky130_fd_sc_hd__nand2_1 _7366_ (.A(\count_cycle[1] ),
    .B(net686),
    .Y(_3267_));
 sky130_fd_sc_hd__nand2_1 _7367_ (.A(_3266_),
    .B(_3267_),
    .Y(_3268_));
 sky130_fd_sc_hd__a222oi_1 _7368_ (.A1(net319),
    .A2(net746),
    .B1(net749),
    .B2(_3268_),
    .C1(_0358_),
    .C2(net748),
    .Y(_3269_));
 sky130_fd_sc_hd__o21ai_0 _7369_ (.A1(_2876_),
    .A2(_3265_),
    .B1(_3269_),
    .Y(_0015_));
 sky130_fd_sc_hd__mux2i_1 _7370_ (.A0(net168),
    .A1(net154),
    .S(net721),
    .Y(_3270_));
 sky130_fd_sc_hd__nor2_1 _7371_ (.A(_3226_),
    .B(_3270_),
    .Y(_3271_));
 sky130_fd_sc_hd__a221oi_1 _7372_ (.A1(net138),
    .A2(net267),
    .B1(_3225_),
    .B2(net145),
    .C1(_3271_),
    .Y(_3272_));
 sky130_fd_sc_hd__a222oi_1 _7373_ (.A1(\count_instr[0] ),
    .A2(net741),
    .B1(net740),
    .B2(\count_instr[32] ),
    .C1(\count_cycle[32] ),
    .C2(net742),
    .Y(_3273_));
 sky130_fd_sc_hd__nand2_1 _7374_ (.A(\count_cycle[0] ),
    .B(net686),
    .Y(_3274_));
 sky130_fd_sc_hd__nand2_1 _7375_ (.A(_3273_),
    .B(_3274_),
    .Y(_3275_));
 sky130_fd_sc_hd__a222oi_1 _7376_ (.A1(net732),
    .A2(net747),
    .B1(net749),
    .B2(_3275_),
    .C1(\decoded_imm[0] ),
    .C2(net748),
    .Y(_3276_));
 sky130_fd_sc_hd__o21ai_0 _7377_ (.A1(_2876_),
    .A2(_3272_),
    .B1(_3276_),
    .Y(_0004_));
 sky130_fd_sc_hd__inv_1 _7378_ (.A(net346),
    .Y(_0341_));
 sky130_fd_sc_hd__inv_1 _7379_ (.A(\mem_state[1] ),
    .Y(_0499_));
 sky130_fd_sc_hd__inv_1 _7380_ (.A(net712),
    .Y(_0475_));
 sky130_fd_sc_hd__inv_1 _7381_ (.A(net329),
    .Y(_0269_));
 sky130_fd_sc_hd__inv_1 _7382_ (.A(net725),
    .Y(_0340_));
 sky130_fd_sc_hd__inv_1 _7383_ (.A(\mem_rdata_q[14] ),
    .Y(_3277_));
 sky130_fd_sc_hd__inv_2 _7384_ (.A(net698),
    .Y(_3278_));
 sky130_fd_sc_hd__nand2_1 _7385_ (.A(net143),
    .B(_3278_),
    .Y(_3279_));
 sky130_fd_sc_hd__o21ai_0 _7386_ (.A1(_3277_),
    .A2(_3278_),
    .B1(_3279_),
    .Y(\mem_rdata_latched[14] ));
 sky130_fd_sc_hd__nand2_1 _7387_ (.A(net141),
    .B(_3278_),
    .Y(_3280_));
 sky130_fd_sc_hd__nand2_1 _7389_ (.A(\mem_rdata_q[12] ),
    .B(net698),
    .Y(_3282_));
 sky130_fd_sc_hd__nand2_1 _7390_ (.A(_3280_),
    .B(_3282_),
    .Y(\mem_rdata_latched[12] ));
 sky130_fd_sc_hd__nand2_1 _7391_ (.A(net142),
    .B(_3278_),
    .Y(_3283_));
 sky130_fd_sc_hd__nand2_1 _7394_ (.A(\mem_rdata_q[13] ),
    .B(net698),
    .Y(_3286_));
 sky130_fd_sc_hd__nand2_1 _7395_ (.A(_3283_),
    .B(_3286_),
    .Y(\mem_rdata_latched[13] ));
 sky130_fd_sc_hd__nand2_1 _7399_ (.A(net161),
    .B(net677),
    .Y(_3289_));
 sky130_fd_sc_hd__nand2_1 _7402_ (.A(\mem_rdata_q[30] ),
    .B(net698),
    .Y(_3292_));
 sky130_fd_sc_hd__nand2_1 _7403_ (.A(_3289_),
    .B(_3292_),
    .Y(\mem_rdata_latched[30] ));
 sky130_fd_sc_hd__nand2_1 _7404_ (.A(net159),
    .B(net677),
    .Y(_3293_));
 sky130_fd_sc_hd__nand2_1 _7406_ (.A(\mem_rdata_q[29] ),
    .B(net698),
    .Y(_3295_));
 sky130_fd_sc_hd__nand2_1 _7407_ (.A(_3293_),
    .B(_3295_),
    .Y(\mem_rdata_latched[29] ));
 sky130_fd_sc_hd__nand2_1 _7408_ (.A(net158),
    .B(net677),
    .Y(_3296_));
 sky130_fd_sc_hd__nand2_1 _7409_ (.A(\mem_rdata_q[28] ),
    .B(net698),
    .Y(_3297_));
 sky130_fd_sc_hd__nand2_1 _7410_ (.A(_3296_),
    .B(_3297_),
    .Y(\mem_rdata_latched[28] ));
 sky130_fd_sc_hd__nand2_1 _7411_ (.A(net157),
    .B(net677),
    .Y(_3298_));
 sky130_fd_sc_hd__nand2_1 _7413_ (.A(net735),
    .B(net698),
    .Y(_3300_));
 sky130_fd_sc_hd__nand2_1 _7414_ (.A(_3298_),
    .B(_3300_),
    .Y(\mem_rdata_latched[27] ));
 sky130_fd_sc_hd__nand2_1 _7415_ (.A(net156),
    .B(net677),
    .Y(_3301_));
 sky130_fd_sc_hd__nand2_1 _7416_ (.A(\mem_rdata_q[26] ),
    .B(net698),
    .Y(_3302_));
 sky130_fd_sc_hd__nand2_1 _7417_ (.A(_3301_),
    .B(_3302_),
    .Y(\mem_rdata_latched[26] ));
 sky130_fd_sc_hd__nand2_1 _7418_ (.A(net155),
    .B(net677),
    .Y(_3303_));
 sky130_fd_sc_hd__nand2_1 _7419_ (.A(\mem_rdata_q[25] ),
    .B(net698),
    .Y(_3304_));
 sky130_fd_sc_hd__nand2_1 _7420_ (.A(_3303_),
    .B(_3304_),
    .Y(\mem_rdata_latched[25] ));
 sky130_fd_sc_hd__nand2_1 _7421_ (.A(net154),
    .B(net677),
    .Y(_3305_));
 sky130_fd_sc_hd__nand2_1 _7422_ (.A(\mem_rdata_q[24] ),
    .B(net698),
    .Y(_3306_));
 sky130_fd_sc_hd__nand2_1 _7423_ (.A(_3305_),
    .B(_3306_),
    .Y(\mem_rdata_latched[24] ));
 sky130_fd_sc_hd__nand2_1 _7424_ (.A(net153),
    .B(net677),
    .Y(_3307_));
 sky130_fd_sc_hd__nand2_1 _7425_ (.A(\mem_rdata_q[23] ),
    .B(net698),
    .Y(_3308_));
 sky130_fd_sc_hd__nand2_1 _7426_ (.A(_3307_),
    .B(_3308_),
    .Y(\mem_rdata_latched[23] ));
 sky130_fd_sc_hd__nand2_1 _7427_ (.A(net152),
    .B(net677),
    .Y(_3309_));
 sky130_fd_sc_hd__nand2_1 _7428_ (.A(\mem_rdata_q[22] ),
    .B(net698),
    .Y(_3310_));
 sky130_fd_sc_hd__nand2_1 _7429_ (.A(_3309_),
    .B(_3310_),
    .Y(\mem_rdata_latched[22] ));
 sky130_fd_sc_hd__nand2_1 _7430_ (.A(net151),
    .B(net677),
    .Y(_3311_));
 sky130_fd_sc_hd__nand2_1 _7431_ (.A(\mem_rdata_q[21] ),
    .B(net698),
    .Y(_3312_));
 sky130_fd_sc_hd__nand2_1 _7432_ (.A(_3311_),
    .B(_3312_),
    .Y(\mem_rdata_latched[21] ));
 sky130_fd_sc_hd__nand2_1 _7433_ (.A(net150),
    .B(net677),
    .Y(_3313_));
 sky130_fd_sc_hd__nand2_1 _7434_ (.A(\mem_rdata_q[20] ),
    .B(net698),
    .Y(_3314_));
 sky130_fd_sc_hd__nand2_1 _7435_ (.A(_3313_),
    .B(_3314_),
    .Y(\mem_rdata_latched[20] ));
 sky130_fd_sc_hd__nand2_1 _7436_ (.A(net148),
    .B(net677),
    .Y(_3315_));
 sky130_fd_sc_hd__nand2_1 _7437_ (.A(\mem_rdata_q[19] ),
    .B(net698),
    .Y(_3316_));
 sky130_fd_sc_hd__nand2_1 _7438_ (.A(_3315_),
    .B(_3316_),
    .Y(\mem_rdata_latched[19] ));
 sky130_fd_sc_hd__nand2_1 _7439_ (.A(net147),
    .B(net677),
    .Y(_3317_));
 sky130_fd_sc_hd__nand2_1 _7440_ (.A(\mem_rdata_q[18] ),
    .B(net698),
    .Y(_3318_));
 sky130_fd_sc_hd__nand2_1 _7441_ (.A(_3317_),
    .B(_3318_),
    .Y(\mem_rdata_latched[18] ));
 sky130_fd_sc_hd__nand2_1 _7442_ (.A(net146),
    .B(net677),
    .Y(_3319_));
 sky130_fd_sc_hd__nand2_1 _7443_ (.A(\mem_rdata_q[17] ),
    .B(net698),
    .Y(_3320_));
 sky130_fd_sc_hd__nand2_1 _7444_ (.A(_3319_),
    .B(_3320_),
    .Y(\mem_rdata_latched[17] ));
 sky130_fd_sc_hd__nand2_1 _7445_ (.A(net145),
    .B(net677),
    .Y(_3321_));
 sky130_fd_sc_hd__nand2_1 _7446_ (.A(\mem_rdata_q[16] ),
    .B(net698),
    .Y(_3322_));
 sky130_fd_sc_hd__nand2_1 _7447_ (.A(_3321_),
    .B(_3322_),
    .Y(\mem_rdata_latched[16] ));
 sky130_fd_sc_hd__nand2_1 _7448_ (.A(net144),
    .B(net677),
    .Y(_3323_));
 sky130_fd_sc_hd__nand2_1 _7449_ (.A(\mem_rdata_q[15] ),
    .B(net698),
    .Y(_3324_));
 sky130_fd_sc_hd__nand2_1 _7450_ (.A(_3323_),
    .B(_3324_),
    .Y(\mem_rdata_latched[15] ));
 sky130_fd_sc_hd__nand2_1 _7451_ (.A(net140),
    .B(net677),
    .Y(_3325_));
 sky130_fd_sc_hd__nand2_1 _7452_ (.A(\mem_rdata_q[11] ),
    .B(net698),
    .Y(_3326_));
 sky130_fd_sc_hd__nand2_1 _7453_ (.A(_3325_),
    .B(_3326_),
    .Y(\mem_rdata_latched[11] ));
 sky130_fd_sc_hd__nand2_1 _7454_ (.A(net139),
    .B(net677),
    .Y(_3327_));
 sky130_fd_sc_hd__nand2_1 _7455_ (.A(\mem_rdata_q[10] ),
    .B(net698),
    .Y(_3328_));
 sky130_fd_sc_hd__nand2_1 _7456_ (.A(_3327_),
    .B(_3328_),
    .Y(\mem_rdata_latched[10] ));
 sky130_fd_sc_hd__nand2_1 _7457_ (.A(net169),
    .B(net677),
    .Y(_3329_));
 sky130_fd_sc_hd__nand2_1 _7458_ (.A(\mem_rdata_q[9] ),
    .B(net698),
    .Y(_3330_));
 sky130_fd_sc_hd__nand2_1 _7459_ (.A(_3329_),
    .B(_3330_),
    .Y(\mem_rdata_latched[9] ));
 sky130_fd_sc_hd__nand2_1 _7460_ (.A(net168),
    .B(net677),
    .Y(_3331_));
 sky130_fd_sc_hd__nand2_1 _7461_ (.A(\mem_rdata_q[8] ),
    .B(net698),
    .Y(_3332_));
 sky130_fd_sc_hd__nand2_1 _7462_ (.A(_3331_),
    .B(_3332_),
    .Y(\mem_rdata_latched[8] ));
 sky130_fd_sc_hd__nand2_1 _7463_ (.A(net167),
    .B(net677),
    .Y(_3333_));
 sky130_fd_sc_hd__nand2_1 _7464_ (.A(\mem_rdata_q[7] ),
    .B(net698),
    .Y(_3334_));
 sky130_fd_sc_hd__nand2_1 _7465_ (.A(_3333_),
    .B(_3334_),
    .Y(\mem_rdata_latched[7] ));
 sky130_fd_sc_hd__nand2_1 _7468_ (.A(\reg_out[30] ),
    .B(_0886_),
    .Y(_3337_));
 sky130_fd_sc_hd__nor2_1 _7470_ (.A(net331),
    .B(net695),
    .Y(_3339_));
 sky130_fd_sc_hd__a31oi_1 _7471_ (.A1(_0957_),
    .A2(net695),
    .A3(_3337_),
    .B1(_3339_),
    .Y(net224));
 sky130_fd_sc_hd__nand2_1 _7472_ (.A(\reg_out[29] ),
    .B(_0886_),
    .Y(_3340_));
 sky130_fd_sc_hd__nor2_1 _7474_ (.A(net329),
    .B(net695),
    .Y(_3342_));
 sky130_fd_sc_hd__a31oi_1 _7475_ (.A1(_0954_),
    .A2(net695),
    .A3(_3340_),
    .B1(_3342_),
    .Y(net222));
 sky130_fd_sc_hd__nand2_1 _7476_ (.A(\reg_out[28] ),
    .B(_0886_),
    .Y(_3343_));
 sky130_fd_sc_hd__nor2_1 _7477_ (.A(net328),
    .B(net695),
    .Y(_3344_));
 sky130_fd_sc_hd__a31oi_1 _7478_ (.A1(_0951_),
    .A2(net695),
    .A3(_3343_),
    .B1(_3344_),
    .Y(net221));
 sky130_fd_sc_hd__nand2_1 _7479_ (.A(\reg_out[27] ),
    .B(_0886_),
    .Y(_3345_));
 sky130_fd_sc_hd__nor2_1 _7480_ (.A(net327),
    .B(net695),
    .Y(_3346_));
 sky130_fd_sc_hd__a31oi_1 _7481_ (.A1(_0949_),
    .A2(net695),
    .A3(_3345_),
    .B1(_3346_),
    .Y(net220));
 sky130_fd_sc_hd__nand2_1 _7483_ (.A(\reg_next_pc[26] ),
    .B(net697),
    .Y(_3348_));
 sky130_fd_sc_hd__nand2_1 _7485_ (.A(\reg_out[26] ),
    .B(_0886_),
    .Y(_3350_));
 sky130_fd_sc_hd__nor2_1 _7486_ (.A(net326),
    .B(net695),
    .Y(_3351_));
 sky130_fd_sc_hd__a31oi_1 _7487_ (.A1(_3348_),
    .A2(net695),
    .A3(_3350_),
    .B1(_3351_),
    .Y(net219));
 sky130_fd_sc_hd__nand2_1 _7489_ (.A(\reg_out[25] ),
    .B(_0886_),
    .Y(_3353_));
 sky130_fd_sc_hd__nor2_1 _7490_ (.A(net325),
    .B(net695),
    .Y(_3354_));
 sky130_fd_sc_hd__a31oi_1 _7491_ (.A1(_0945_),
    .A2(net695),
    .A3(_3353_),
    .B1(_3354_),
    .Y(net218));
 sky130_fd_sc_hd__nand2_1 _7494_ (.A(\reg_out[24] ),
    .B(_0886_),
    .Y(_3357_));
 sky130_fd_sc_hd__nor2_1 _7496_ (.A(net324),
    .B(net695),
    .Y(_3359_));
 sky130_fd_sc_hd__a31oi_1 _7497_ (.A1(_0942_),
    .A2(net695),
    .A3(_3357_),
    .B1(_3359_),
    .Y(net217));
 sky130_fd_sc_hd__nand2_1 _7498_ (.A(\reg_out[23] ),
    .B(_0886_),
    .Y(_3360_));
 sky130_fd_sc_hd__nor2_1 _7499_ (.A(net323),
    .B(net695),
    .Y(_3361_));
 sky130_fd_sc_hd__a31oi_1 _7500_ (.A1(_0940_),
    .A2(net695),
    .A3(_3360_),
    .B1(_3361_),
    .Y(net216));
 sky130_fd_sc_hd__nand2_1 _7501_ (.A(\reg_next_pc[22] ),
    .B(net697),
    .Y(_3362_));
 sky130_fd_sc_hd__nand2_1 _7502_ (.A(\reg_out[22] ),
    .B(_0886_),
    .Y(_3363_));
 sky130_fd_sc_hd__nor2_1 _7503_ (.A(net322),
    .B(net695),
    .Y(_3364_));
 sky130_fd_sc_hd__a31oi_1 _7504_ (.A1(_3362_),
    .A2(net695),
    .A3(_3363_),
    .B1(_3364_),
    .Y(net215));
 sky130_fd_sc_hd__nand2_1 _7505_ (.A(\reg_next_pc[21] ),
    .B(net697),
    .Y(_3365_));
 sky130_fd_sc_hd__nand2_1 _7506_ (.A(\reg_out[21] ),
    .B(_0886_),
    .Y(_3366_));
 sky130_fd_sc_hd__nor2_1 _7507_ (.A(net321),
    .B(net695),
    .Y(_3367_));
 sky130_fd_sc_hd__a31oi_1 _7508_ (.A1(_3365_),
    .A2(net695),
    .A3(_3366_),
    .B1(_3367_),
    .Y(net214));
 sky130_fd_sc_hd__nand2_1 _7509_ (.A(\reg_next_pc[20] ),
    .B(net697),
    .Y(_3368_));
 sky130_fd_sc_hd__nand2_1 _7510_ (.A(\reg_out[20] ),
    .B(_0886_),
    .Y(_3369_));
 sky130_fd_sc_hd__nor2_1 _7511_ (.A(net720),
    .B(net695),
    .Y(_3370_));
 sky130_fd_sc_hd__a31oi_1 _7512_ (.A1(_3368_),
    .A2(net695),
    .A3(_3369_),
    .B1(_3370_),
    .Y(net213));
 sky130_fd_sc_hd__nand2_1 _7513_ (.A(\reg_next_pc[19] ),
    .B(net697),
    .Y(_3371_));
 sky130_fd_sc_hd__nand2_1 _7514_ (.A(\reg_out[19] ),
    .B(_0886_),
    .Y(_3372_));
 sky130_fd_sc_hd__nor2_1 _7515_ (.A(net318),
    .B(net695),
    .Y(_3373_));
 sky130_fd_sc_hd__a31oi_1 _7516_ (.A1(_3371_),
    .A2(net695),
    .A3(_3372_),
    .B1(_3373_),
    .Y(net212));
 sky130_fd_sc_hd__nand2_1 _7517_ (.A(\reg_out[18] ),
    .B(_0886_),
    .Y(_3374_));
 sky130_fd_sc_hd__nor2_1 _7518_ (.A(net317),
    .B(net695),
    .Y(_3375_));
 sky130_fd_sc_hd__a31oi_1 _7519_ (.A1(_0929_),
    .A2(net695),
    .A3(_3374_),
    .B1(_3375_),
    .Y(net211));
 sky130_fd_sc_hd__nand2_1 _7520_ (.A(\reg_out[17] ),
    .B(_0886_),
    .Y(_3376_));
 sky130_fd_sc_hd__nor2_1 _7521_ (.A(net316),
    .B(net695),
    .Y(_3377_));
 sky130_fd_sc_hd__a31oi_1 _7522_ (.A1(_0925_),
    .A2(net695),
    .A3(_3376_),
    .B1(_3377_),
    .Y(net210));
 sky130_fd_sc_hd__nand2_1 _7523_ (.A(\reg_out[16] ),
    .B(_0886_),
    .Y(_3378_));
 sky130_fd_sc_hd__nor2_1 _7524_ (.A(net315),
    .B(net695),
    .Y(_3379_));
 sky130_fd_sc_hd__a31oi_1 _7525_ (.A1(_0922_),
    .A2(net695),
    .A3(_3378_),
    .B1(_3379_),
    .Y(net209));
 sky130_fd_sc_hd__nand2_1 _7526_ (.A(\reg_out[15] ),
    .B(_0886_),
    .Y(_3380_));
 sky130_fd_sc_hd__nor2_1 _7527_ (.A(net314),
    .B(net695),
    .Y(_3381_));
 sky130_fd_sc_hd__a31oi_1 _7528_ (.A1(_0919_),
    .A2(net695),
    .A3(_3380_),
    .B1(_3381_),
    .Y(net208));
 sky130_fd_sc_hd__nand2_1 _7529_ (.A(\reg_out[14] ),
    .B(_0886_),
    .Y(_3382_));
 sky130_fd_sc_hd__nor2_1 _7530_ (.A(net313),
    .B(net695),
    .Y(_3383_));
 sky130_fd_sc_hd__a31oi_1 _7531_ (.A1(_0915_),
    .A2(net695),
    .A3(_3382_),
    .B1(_3383_),
    .Y(net207));
 sky130_fd_sc_hd__nand2_1 _7532_ (.A(\reg_next_pc[13] ),
    .B(net697),
    .Y(_3384_));
 sky130_fd_sc_hd__nand2_1 _7533_ (.A(\reg_out[13] ),
    .B(_0886_),
    .Y(_3385_));
 sky130_fd_sc_hd__nor2_1 _7534_ (.A(net312),
    .B(net695),
    .Y(_3386_));
 sky130_fd_sc_hd__a31oi_1 _7535_ (.A1(_3384_),
    .A2(net695),
    .A3(_3385_),
    .B1(_3386_),
    .Y(net206));
 sky130_fd_sc_hd__nand2_1 _7536_ (.A(\reg_next_pc[12] ),
    .B(net697),
    .Y(_3387_));
 sky130_fd_sc_hd__nand2_1 _7537_ (.A(\reg_out[12] ),
    .B(_0886_),
    .Y(_3388_));
 sky130_fd_sc_hd__nor2_1 _7538_ (.A(net311),
    .B(net695),
    .Y(_3389_));
 sky130_fd_sc_hd__a31oi_1 _7539_ (.A1(_3387_),
    .A2(net695),
    .A3(_3388_),
    .B1(_3389_),
    .Y(net205));
 sky130_fd_sc_hd__nand2_1 _7540_ (.A(\reg_next_pc[11] ),
    .B(net697),
    .Y(_3390_));
 sky130_fd_sc_hd__nand2_1 _7541_ (.A(\reg_out[11] ),
    .B(_0886_),
    .Y(_3391_));
 sky130_fd_sc_hd__nor2_1 _7542_ (.A(net310),
    .B(net695),
    .Y(_3392_));
 sky130_fd_sc_hd__a31oi_1 _7543_ (.A1(_3390_),
    .A2(net695),
    .A3(_3391_),
    .B1(_3392_),
    .Y(net204));
 sky130_fd_sc_hd__nand2_1 _7544_ (.A(\reg_next_pc[10] ),
    .B(net697),
    .Y(_3393_));
 sky130_fd_sc_hd__nand2_1 _7545_ (.A(\reg_out[10] ),
    .B(_0886_),
    .Y(_3394_));
 sky130_fd_sc_hd__nor2_1 _7546_ (.A(net309),
    .B(net695),
    .Y(_3395_));
 sky130_fd_sc_hd__a31oi_1 _7547_ (.A1(_3393_),
    .A2(net695),
    .A3(_3394_),
    .B1(_3395_),
    .Y(net203));
 sky130_fd_sc_hd__nand2_1 _7548_ (.A(\reg_next_pc[9] ),
    .B(net697),
    .Y(_3396_));
 sky130_fd_sc_hd__nand2_1 _7549_ (.A(\reg_out[9] ),
    .B(_0886_),
    .Y(_3397_));
 sky130_fd_sc_hd__nor2_1 _7550_ (.A(net339),
    .B(net695),
    .Y(_3398_));
 sky130_fd_sc_hd__a31oi_1 _7551_ (.A1(_3396_),
    .A2(net695),
    .A3(_3397_),
    .B1(_3398_),
    .Y(net232));
 sky130_fd_sc_hd__nand2_1 _7552_ (.A(\reg_next_pc[8] ),
    .B(net697),
    .Y(_3399_));
 sky130_fd_sc_hd__nand2_1 _7553_ (.A(\reg_out[8] ),
    .B(_0886_),
    .Y(_3400_));
 sky130_fd_sc_hd__nor2_1 _7554_ (.A(net338),
    .B(net695),
    .Y(_3401_));
 sky130_fd_sc_hd__a31oi_1 _7555_ (.A1(_3399_),
    .A2(net695),
    .A3(_3400_),
    .B1(_3401_),
    .Y(net231));
 sky130_fd_sc_hd__nand2_1 _7556_ (.A(\reg_next_pc[7] ),
    .B(net697),
    .Y(_3402_));
 sky130_fd_sc_hd__nand2_1 _7557_ (.A(\reg_out[7] ),
    .B(_0886_),
    .Y(_3403_));
 sky130_fd_sc_hd__nor2_1 _7558_ (.A(net337),
    .B(net695),
    .Y(_3404_));
 sky130_fd_sc_hd__a31oi_1 _7559_ (.A1(_3402_),
    .A2(net695),
    .A3(_3403_),
    .B1(_3404_),
    .Y(net230));
 sky130_fd_sc_hd__nand2_1 _7560_ (.A(\reg_next_pc[6] ),
    .B(net697),
    .Y(_3405_));
 sky130_fd_sc_hd__nand2_1 _7561_ (.A(\reg_out[6] ),
    .B(_0886_),
    .Y(_3406_));
 sky130_fd_sc_hd__nor2_1 _7562_ (.A(net336),
    .B(net695),
    .Y(_3407_));
 sky130_fd_sc_hd__a31oi_1 _7563_ (.A1(_3405_),
    .A2(net695),
    .A3(_3406_),
    .B1(_3407_),
    .Y(net229));
 sky130_fd_sc_hd__nand2_1 _7564_ (.A(\reg_next_pc[5] ),
    .B(net697),
    .Y(_3408_));
 sky130_fd_sc_hd__nand2_1 _7565_ (.A(\reg_out[5] ),
    .B(_0886_),
    .Y(_3409_));
 sky130_fd_sc_hd__nor2_1 _7566_ (.A(net335),
    .B(net695),
    .Y(_3410_));
 sky130_fd_sc_hd__a31oi_1 _7567_ (.A1(_3408_),
    .A2(net695),
    .A3(_3409_),
    .B1(_3410_),
    .Y(net228));
 sky130_fd_sc_hd__nand2_1 _7568_ (.A(\reg_next_pc[4] ),
    .B(net697),
    .Y(_3411_));
 sky130_fd_sc_hd__nand2_1 _7569_ (.A(\reg_out[4] ),
    .B(_0886_),
    .Y(_3412_));
 sky130_fd_sc_hd__nor2_1 _7570_ (.A(net334),
    .B(net695),
    .Y(_3413_));
 sky130_fd_sc_hd__a31oi_1 _7571_ (.A1(_3411_),
    .A2(net695),
    .A3(_3412_),
    .B1(_3413_),
    .Y(net227));
 sky130_fd_sc_hd__nand2_1 _7572_ (.A(\reg_next_pc[3] ),
    .B(net697),
    .Y(_3414_));
 sky130_fd_sc_hd__nand2_1 _7573_ (.A(\reg_out[3] ),
    .B(_0886_),
    .Y(_3415_));
 sky130_fd_sc_hd__nor2_1 _7574_ (.A(net333),
    .B(net695),
    .Y(_3416_));
 sky130_fd_sc_hd__a31oi_1 _7575_ (.A1(_3414_),
    .A2(net695),
    .A3(_3415_),
    .B1(_3416_),
    .Y(net226));
 sky130_fd_sc_hd__nand2_1 _7576_ (.A(\reg_next_pc[2] ),
    .B(net697),
    .Y(_3417_));
 sky130_fd_sc_hd__nand2_1 _7577_ (.A(\reg_out[2] ),
    .B(_0886_),
    .Y(_3418_));
 sky130_fd_sc_hd__nor2_1 _7578_ (.A(net330),
    .B(net695),
    .Y(_3419_));
 sky130_fd_sc_hd__a31oi_1 _7579_ (.A1(_3417_),
    .A2(net695),
    .A3(_3418_),
    .B1(_3419_),
    .Y(net223));
 sky130_fd_sc_hd__inv_1 _7580_ (.A(net343),
    .Y(_0142_));
 sky130_fd_sc_hd__inv_1 _7581_ (.A(net363),
    .Y(_0412_));
 sky130_fd_sc_hd__inv_1 _7582_ (.A(net722),
    .Y(_0309_));
 sky130_fd_sc_hd__inv_1 _7583_ (.A(net710),
    .Y(_0293_));
 sky130_fd_sc_hd__inv_1 _7584_ (.A(net700),
    .Y(_0481_));
 sky130_fd_sc_hd__nand2b_1 _7585_ (.A_N(net364),
    .B(net776),
    .Y(_3420_));
 sky130_fd_sc_hd__inv_1 _7586_ (.A(_3420_),
    .Y(_0528_));
 sky130_fd_sc_hd__inv_1 _7587_ (.A(net345),
    .Y(_0139_));
 sky130_fd_sc_hd__or2_2 _7588_ (.A(instr_lui),
    .B(instr_auipc),
    .X(_3421_));
 sky130_fd_sc_hd__or3_1 _7590_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .B(is_sb_sh_sw),
    .C(_1010_),
    .X(_3423_));
 sky130_fd_sc_hd__and2_1 _7592_ (.A(\mem_rdata_q[31] ),
    .B(_3423_),
    .X(_3425_));
 sky130_fd_sc_hd__nand2_1 _7595_ (.A(net745),
    .B(net743),
    .Y(_3428_));
 sky130_fd_sc_hd__nand2b_1 _7596_ (.A_N(_3425_),
    .B(_3428_),
    .Y(_3429_));
 sky130_fd_sc_hd__a21o_1 _7598_ (.A1(\mem_rdata_q[30] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0539_));
 sky130_fd_sc_hd__a21o_1 _7599_ (.A1(\mem_rdata_q[29] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0540_));
 sky130_fd_sc_hd__a21o_1 _7600_ (.A1(\mem_rdata_q[28] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0541_));
 sky130_fd_sc_hd__a21o_1 _7601_ (.A1(net735),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0542_));
 sky130_fd_sc_hd__a21o_1 _7602_ (.A1(\mem_rdata_q[26] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0543_));
 sky130_fd_sc_hd__a21o_1 _7603_ (.A1(\mem_rdata_q[25] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0544_));
 sky130_fd_sc_hd__a21o_1 _7604_ (.A1(\mem_rdata_q[24] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0545_));
 sky130_fd_sc_hd__a21o_1 _7605_ (.A1(\mem_rdata_q[23] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0546_));
 sky130_fd_sc_hd__a21o_1 _7606_ (.A1(\mem_rdata_q[22] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0547_));
 sky130_fd_sc_hd__a21o_1 _7607_ (.A1(\mem_rdata_q[21] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0548_));
 sky130_fd_sc_hd__a21o_1 _7609_ (.A1(\mem_rdata_q[20] ),
    .A2(_3421_),
    .B1(_3429_),
    .X(_0549_));
 sky130_fd_sc_hd__a221o_1 _7612_ (.A1(net743),
    .A2(\decoded_imm_j[19] ),
    .B1(\mem_rdata_q[19] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0550_));
 sky130_fd_sc_hd__a221o_1 _7613_ (.A1(net743),
    .A2(\decoded_imm_j[18] ),
    .B1(\mem_rdata_q[18] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0551_));
 sky130_fd_sc_hd__a221o_1 _7615_ (.A1(net743),
    .A2(\decoded_imm_j[17] ),
    .B1(\mem_rdata_q[17] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0552_));
 sky130_fd_sc_hd__a221o_1 _7616_ (.A1(net743),
    .A2(\decoded_imm_j[16] ),
    .B1(\mem_rdata_q[16] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0553_));
 sky130_fd_sc_hd__a221o_1 _7617_ (.A1(net743),
    .A2(\decoded_imm_j[15] ),
    .B1(\mem_rdata_q[15] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0554_));
 sky130_fd_sc_hd__a221o_1 _7618_ (.A1(net743),
    .A2(\decoded_imm_j[14] ),
    .B1(\mem_rdata_q[14] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0555_));
 sky130_fd_sc_hd__a221o_1 _7619_ (.A1(net743),
    .A2(\decoded_imm_j[13] ),
    .B1(\mem_rdata_q[13] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0556_));
 sky130_fd_sc_hd__a221o_1 _7620_ (.A1(net743),
    .A2(\decoded_imm_j[12] ),
    .B1(\mem_rdata_q[12] ),
    .B2(_3421_),
    .C1(_3425_),
    .X(_0557_));
 sky130_fd_sc_hd__a22oi_1 _7623_ (.A1(net743),
    .A2(\decoded_imm_j[11] ),
    .B1(\mem_rdata_q[7] ),
    .B2(is_beq_bne_blt_bge_bltu_bgeu),
    .Y(_3437_));
 sky130_fd_sc_hd__o21ai_0 _7624_ (.A1(is_sb_sh_sw),
    .A2(_1010_),
    .B1(\mem_rdata_q[31] ),
    .Y(_3438_));
 sky130_fd_sc_hd__nand2_1 _7625_ (.A(_3437_),
    .B(_3438_),
    .Y(_0558_));
 sky130_fd_sc_hd__a22o_1 _7626_ (.A1(net743),
    .A2(\decoded_imm_j[10] ),
    .B1(_3423_),
    .B2(\mem_rdata_q[30] ),
    .X(_0559_));
 sky130_fd_sc_hd__a22o_1 _7627_ (.A1(net743),
    .A2(\decoded_imm_j[9] ),
    .B1(_3423_),
    .B2(\mem_rdata_q[29] ),
    .X(_0560_));
 sky130_fd_sc_hd__a22o_1 _7628_ (.A1(net743),
    .A2(\decoded_imm_j[8] ),
    .B1(_3423_),
    .B2(\mem_rdata_q[28] ),
    .X(_0561_));
 sky130_fd_sc_hd__a22o_1 _7629_ (.A1(net743),
    .A2(\decoded_imm_j[7] ),
    .B1(_3423_),
    .B2(net735),
    .X(_0562_));
 sky130_fd_sc_hd__a22o_1 _7630_ (.A1(net743),
    .A2(\decoded_imm_j[6] ),
    .B1(_3423_),
    .B2(\mem_rdata_q[26] ),
    .X(_0563_));
 sky130_fd_sc_hd__a22o_1 _7631_ (.A1(net743),
    .A2(\decoded_imm_j[5] ),
    .B1(_3423_),
    .B2(\mem_rdata_q[25] ),
    .X(_0564_));
 sky130_fd_sc_hd__inv_1 _7632_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .Y(_3439_));
 sky130_fd_sc_hd__inv_1 _7633_ (.A(is_sb_sh_sw),
    .Y(_3440_));
 sky130_fd_sc_hd__nand2_1 _7634_ (.A(_3439_),
    .B(_3440_),
    .Y(_3441_));
 sky130_fd_sc_hd__a222oi_1 _7635_ (.A1(net743),
    .A2(\decoded_imm_j[4] ),
    .B1(\mem_rdata_q[11] ),
    .B2(_3441_),
    .C1(_1010_),
    .C2(\mem_rdata_q[24] ),
    .Y(_3442_));
 sky130_fd_sc_hd__inv_1 _7636_ (.A(_3442_),
    .Y(_0565_));
 sky130_fd_sc_hd__a222oi_1 _7637_ (.A1(net743),
    .A2(\decoded_imm_j[3] ),
    .B1(\mem_rdata_q[10] ),
    .B2(_3441_),
    .C1(_1010_),
    .C2(\mem_rdata_q[23] ),
    .Y(_3443_));
 sky130_fd_sc_hd__inv_1 _7638_ (.A(_3443_),
    .Y(_0566_));
 sky130_fd_sc_hd__a222oi_1 _7639_ (.A1(net743),
    .A2(\decoded_imm_j[2] ),
    .B1(\mem_rdata_q[9] ),
    .B2(_3441_),
    .C1(_1010_),
    .C2(\mem_rdata_q[22] ),
    .Y(_3444_));
 sky130_fd_sc_hd__inv_1 _7640_ (.A(_3444_),
    .Y(_0567_));
 sky130_fd_sc_hd__a222oi_1 _7641_ (.A1(net743),
    .A2(\decoded_imm_j[1] ),
    .B1(\mem_rdata_q[8] ),
    .B2(_3441_),
    .C1(_1010_),
    .C2(\mem_rdata_q[21] ),
    .Y(_3445_));
 sky130_fd_sc_hd__inv_1 _7642_ (.A(_3445_),
    .Y(_0568_));
 sky130_fd_sc_hd__inv_1 _7645_ (.A(\count_instr[60] ),
    .Y(_3448_));
 sky130_fd_sc_hd__and3_1 _7646_ (.A(\count_instr[53] ),
    .B(\count_instr[54] ),
    .C(\count_instr[55] ),
    .X(_3449_));
 sky130_fd_sc_hd__and3_1 _7647_ (.A(\count_instr[56] ),
    .B(\count_instr[57] ),
    .C(_3449_),
    .X(_3450_));
 sky130_fd_sc_hd__nand3_1 _7648_ (.A(\count_instr[58] ),
    .B(\count_instr[59] ),
    .C(_3450_),
    .Y(_3451_));
 sky130_fd_sc_hd__nor2_1 _7649_ (.A(_3448_),
    .B(_3451_),
    .Y(_3452_));
 sky130_fd_sc_hd__and3_1 _7650_ (.A(\count_instr[33] ),
    .B(\count_instr[34] ),
    .C(\count_instr[35] ),
    .X(_3453_));
 sky130_fd_sc_hd__nand3_1 _7651_ (.A(\count_instr[36] ),
    .B(\count_instr[37] ),
    .C(_3453_),
    .Y(_3454_));
 sky130_fd_sc_hd__and3_1 _7652_ (.A(\count_instr[25] ),
    .B(\count_instr[26] ),
    .C(\count_instr[27] ),
    .X(_3455_));
 sky130_fd_sc_hd__and3_1 _7653_ (.A(\count_instr[28] ),
    .B(\count_instr[29] ),
    .C(_3455_),
    .X(_3456_));
 sky130_fd_sc_hd__nand4_1 _7654_ (.A(\count_instr[30] ),
    .B(\count_instr[31] ),
    .C(\count_instr[32] ),
    .D(_3456_),
    .Y(_3457_));
 sky130_fd_sc_hd__nand3_1 _7655_ (.A(\count_instr[22] ),
    .B(\count_instr[23] ),
    .C(\count_instr[24] ),
    .Y(_3458_));
 sky130_fd_sc_hd__and4_1 _7656_ (.A(\count_instr[10] ),
    .B(\count_instr[11] ),
    .C(\count_instr[12] ),
    .D(\count_instr[13] ),
    .X(_3459_));
 sky130_fd_sc_hd__nand4_2 _7657_ (.A(\count_instr[14] ),
    .B(\count_instr[15] ),
    .C(\count_instr[16] ),
    .D(_3459_),
    .Y(_3460_));
 sky130_fd_sc_hd__and3_1 _7658_ (.A(\count_instr[17] ),
    .B(\count_instr[18] ),
    .C(\count_instr[19] ),
    .X(_3461_));
 sky130_fd_sc_hd__nand3_1 _7659_ (.A(\count_instr[20] ),
    .B(\count_instr[21] ),
    .C(_3461_),
    .Y(_3462_));
 sky130_fd_sc_hd__and3_1 _7660_ (.A(\count_instr[2] ),
    .B(\count_instr[3] ),
    .C(\count_instr[4] ),
    .X(_3463_));
 sky130_fd_sc_hd__and3_1 _7662_ (.A(\cpu_state[1] ),
    .B(_0359_),
    .C(decoder_trigger),
    .X(_3465_));
 sky130_fd_sc_hd__and2_1 _7663_ (.A(_3463_),
    .B(_3465_),
    .X(_3466_));
 sky130_fd_sc_hd__and4_1 _7664_ (.A(\count_instr[5] ),
    .B(\count_instr[6] ),
    .C(\count_instr[7] ),
    .D(\count_instr[8] ),
    .X(_3467_));
 sky130_fd_sc_hd__nand3_1 _7665_ (.A(\count_instr[9] ),
    .B(_3466_),
    .C(_3467_),
    .Y(_3468_));
 sky130_fd_sc_hd__or4_1 _7666_ (.A(_3458_),
    .B(_3460_),
    .C(_3462_),
    .D(_3468_),
    .X(_3469_));
 sky130_fd_sc_hd__or3_1 _7667_ (.A(_3454_),
    .B(_3457_),
    .C(_3469_),
    .X(_3470_));
 sky130_fd_sc_hd__inv_1 _7669_ (.A(\count_instr[46] ),
    .Y(_3472_));
 sky130_fd_sc_hd__and4_1 _7670_ (.A(\count_instr[38] ),
    .B(\count_instr[39] ),
    .C(\count_instr[40] ),
    .D(\count_instr[41] ),
    .X(_3473_));
 sky130_fd_sc_hd__and3_1 _7671_ (.A(\count_instr[42] ),
    .B(\count_instr[43] ),
    .C(_3473_),
    .X(_3474_));
 sky130_fd_sc_hd__nand3_1 _7672_ (.A(\count_instr[44] ),
    .B(\count_instr[45] ),
    .C(_3474_),
    .Y(_3475_));
 sky130_fd_sc_hd__nor2_1 _7673_ (.A(_3472_),
    .B(_3475_),
    .Y(_3476_));
 sky130_fd_sc_hd__and4_1 _7674_ (.A(\count_instr[47] ),
    .B(\count_instr[48] ),
    .C(\count_instr[49] ),
    .D(_3476_),
    .X(_3477_));
 sky130_fd_sc_hd__nand4_1 _7675_ (.A(\count_instr[50] ),
    .B(\count_instr[51] ),
    .C(\count_instr[52] ),
    .D(_3477_),
    .Y(_3478_));
 sky130_fd_sc_hd__nor2_1 _7676_ (.A(_3470_),
    .B(_3478_),
    .Y(_3479_));
 sky130_fd_sc_hd__nand3_1 _7677_ (.A(\count_instr[61] ),
    .B(_3452_),
    .C(_3479_),
    .Y(_3480_));
 sky130_fd_sc_hd__xnor2_1 _7678_ (.A(\count_instr[62] ),
    .B(_3480_),
    .Y(_3481_));
 sky130_fd_sc_hd__and2_1 _7679_ (.A(net775),
    .B(_3481_),
    .X(_0569_));
 sky130_fd_sc_hd__nand2_1 _7682_ (.A(\count_instr[9] ),
    .B(_3467_),
    .Y(_3484_));
 sky130_fd_sc_hd__inv_2 _7683_ (.A(net750),
    .Y(_3485_));
 sky130_fd_sc_hd__nor2_1 _7684_ (.A(_3485_),
    .B(_0864_),
    .Y(_3486_));
 sky130_fd_sc_hd__nand4_1 _7685_ (.A(\count_instr[0] ),
    .B(\count_instr[1] ),
    .C(_3463_),
    .D(_3486_),
    .Y(_3487_));
 sky130_fd_sc_hd__nor4_1 _7686_ (.A(_3460_),
    .B(_3462_),
    .C(_3484_),
    .D(_3487_),
    .Y(_3488_));
 sky130_fd_sc_hd__and2b_1 _7687_ (.A_N(_3458_),
    .B(_3488_),
    .X(_3489_));
 sky130_fd_sc_hd__nand2b_1 _7688_ (.A_N(_3457_),
    .B(_3489_),
    .Y(_3490_));
 sky130_fd_sc_hd__or3_1 _7689_ (.A(_3454_),
    .B(_3478_),
    .C(_3490_),
    .X(_3491_));
 sky130_fd_sc_hd__nor3_1 _7691_ (.A(_3448_),
    .B(_3451_),
    .C(_3491_),
    .Y(_3493_));
 sky130_fd_sc_hd__xor2_1 _7692_ (.A(\count_instr[61] ),
    .B(_3493_),
    .X(_3494_));
 sky130_fd_sc_hd__and2_1 _7693_ (.A(net775),
    .B(_3494_),
    .X(_0570_));
 sky130_fd_sc_hd__or2_2 _7694_ (.A(_3470_),
    .B(_3478_),
    .X(_3495_));
 sky130_fd_sc_hd__o21ai_0 _7695_ (.A1(_3451_),
    .A2(_3495_),
    .B1(\count_instr[60] ),
    .Y(_3496_));
 sky130_fd_sc_hd__or3_1 _7696_ (.A(\count_instr[60] ),
    .B(_3451_),
    .C(_3495_),
    .X(_3497_));
 sky130_fd_sc_hd__a21boi_1 _7699_ (.A1(_3496_),
    .A2(_3497_),
    .B1_N(net775),
    .Y(_0571_));
 sky130_fd_sc_hd__nand2_1 _7700_ (.A(\count_instr[58] ),
    .B(_3450_),
    .Y(_3500_));
 sky130_fd_sc_hd__o21ai_0 _7701_ (.A1(_3500_),
    .A2(_3491_),
    .B1(\count_instr[59] ),
    .Y(_3501_));
 sky130_fd_sc_hd__or3_1 _7702_ (.A(\count_instr[59] ),
    .B(_3500_),
    .C(_3491_),
    .X(_3502_));
 sky130_fd_sc_hd__a21boi_0 _7703_ (.A1(_3501_),
    .A2(_3502_),
    .B1_N(net775),
    .Y(_0572_));
 sky130_fd_sc_hd__nand2_1 _7704_ (.A(_3450_),
    .B(_3479_),
    .Y(_3503_));
 sky130_fd_sc_hd__xnor2_1 _7705_ (.A(\count_instr[58] ),
    .B(_3503_),
    .Y(_3504_));
 sky130_fd_sc_hd__and2_1 _7706_ (.A(net775),
    .B(_3504_),
    .X(_0573_));
 sky130_fd_sc_hd__nand2_1 _7707_ (.A(\count_instr[56] ),
    .B(_3449_),
    .Y(_3505_));
 sky130_fd_sc_hd__o21ai_0 _7708_ (.A1(_3505_),
    .A2(_3491_),
    .B1(\count_instr[57] ),
    .Y(_3506_));
 sky130_fd_sc_hd__or3_1 _7709_ (.A(\count_instr[57] ),
    .B(_3505_),
    .C(_3491_),
    .X(_3507_));
 sky130_fd_sc_hd__a21boi_0 _7711_ (.A1(_3506_),
    .A2(_3507_),
    .B1_N(net775),
    .Y(_0574_));
 sky130_fd_sc_hd__nand2_1 _7713_ (.A(_3449_),
    .B(_3479_),
    .Y(_3510_));
 sky130_fd_sc_hd__xnor2_1 _7714_ (.A(\count_instr[56] ),
    .B(_3510_),
    .Y(_3511_));
 sky130_fd_sc_hd__and2_1 _7715_ (.A(net775),
    .B(_3511_),
    .X(_0575_));
 sky130_fd_sc_hd__nand2_1 _7716_ (.A(\count_instr[53] ),
    .B(\count_instr[54] ),
    .Y(_3512_));
 sky130_fd_sc_hd__o21ai_0 _7717_ (.A1(_3512_),
    .A2(_3491_),
    .B1(\count_instr[55] ),
    .Y(_3513_));
 sky130_fd_sc_hd__or3_1 _7718_ (.A(\count_instr[55] ),
    .B(_3512_),
    .C(_3491_),
    .X(_3514_));
 sky130_fd_sc_hd__a21boi_0 _7719_ (.A1(_3513_),
    .A2(_3514_),
    .B1_N(net775),
    .Y(_0576_));
 sky130_fd_sc_hd__nand2_1 _7720_ (.A(\count_instr[53] ),
    .B(_3479_),
    .Y(_3515_));
 sky130_fd_sc_hd__xnor2_1 _7721_ (.A(\count_instr[54] ),
    .B(_3515_),
    .Y(_3516_));
 sky130_fd_sc_hd__and2_1 _7722_ (.A(net775),
    .B(_3516_),
    .X(_0577_));
 sky130_fd_sc_hd__xnor2_1 _7723_ (.A(\count_instr[53] ),
    .B(_3491_),
    .Y(_3517_));
 sky130_fd_sc_hd__and2_1 _7724_ (.A(net775),
    .B(_3517_),
    .X(_0578_));
 sky130_fd_sc_hd__nor3_1 _7726_ (.A(_3460_),
    .B(_3462_),
    .C(_3468_),
    .Y(_3519_));
 sky130_fd_sc_hd__nand2b_1 _7727_ (.A_N(_3458_),
    .B(_3519_),
    .Y(_3520_));
 sky130_fd_sc_hd__nor3_1 _7728_ (.A(_3454_),
    .B(_3457_),
    .C(_3520_),
    .Y(_3521_));
 sky130_fd_sc_hd__and4_1 _7729_ (.A(\count_instr[47] ),
    .B(\count_instr[48] ),
    .C(\count_instr[49] ),
    .D(_3476_),
    .X(_3522_));
 sky130_fd_sc_hd__nand4_1 _7730_ (.A(\count_instr[50] ),
    .B(\count_instr[51] ),
    .C(_3521_),
    .D(_3522_),
    .Y(_3523_));
 sky130_fd_sc_hd__xnor2_1 _7731_ (.A(\count_instr[52] ),
    .B(_3523_),
    .Y(_3524_));
 sky130_fd_sc_hd__and2_1 _7732_ (.A(net775),
    .B(_3524_),
    .X(_0579_));
 sky130_fd_sc_hd__nor2_1 _7733_ (.A(_3454_),
    .B(_3490_),
    .Y(_3525_));
 sky130_fd_sc_hd__nand3_1 _7734_ (.A(\count_instr[50] ),
    .B(_3522_),
    .C(_3525_),
    .Y(_3526_));
 sky130_fd_sc_hd__xnor2_1 _7735_ (.A(\count_instr[51] ),
    .B(_3526_),
    .Y(_3527_));
 sky130_fd_sc_hd__and2_1 _7736_ (.A(net775),
    .B(_3527_),
    .X(_0580_));
 sky130_fd_sc_hd__nand2b_1 _7737_ (.A_N(_3470_),
    .B(_3477_),
    .Y(_3528_));
 sky130_fd_sc_hd__xnor2_1 _7738_ (.A(\count_instr[50] ),
    .B(_3528_),
    .Y(_3529_));
 sky130_fd_sc_hd__and2_1 _7739_ (.A(net775),
    .B(_3529_),
    .X(_0581_));
 sky130_fd_sc_hd__nand4_1 _7740_ (.A(\count_instr[47] ),
    .B(\count_instr[48] ),
    .C(_3476_),
    .D(_3525_),
    .Y(_3530_));
 sky130_fd_sc_hd__xnor2_1 _7741_ (.A(\count_instr[49] ),
    .B(_3530_),
    .Y(_3531_));
 sky130_fd_sc_hd__and2_1 _7742_ (.A(net775),
    .B(_3531_),
    .X(_0582_));
 sky130_fd_sc_hd__nand2_1 _7743_ (.A(\count_instr[47] ),
    .B(_3476_),
    .Y(_3532_));
 sky130_fd_sc_hd__o21ai_0 _7744_ (.A1(_3470_),
    .A2(_3532_),
    .B1(\count_instr[48] ),
    .Y(_3533_));
 sky130_fd_sc_hd__or3_1 _7745_ (.A(\count_instr[48] ),
    .B(_3470_),
    .C(_3532_),
    .X(_3534_));
 sky130_fd_sc_hd__a21boi_0 _7746_ (.A1(_3533_),
    .A2(_3534_),
    .B1_N(net775),
    .Y(_0583_));
 sky130_fd_sc_hd__nand2_1 _7748_ (.A(_3476_),
    .B(_3525_),
    .Y(_3536_));
 sky130_fd_sc_hd__xnor2_1 _7749_ (.A(\count_instr[47] ),
    .B(_3536_),
    .Y(_3537_));
 sky130_fd_sc_hd__and2_1 _7750_ (.A(net775),
    .B(_3537_),
    .X(_0584_));
 sky130_fd_sc_hd__o21ai_0 _7751_ (.A1(_3470_),
    .A2(_3475_),
    .B1(\count_instr[46] ),
    .Y(_3538_));
 sky130_fd_sc_hd__or3_1 _7752_ (.A(\count_instr[46] ),
    .B(_3470_),
    .C(_3475_),
    .X(_3539_));
 sky130_fd_sc_hd__a21boi_0 _7754_ (.A1(_3538_),
    .A2(_3539_),
    .B1_N(net775),
    .Y(_0585_));
 sky130_fd_sc_hd__nand3_1 _7756_ (.A(\count_instr[44] ),
    .B(_3474_),
    .C(_3525_),
    .Y(_3542_));
 sky130_fd_sc_hd__xnor2_1 _7757_ (.A(\count_instr[45] ),
    .B(_3542_),
    .Y(_3543_));
 sky130_fd_sc_hd__and2_1 _7758_ (.A(net775),
    .B(_3543_),
    .X(_0586_));
 sky130_fd_sc_hd__nand2_1 _7760_ (.A(_3474_),
    .B(_3521_),
    .Y(_3545_));
 sky130_fd_sc_hd__xnor2_1 _7761_ (.A(\count_instr[44] ),
    .B(_3545_),
    .Y(_3546_));
 sky130_fd_sc_hd__and2_1 _7762_ (.A(net775),
    .B(_3546_),
    .X(_0587_));
 sky130_fd_sc_hd__nand3_1 _7763_ (.A(\count_instr[42] ),
    .B(_3473_),
    .C(_3525_),
    .Y(_3547_));
 sky130_fd_sc_hd__xnor2_1 _7764_ (.A(\count_instr[43] ),
    .B(_3547_),
    .Y(_3548_));
 sky130_fd_sc_hd__and2_1 _7765_ (.A(net775),
    .B(_3548_),
    .X(_0588_));
 sky130_fd_sc_hd__nand2_1 _7766_ (.A(_3473_),
    .B(_3521_),
    .Y(_3549_));
 sky130_fd_sc_hd__xor2_1 _7767_ (.A(\count_instr[42] ),
    .B(_3549_),
    .X(_3550_));
 sky130_fd_sc_hd__nor2b_1 _7768_ (.A(_3550_),
    .B_N(net775),
    .Y(_0589_));
 sky130_fd_sc_hd__nand4_1 _7769_ (.A(\count_instr[38] ),
    .B(\count_instr[39] ),
    .C(\count_instr[40] ),
    .D(_3525_),
    .Y(_3551_));
 sky130_fd_sc_hd__xnor2_1 _7770_ (.A(\count_instr[41] ),
    .B(_3551_),
    .Y(_3552_));
 sky130_fd_sc_hd__and2_1 _7771_ (.A(net775),
    .B(_3552_),
    .X(_0590_));
 sky130_fd_sc_hd__nand3_1 _7772_ (.A(\count_instr[38] ),
    .B(\count_instr[39] ),
    .C(_3521_),
    .Y(_3553_));
 sky130_fd_sc_hd__xnor2_1 _7773_ (.A(\count_instr[40] ),
    .B(_3553_),
    .Y(_3554_));
 sky130_fd_sc_hd__and2_1 _7774_ (.A(net775),
    .B(_3554_),
    .X(_0591_));
 sky130_fd_sc_hd__nand2_1 _7775_ (.A(\count_instr[38] ),
    .B(_3525_),
    .Y(_3555_));
 sky130_fd_sc_hd__xnor2_1 _7776_ (.A(\count_instr[39] ),
    .B(_3555_),
    .Y(_3556_));
 sky130_fd_sc_hd__and2_1 _7777_ (.A(net775),
    .B(_3556_),
    .X(_0592_));
 sky130_fd_sc_hd__xnor2_1 _7779_ (.A(\count_instr[38] ),
    .B(_3470_),
    .Y(_3558_));
 sky130_fd_sc_hd__and2_1 _7780_ (.A(net775),
    .B(_3558_),
    .X(_0593_));
 sky130_fd_sc_hd__nand2_1 _7781_ (.A(\count_instr[36] ),
    .B(_3453_),
    .Y(_3559_));
 sky130_fd_sc_hd__o21ai_0 _7782_ (.A1(_3559_),
    .A2(_3490_),
    .B1(\count_instr[37] ),
    .Y(_3560_));
 sky130_fd_sc_hd__or3_1 _7783_ (.A(\count_instr[37] ),
    .B(_3559_),
    .C(_3490_),
    .X(_3561_));
 sky130_fd_sc_hd__a21boi_0 _7784_ (.A1(_3560_),
    .A2(_3561_),
    .B1_N(net775),
    .Y(_0594_));
 sky130_fd_sc_hd__nor2_1 _7785_ (.A(_3457_),
    .B(_3520_),
    .Y(_3562_));
 sky130_fd_sc_hd__nand2_1 _7786_ (.A(_3453_),
    .B(_3562_),
    .Y(_3563_));
 sky130_fd_sc_hd__xnor2_1 _7787_ (.A(\count_instr[36] ),
    .B(_3563_),
    .Y(_3564_));
 sky130_fd_sc_hd__and2_1 _7788_ (.A(net775),
    .B(_3564_),
    .X(_0595_));
 sky130_fd_sc_hd__nand2_1 _7789_ (.A(\count_instr[33] ),
    .B(\count_instr[34] ),
    .Y(_3565_));
 sky130_fd_sc_hd__o21ai_0 _7790_ (.A1(_3565_),
    .A2(_3490_),
    .B1(\count_instr[35] ),
    .Y(_3566_));
 sky130_fd_sc_hd__or3_1 _7791_ (.A(\count_instr[35] ),
    .B(_3565_),
    .C(_3490_),
    .X(_3567_));
 sky130_fd_sc_hd__a21boi_0 _7792_ (.A1(_3566_),
    .A2(_3567_),
    .B1_N(net775),
    .Y(_0596_));
 sky130_fd_sc_hd__nand2_1 _7793_ (.A(\count_instr[33] ),
    .B(_3562_),
    .Y(_3568_));
 sky130_fd_sc_hd__xnor2_1 _7794_ (.A(\count_instr[34] ),
    .B(_3568_),
    .Y(_3569_));
 sky130_fd_sc_hd__and2_1 _7795_ (.A(net775),
    .B(_3569_),
    .X(_0597_));
 sky130_fd_sc_hd__xnor2_1 _7796_ (.A(\count_instr[33] ),
    .B(_3490_),
    .Y(_3570_));
 sky130_fd_sc_hd__and2_1 _7797_ (.A(net775),
    .B(_3570_),
    .X(_0598_));
 sky130_fd_sc_hd__or3_1 _7798_ (.A(_3460_),
    .B(_3462_),
    .C(_3468_),
    .X(_3571_));
 sky130_fd_sc_hd__nor2_1 _7799_ (.A(_3458_),
    .B(_3571_),
    .Y(_3572_));
 sky130_fd_sc_hd__nand4_1 _7800_ (.A(\count_instr[30] ),
    .B(\count_instr[31] ),
    .C(_3456_),
    .D(_3572_),
    .Y(_3573_));
 sky130_fd_sc_hd__xnor2_1 _7801_ (.A(\count_instr[32] ),
    .B(_3573_),
    .Y(_3574_));
 sky130_fd_sc_hd__and2_1 _7802_ (.A(net775),
    .B(_3574_),
    .X(_0599_));
 sky130_fd_sc_hd__nand3_1 _7803_ (.A(\count_instr[30] ),
    .B(_3456_),
    .C(_3489_),
    .Y(_3575_));
 sky130_fd_sc_hd__xnor2_1 _7804_ (.A(\count_instr[31] ),
    .B(_3575_),
    .Y(_3576_));
 sky130_fd_sc_hd__and2_1 _7805_ (.A(net775),
    .B(_3576_),
    .X(_0600_));
 sky130_fd_sc_hd__nand2_1 _7806_ (.A(_3456_),
    .B(_3572_),
    .Y(_3577_));
 sky130_fd_sc_hd__xnor2_1 _7807_ (.A(\count_instr[30] ),
    .B(_3577_),
    .Y(_3578_));
 sky130_fd_sc_hd__and2_1 _7808_ (.A(net775),
    .B(_3578_),
    .X(_0601_));
 sky130_fd_sc_hd__nand3_1 _7809_ (.A(\count_instr[28] ),
    .B(_3455_),
    .C(_3489_),
    .Y(_3579_));
 sky130_fd_sc_hd__xnor2_1 _7810_ (.A(\count_instr[29] ),
    .B(_3579_),
    .Y(_3580_));
 sky130_fd_sc_hd__and2_1 _7811_ (.A(net776),
    .B(_3580_),
    .X(_0602_));
 sky130_fd_sc_hd__nand2_1 _7812_ (.A(_3455_),
    .B(_3572_),
    .Y(_3581_));
 sky130_fd_sc_hd__xnor2_1 _7813_ (.A(\count_instr[28] ),
    .B(_3581_),
    .Y(_3582_));
 sky130_fd_sc_hd__and2_1 _7814_ (.A(net776),
    .B(_3582_),
    .X(_0603_));
 sky130_fd_sc_hd__nand3_1 _7815_ (.A(\count_instr[25] ),
    .B(\count_instr[26] ),
    .C(_3489_),
    .Y(_3583_));
 sky130_fd_sc_hd__xnor2_1 _7816_ (.A(\count_instr[27] ),
    .B(_3583_),
    .Y(_3584_));
 sky130_fd_sc_hd__and2_1 _7817_ (.A(net775),
    .B(_3584_),
    .X(_0604_));
 sky130_fd_sc_hd__nand2_1 _7818_ (.A(\count_instr[25] ),
    .B(_3572_),
    .Y(_3585_));
 sky130_fd_sc_hd__xnor2_1 _7819_ (.A(\count_instr[26] ),
    .B(_3585_),
    .Y(_3586_));
 sky130_fd_sc_hd__and2_1 _7820_ (.A(net776),
    .B(_3586_),
    .X(_0605_));
 sky130_fd_sc_hd__xor2_1 _7821_ (.A(\count_instr[25] ),
    .B(_3489_),
    .X(_3587_));
 sky130_fd_sc_hd__and2_1 _7822_ (.A(net776),
    .B(_3587_),
    .X(_0606_));
 sky130_fd_sc_hd__nand3_1 _7823_ (.A(\count_instr[22] ),
    .B(\count_instr[23] ),
    .C(_3519_),
    .Y(_3588_));
 sky130_fd_sc_hd__xnor2_1 _7824_ (.A(\count_instr[24] ),
    .B(_3588_),
    .Y(_3589_));
 sky130_fd_sc_hd__and2_1 _7825_ (.A(net775),
    .B(_3589_),
    .X(_0607_));
 sky130_fd_sc_hd__nand2_1 _7826_ (.A(\count_instr[22] ),
    .B(_3488_),
    .Y(_3590_));
 sky130_fd_sc_hd__xnor2_1 _7827_ (.A(\count_instr[23] ),
    .B(_3590_),
    .Y(_3591_));
 sky130_fd_sc_hd__and2_1 _7828_ (.A(net775),
    .B(_3591_),
    .X(_0608_));
 sky130_fd_sc_hd__xnor2_1 _7829_ (.A(\count_instr[22] ),
    .B(_3571_),
    .Y(_3592_));
 sky130_fd_sc_hd__and2_1 _7830_ (.A(net775),
    .B(_3592_),
    .X(_0609_));
 sky130_fd_sc_hd__nor3_1 _7831_ (.A(_3460_),
    .B(_3484_),
    .C(_3487_),
    .Y(_3593_));
 sky130_fd_sc_hd__nand3_1 _7832_ (.A(\count_instr[20] ),
    .B(_3461_),
    .C(_3593_),
    .Y(_3594_));
 sky130_fd_sc_hd__xnor2_1 _7833_ (.A(\count_instr[21] ),
    .B(_3594_),
    .Y(_3595_));
 sky130_fd_sc_hd__and2_1 _7834_ (.A(net775),
    .B(_3595_),
    .X(_0610_));
 sky130_fd_sc_hd__nor2_1 _7835_ (.A(_3460_),
    .B(_3468_),
    .Y(_3596_));
 sky130_fd_sc_hd__nand2_1 _7836_ (.A(_3461_),
    .B(_3596_),
    .Y(_3597_));
 sky130_fd_sc_hd__xnor2_1 _7837_ (.A(\count_instr[20] ),
    .B(_3597_),
    .Y(_3598_));
 sky130_fd_sc_hd__and2_1 _7838_ (.A(net775),
    .B(_3598_),
    .X(_0611_));
 sky130_fd_sc_hd__nand3_1 _7839_ (.A(\count_instr[17] ),
    .B(\count_instr[18] ),
    .C(_3593_),
    .Y(_3599_));
 sky130_fd_sc_hd__xnor2_1 _7840_ (.A(\count_instr[19] ),
    .B(_3599_),
    .Y(_3600_));
 sky130_fd_sc_hd__and2_1 _7841_ (.A(net775),
    .B(_3600_),
    .X(_0612_));
 sky130_fd_sc_hd__nand2_1 _7842_ (.A(\count_instr[17] ),
    .B(_3596_),
    .Y(_3601_));
 sky130_fd_sc_hd__xor2_1 _7843_ (.A(\count_instr[18] ),
    .B(_3601_),
    .X(_3602_));
 sky130_fd_sc_hd__nor2b_1 _7845_ (.A(_3602_),
    .B_N(net775),
    .Y(_0613_));
 sky130_fd_sc_hd__xor2_1 _7846_ (.A(\count_instr[17] ),
    .B(_3593_),
    .X(_3604_));
 sky130_fd_sc_hd__and2_1 _7847_ (.A(net775),
    .B(_3604_),
    .X(_0614_));
 sky130_fd_sc_hd__nand3_1 _7848_ (.A(\count_instr[14] ),
    .B(\count_instr[15] ),
    .C(_3459_),
    .Y(_3605_));
 sky130_fd_sc_hd__o21ai_0 _7849_ (.A1(_3605_),
    .A2(_3468_),
    .B1(\count_instr[16] ),
    .Y(_3606_));
 sky130_fd_sc_hd__or3_1 _7850_ (.A(\count_instr[16] ),
    .B(_3605_),
    .C(_3468_),
    .X(_3607_));
 sky130_fd_sc_hd__a21boi_0 _7852_ (.A1(_3606_),
    .A2(_3607_),
    .B1_N(net775),
    .Y(_0615_));
 sky130_fd_sc_hd__nor2_1 _7854_ (.A(_3484_),
    .B(_3487_),
    .Y(_3610_));
 sky130_fd_sc_hd__nand3_1 _7855_ (.A(\count_instr[14] ),
    .B(_3459_),
    .C(_3610_),
    .Y(_3611_));
 sky130_fd_sc_hd__xnor2_1 _7856_ (.A(\count_instr[15] ),
    .B(_3611_),
    .Y(_3612_));
 sky130_fd_sc_hd__and2_1 _7857_ (.A(net775),
    .B(_3612_),
    .X(_0616_));
 sky130_fd_sc_hd__nand4_1 _7858_ (.A(\count_instr[10] ),
    .B(\count_instr[11] ),
    .C(\count_instr[12] ),
    .D(\count_instr[13] ),
    .Y(_3613_));
 sky130_fd_sc_hd__o21ai_0 _7859_ (.A1(_3613_),
    .A2(_3468_),
    .B1(\count_instr[14] ),
    .Y(_3614_));
 sky130_fd_sc_hd__or3_1 _7860_ (.A(\count_instr[14] ),
    .B(_3613_),
    .C(_3468_),
    .X(_3615_));
 sky130_fd_sc_hd__a21boi_0 _7861_ (.A1(_3614_),
    .A2(_3615_),
    .B1_N(net775),
    .Y(_0617_));
 sky130_fd_sc_hd__nand4_1 _7863_ (.A(\count_instr[10] ),
    .B(\count_instr[11] ),
    .C(\count_instr[12] ),
    .D(_3610_),
    .Y(_3617_));
 sky130_fd_sc_hd__xnor2_1 _7864_ (.A(\count_instr[13] ),
    .B(_3617_),
    .Y(_3618_));
 sky130_fd_sc_hd__and2_1 _7865_ (.A(net775),
    .B(_3618_),
    .X(_0618_));
 sky130_fd_sc_hd__nand2_1 _7866_ (.A(\count_instr[10] ),
    .B(\count_instr[11] ),
    .Y(_3619_));
 sky130_fd_sc_hd__o21ai_0 _7867_ (.A1(_3619_),
    .A2(_3468_),
    .B1(\count_instr[12] ),
    .Y(_3620_));
 sky130_fd_sc_hd__or3_1 _7868_ (.A(\count_instr[12] ),
    .B(_3619_),
    .C(_3468_),
    .X(_3621_));
 sky130_fd_sc_hd__a21boi_0 _7869_ (.A1(_3620_),
    .A2(_3621_),
    .B1_N(net775),
    .Y(_0619_));
 sky130_fd_sc_hd__nand2_1 _7870_ (.A(\count_instr[10] ),
    .B(_3610_),
    .Y(_3622_));
 sky130_fd_sc_hd__xor2_1 _7871_ (.A(\count_instr[11] ),
    .B(_3622_),
    .X(_3623_));
 sky130_fd_sc_hd__nor2b_1 _7872_ (.A(_3623_),
    .B_N(net775),
    .Y(_0620_));
 sky130_fd_sc_hd__xnor2_1 _7873_ (.A(\count_instr[10] ),
    .B(_3468_),
    .Y(_3624_));
 sky130_fd_sc_hd__and2_1 _7874_ (.A(net775),
    .B(_3624_),
    .X(_0621_));
 sky130_fd_sc_hd__nand4_1 _7875_ (.A(\count_instr[5] ),
    .B(\count_instr[6] ),
    .C(\count_instr[7] ),
    .D(\count_instr[8] ),
    .Y(_3625_));
 sky130_fd_sc_hd__nor2_1 _7876_ (.A(_3625_),
    .B(_3487_),
    .Y(_3626_));
 sky130_fd_sc_hd__xor2_1 _7877_ (.A(\count_instr[9] ),
    .B(_3626_),
    .X(_3627_));
 sky130_fd_sc_hd__and2_1 _7878_ (.A(net775),
    .B(_3627_),
    .X(_0622_));
 sky130_fd_sc_hd__nand4_1 _7880_ (.A(\count_instr[5] ),
    .B(\count_instr[6] ),
    .C(\count_instr[7] ),
    .D(_3466_),
    .Y(_3629_));
 sky130_fd_sc_hd__xnor2_1 _7881_ (.A(\count_instr[8] ),
    .B(_3629_),
    .Y(_3630_));
 sky130_fd_sc_hd__and2_1 _7882_ (.A(net775),
    .B(_3630_),
    .X(_0623_));
 sky130_fd_sc_hd__nand2_1 _7883_ (.A(\count_instr[5] ),
    .B(\count_instr[6] ),
    .Y(_3631_));
 sky130_fd_sc_hd__nor2_1 _7884_ (.A(_3631_),
    .B(_3487_),
    .Y(_3632_));
 sky130_fd_sc_hd__xor2_1 _7885_ (.A(\count_instr[7] ),
    .B(_3632_),
    .X(_3633_));
 sky130_fd_sc_hd__and2_1 _7886_ (.A(net775),
    .B(_3633_),
    .X(_0624_));
 sky130_fd_sc_hd__nand2_1 _7887_ (.A(\count_instr[5] ),
    .B(_3466_),
    .Y(_3634_));
 sky130_fd_sc_hd__xnor2_1 _7888_ (.A(\count_instr[6] ),
    .B(_3634_),
    .Y(_3635_));
 sky130_fd_sc_hd__and2_1 _7889_ (.A(net775),
    .B(_3635_),
    .X(_0625_));
 sky130_fd_sc_hd__xnor2_1 _7890_ (.A(\count_instr[5] ),
    .B(_3487_),
    .Y(_3636_));
 sky130_fd_sc_hd__and2_1 _7891_ (.A(net775),
    .B(_3636_),
    .X(_0626_));
 sky130_fd_sc_hd__nand3_1 _7892_ (.A(\count_instr[2] ),
    .B(\count_instr[3] ),
    .C(_3465_),
    .Y(_3637_));
 sky130_fd_sc_hd__xnor2_1 _7893_ (.A(\count_instr[4] ),
    .B(_3637_),
    .Y(_3638_));
 sky130_fd_sc_hd__and2_1 _7894_ (.A(net775),
    .B(_3638_),
    .X(_0627_));
 sky130_fd_sc_hd__nand4_1 _7895_ (.A(\count_instr[0] ),
    .B(\count_instr[1] ),
    .C(\count_instr[2] ),
    .D(_3486_),
    .Y(_3639_));
 sky130_fd_sc_hd__xnor2_1 _7896_ (.A(\count_instr[3] ),
    .B(_3639_),
    .Y(_3640_));
 sky130_fd_sc_hd__and2_1 _7897_ (.A(net775),
    .B(_3640_),
    .X(_0628_));
 sky130_fd_sc_hd__xor2_1 _7898_ (.A(\count_instr[2] ),
    .B(_3465_),
    .X(_3641_));
 sky130_fd_sc_hd__and2_1 _7899_ (.A(net775),
    .B(_3641_),
    .X(_0629_));
 sky130_fd_sc_hd__nand2_1 _7900_ (.A(_0360_),
    .B(_3486_),
    .Y(_3642_));
 sky130_fd_sc_hd__nand2_1 _7904_ (.A(\cpu_state[1] ),
    .B(decoder_trigger),
    .Y(_3646_));
 sky130_fd_sc_hd__nand2_1 _7905_ (.A(\count_instr[1] ),
    .B(_3646_),
    .Y(_3647_));
 sky130_fd_sc_hd__a21boi_0 _7906_ (.A1(_3642_),
    .A2(_3647_),
    .B1_N(net775),
    .Y(_0630_));
 sky130_fd_sc_hd__xnor2_1 _7907_ (.A(\count_instr[0] ),
    .B(_3646_),
    .Y(_3648_));
 sky130_fd_sc_hd__and2_1 _7908_ (.A(net775),
    .B(_3648_),
    .X(_0631_));
 sky130_fd_sc_hd__o21ai_0 _7911_ (.A1(\cpu_state[1] ),
    .A2(\reg_next_pc[30] ),
    .B1(net776),
    .Y(_3651_));
 sky130_fd_sc_hd__and2_1 _7912_ (.A(net743),
    .B(net744),
    .X(_3652_));
 sky130_fd_sc_hd__inv_1 _7915_ (.A(_0423_),
    .Y(_3655_));
 sky130_fd_sc_hd__nand2_1 _7916_ (.A(_0389_),
    .B(_3655_),
    .Y(_3656_));
 sky130_fd_sc_hd__nand4_1 _7917_ (.A(_0096_),
    .B(_0074_),
    .C(_0430_),
    .D(_0398_),
    .Y(_3657_));
 sky130_fd_sc_hd__a21o_1 _7919_ (.A1(_0263_),
    .A2(_0400_),
    .B1(_0262_),
    .X(_3659_));
 sky130_fd_sc_hd__a21o_1 _7920_ (.A1(_0099_),
    .A2(_3659_),
    .B1(_0098_),
    .X(_3660_));
 sky130_fd_sc_hd__a21oi_1 _7921_ (.A1(_0419_),
    .A2(_3660_),
    .B1(_0418_),
    .Y(_3661_));
 sky130_fd_sc_hd__a21o_1 _7922_ (.A1(_0430_),
    .A2(_0397_),
    .B1(_0429_),
    .X(_3662_));
 sky130_fd_sc_hd__a21o_1 _7923_ (.A1(_0074_),
    .A2(_3662_),
    .B1(_0073_),
    .X(_3663_));
 sky130_fd_sc_hd__a21oi_1 _7924_ (.A1(_0096_),
    .A2(_3663_),
    .B1(_0095_),
    .Y(_3664_));
 sky130_fd_sc_hd__o21a_1 _7925_ (.A1(_3657_),
    .A2(_3661_),
    .B1(_3664_),
    .X(_3665_));
 sky130_fd_sc_hd__a211oi_1 _7926_ (.A1(_0051_),
    .A2(_0069_),
    .B1(_0408_),
    .C1(_0267_),
    .Y(_3666_));
 sky130_fd_sc_hd__o21ai_0 _7927_ (.A1(_0268_),
    .A2(_0267_),
    .B1(_0459_),
    .Y(_3667_));
 sky130_fd_sc_hd__nor3_1 _7928_ (.A(_0406_),
    .B(_0274_),
    .C(_0458_),
    .Y(_3668_));
 sky130_fd_sc_hd__o21a_1 _7929_ (.A1(_3666_),
    .A2(_3667_),
    .B1(_3668_),
    .X(_3669_));
 sky130_fd_sc_hd__o21a_1 _7930_ (.A1(_0275_),
    .A2(_0274_),
    .B1(_0407_),
    .X(_3670_));
 sky130_fd_sc_hd__o211ai_1 _7931_ (.A1(_0406_),
    .A2(_3670_),
    .B1(_0436_),
    .C1(_0367_),
    .Y(_3671_));
 sky130_fd_sc_hd__a21oi_1 _7932_ (.A1(_0367_),
    .A2(_0435_),
    .B1(_0366_),
    .Y(_3672_));
 sky130_fd_sc_hd__a21o_1 _7933_ (.A1(_0462_),
    .A2(_0403_),
    .B1(_0461_),
    .X(_3673_));
 sky130_fd_sc_hd__and3_1 _7934_ (.A(_0122_),
    .B(_0462_),
    .C(_0404_),
    .X(_3674_));
 sky130_fd_sc_hd__a221oi_2 _7935_ (.A1(_0122_),
    .A2(_3673_),
    .B1(_3674_),
    .B2(_0118_),
    .C1(_0121_),
    .Y(_3675_));
 sky130_fd_sc_hd__inv_1 _7936_ (.A(_0426_),
    .Y(_3676_));
 sky130_fd_sc_hd__o2111ai_1 _7937_ (.A1(_3669_),
    .A2(_3671_),
    .B1(_3672_),
    .C1(_3675_),
    .D1(_3676_),
    .Y(_3677_));
 sky130_fd_sc_hd__nand4_1 _7938_ (.A(_0119_),
    .B(_0122_),
    .C(_0462_),
    .D(_0404_),
    .Y(_3678_));
 sky130_fd_sc_hd__nor2_1 _7939_ (.A(_0426_),
    .B(_0427_),
    .Y(_3679_));
 sky130_fd_sc_hd__a31oi_1 _7940_ (.A1(_3676_),
    .A2(_3675_),
    .A3(_3678_),
    .B1(_3679_),
    .Y(_3680_));
 sky130_fd_sc_hd__nand3_1 _7942_ (.A(_0099_),
    .B(_0263_),
    .C(_0401_),
    .Y(_3682_));
 sky130_fd_sc_hd__nor2_1 _7943_ (.A(_3657_),
    .B(_3682_),
    .Y(_3683_));
 sky130_fd_sc_hd__nand4_1 _7944_ (.A(_0419_),
    .B(_3677_),
    .C(_3680_),
    .D(_3683_),
    .Y(_3684_));
 sky130_fd_sc_hd__nand2_1 _7945_ (.A(_0433_),
    .B(_0395_),
    .Y(_3685_));
 sky130_fd_sc_hd__a21oi_1 _7946_ (.A1(_3665_),
    .A2(_3684_),
    .B1(_3685_),
    .Y(_3686_));
 sky130_fd_sc_hd__a21o_1 _7947_ (.A1(_0433_),
    .A2(_0394_),
    .B1(_0432_),
    .X(_3687_));
 sky130_fd_sc_hd__nor3_1 _7948_ (.A(_0260_),
    .B(_0259_),
    .C(_0076_),
    .Y(_3688_));
 sky130_fd_sc_hd__nor2_1 _7949_ (.A(_0077_),
    .B(_0076_),
    .Y(_3689_));
 sky130_fd_sc_hd__nor2_1 _7950_ (.A(_3688_),
    .B(_3689_),
    .Y(_3690_));
 sky130_fd_sc_hd__o41ai_1 _7951_ (.A1(_0259_),
    .A2(_0076_),
    .A3(_3686_),
    .A4(_3687_),
    .B1(_3690_),
    .Y(_3691_));
 sky130_fd_sc_hd__nand2_1 _7952_ (.A(_0382_),
    .B(_0339_),
    .Y(_3692_));
 sky130_fd_sc_hd__inv_1 _7953_ (.A(_3692_),
    .Y(_3693_));
 sky130_fd_sc_hd__nand3_1 _7954_ (.A(_0424_),
    .B(_0392_),
    .C(_3693_),
    .Y(_3694_));
 sky130_fd_sc_hd__a21oi_1 _7955_ (.A1(_0382_),
    .A2(_0391_),
    .B1(_0381_),
    .Y(_3695_));
 sky130_fd_sc_hd__nor2b_1 _7956_ (.A(_3695_),
    .B_N(_0339_),
    .Y(_3696_));
 sky130_fd_sc_hd__o21ai_0 _7957_ (.A1(_0338_),
    .A2(_3696_),
    .B1(_0424_),
    .Y(_3697_));
 sky130_fd_sc_hd__o21ai_0 _7958_ (.A1(_3691_),
    .A2(_3694_),
    .B1(_3697_),
    .Y(_3698_));
 sky130_fd_sc_hd__mux2i_1 _7959_ (.A0(_3656_),
    .A1(_0389_),
    .S(_3698_),
    .Y(_3699_));
 sky130_fd_sc_hd__and4bb_2 _7961_ (.A_N(_0932_),
    .B_N(_0934_),
    .C(_0094_),
    .D(_0393_),
    .X(_3701_));
 sky130_fd_sc_hd__a21oi_1 _7962_ (.A1(_0944_),
    .A2(_0945_),
    .B1(_0947_),
    .Y(_3702_));
 sky130_fd_sc_hd__nand4_1 _7963_ (.A(_0431_),
    .B(_0258_),
    .C(_3701_),
    .D(_3702_),
    .Y(_3703_));
 sky130_fd_sc_hd__nor4b_2 _7964_ (.A(_0952_),
    .B(_3703_),
    .C(_0955_),
    .D_N(_0380_),
    .Y(_3704_));
 sky130_fd_sc_hd__nor4_2 _7965_ (.A(_0895_),
    .B(_0897_),
    .C(_0899_),
    .D(_0901_),
    .Y(_3705_));
 sky130_fd_sc_hd__nand3_1 _7966_ (.A(_0276_),
    .B(_0457_),
    .C(_3705_),
    .Y(_3706_));
 sky130_fd_sc_hd__nor3_2 _7967_ (.A(_0907_),
    .B(_0909_),
    .C(_0911_),
    .Y(_3707_));
 sky130_fd_sc_hd__nand4_1 _7968_ (.A(_0399_),
    .B(_0261_),
    .C(_0097_),
    .D(_3707_),
    .Y(_3708_));
 sky130_fd_sc_hd__or2_0 _7969_ (.A(_0903_),
    .B(_0905_),
    .X(_3709_));
 sky130_fd_sc_hd__or3_4 _7971_ (.A(_0926_),
    .B(_0930_),
    .C(_3709_),
    .X(_3711_));
 sky130_fd_sc_hd__nor3_1 _7972_ (.A(_3706_),
    .B(_3708_),
    .C(_3711_),
    .Y(_3712_));
 sky130_fd_sc_hd__a21oi_1 _7974_ (.A1(_3704_),
    .A2(net612),
    .B1(_0958_),
    .Y(_3714_));
 sky130_fd_sc_hd__a41oi_1 _7975_ (.A1(net744),
    .A2(_0958_),
    .A3(_3704_),
    .A4(net612),
    .B1(_3714_),
    .Y(_3715_));
 sky130_fd_sc_hd__nand2_1 _7976_ (.A(net743),
    .B(decoder_trigger),
    .Y(_3716_));
 sky130_fd_sc_hd__o31a_1 _7977_ (.A1(_0389_),
    .A2(_3655_),
    .A3(_3716_),
    .B1(\cpu_state[1] ),
    .X(_3717_));
 sky130_fd_sc_hd__o221ai_1 _7978_ (.A1(net744),
    .A2(_0958_),
    .B1(_3715_),
    .B2(net743),
    .C1(_3717_),
    .Y(_3718_));
 sky130_fd_sc_hd__a21oi_1 _7979_ (.A1(net684),
    .A2(_3699_),
    .B1(_3718_),
    .Y(_3719_));
 sky130_fd_sc_hd__nor2_1 _7980_ (.A(_3651_),
    .B(_3719_),
    .Y(_0632_));
 sky130_fd_sc_hd__and2_1 _7982_ (.A(\cpu_state[1] ),
    .B(net171),
    .X(_3721_));
 sky130_fd_sc_hd__o211ai_1 _7984_ (.A1(net744),
    .A2(_0422_),
    .B1(net683),
    .C1(net743),
    .Y(_3723_));
 sky130_fd_sc_hd__a21o_1 _7985_ (.A1(_0339_),
    .A2(_0381_),
    .B1(_0338_),
    .X(_3724_));
 sky130_fd_sc_hd__nand4_1 _7986_ (.A(_0099_),
    .B(_0263_),
    .C(_0401_),
    .D(_0427_),
    .Y(_3725_));
 sky130_fd_sc_hd__a21o_1 _7987_ (.A1(_0401_),
    .A2(_0426_),
    .B1(_0400_),
    .X(_3726_));
 sky130_fd_sc_hd__a21o_1 _7988_ (.A1(_0263_),
    .A2(_3726_),
    .B1(_0262_),
    .X(_3727_));
 sky130_fd_sc_hd__a21oi_1 _7989_ (.A1(_0099_),
    .A2(_3727_),
    .B1(_0098_),
    .Y(_3728_));
 sky130_fd_sc_hd__a211oi_1 _7990_ (.A1(_0053_),
    .A2(_0268_),
    .B1(_0458_),
    .C1(_0267_),
    .Y(_3729_));
 sky130_fd_sc_hd__o21ai_0 _7991_ (.A1(_0459_),
    .A2(_0458_),
    .B1(_0275_),
    .Y(_3730_));
 sky130_fd_sc_hd__nor2_1 _7992_ (.A(_0406_),
    .B(_0274_),
    .Y(_3731_));
 sky130_fd_sc_hd__o211ai_1 _7993_ (.A1(_3729_),
    .A2(_3730_),
    .B1(_3731_),
    .C1(_3672_),
    .Y(_3732_));
 sky130_fd_sc_hd__inv_1 _7994_ (.A(_0366_),
    .Y(_3733_));
 sky130_fd_sc_hd__o21ai_0 _7995_ (.A1(_0436_),
    .A2(_0435_),
    .B1(_0367_),
    .Y(_3734_));
 sky130_fd_sc_hd__nor2_1 _7996_ (.A(_0406_),
    .B(_0407_),
    .Y(_3735_));
 sky130_fd_sc_hd__a22oi_1 _7997_ (.A1(_3733_),
    .A2(_3734_),
    .B1(_3735_),
    .B2(_3672_),
    .Y(_3736_));
 sky130_fd_sc_hd__nor2_1 _7998_ (.A(_3678_),
    .B(_3725_),
    .Y(_3737_));
 sky130_fd_sc_hd__nand3_1 _7999_ (.A(_3732_),
    .B(_3736_),
    .C(_3737_),
    .Y(_3738_));
 sky130_fd_sc_hd__o211ai_1 _8000_ (.A1(_3675_),
    .A2(_3725_),
    .B1(_3728_),
    .C1(_3738_),
    .Y(_3739_));
 sky130_fd_sc_hd__a21o_1 _8001_ (.A1(_0398_),
    .A2(_0418_),
    .B1(_0397_),
    .X(_3740_));
 sky130_fd_sc_hd__a21oi_1 _8002_ (.A1(_0430_),
    .A2(_3740_),
    .B1(_0429_),
    .Y(_3741_));
 sky130_fd_sc_hd__nor2b_1 _8003_ (.A(_3741_),
    .B_N(_0074_),
    .Y(_3742_));
 sky130_fd_sc_hd__o21a_1 _8004_ (.A1(_0419_),
    .A2(_0418_),
    .B1(_0398_),
    .X(_3743_));
 sky130_fd_sc_hd__o21a_1 _8005_ (.A1(_0397_),
    .A2(_3743_),
    .B1(_0430_),
    .X(_3744_));
 sky130_fd_sc_hd__o21ai_0 _8006_ (.A1(_0429_),
    .A2(_3744_),
    .B1(_0074_),
    .Y(_3745_));
 sky130_fd_sc_hd__nor2_1 _8007_ (.A(_0095_),
    .B(_0073_),
    .Y(_3746_));
 sky130_fd_sc_hd__nor2_1 _8008_ (.A(_0096_),
    .B(_0095_),
    .Y(_3747_));
 sky130_fd_sc_hd__a21oi_1 _8009_ (.A1(_3745_),
    .A2(_3746_),
    .B1(_3747_),
    .Y(_3748_));
 sky130_fd_sc_hd__o41a_1 _8010_ (.A1(_0095_),
    .A2(_0073_),
    .A3(_3739_),
    .A4(_3742_),
    .B1(_3748_),
    .X(_3749_));
 sky130_fd_sc_hd__nand2_1 _8011_ (.A(_0077_),
    .B(_0260_),
    .Y(_3750_));
 sky130_fd_sc_hd__nor2_1 _8012_ (.A(_3685_),
    .B(_3750_),
    .Y(_3751_));
 sky130_fd_sc_hd__nor2b_1 _8013_ (.A(_3750_),
    .B_N(_3687_),
    .Y(_3752_));
 sky130_fd_sc_hd__a221oi_2 _8014_ (.A1(_0077_),
    .A2(_0259_),
    .B1(_3749_),
    .B2(_3751_),
    .C1(_3752_),
    .Y(_3753_));
 sky130_fd_sc_hd__nor2_1 _8015_ (.A(_0391_),
    .B(_0076_),
    .Y(_3754_));
 sky130_fd_sc_hd__nor2_1 _8016_ (.A(_0392_),
    .B(_0391_),
    .Y(_3755_));
 sky130_fd_sc_hd__a211oi_1 _8017_ (.A1(_3753_),
    .A2(_3754_),
    .B1(_3755_),
    .C1(_3692_),
    .Y(_3756_));
 sky130_fd_sc_hd__nor2_1 _8018_ (.A(_3724_),
    .B(_3756_),
    .Y(_3757_));
 sky130_fd_sc_hd__xor2_1 _8019_ (.A(_0424_),
    .B(_3757_),
    .X(_3758_));
 sky130_fd_sc_hd__nor3b_1 _8022_ (.A(_3703_),
    .B(_0952_),
    .C_N(_0380_),
    .Y(_3761_));
 sky130_fd_sc_hd__and3b_1 _8023_ (.A_N(_0888_),
    .B(_0266_),
    .C(_0457_),
    .X(_3762_));
 sky130_fd_sc_hd__nand2_1 _8024_ (.A(_3705_),
    .B(_3762_),
    .Y(_3763_));
 sky130_fd_sc_hd__nor3_4 _8025_ (.A(_3708_),
    .B(_3711_),
    .C(_3763_),
    .Y(_3764_));
 sky130_fd_sc_hd__a21oi_1 _8026_ (.A1(_3761_),
    .A2(_3764_),
    .B1(_0955_),
    .Y(_3765_));
 sky130_fd_sc_hd__a41oi_1 _8027_ (.A1(net744),
    .A2(_0955_),
    .A3(_3761_),
    .A4(_3764_),
    .B1(_3765_),
    .Y(_3766_));
 sky130_fd_sc_hd__o221ai_1 _8030_ (.A1(net744),
    .A2(_0955_),
    .B1(_3766_),
    .B2(net743),
    .C1(\cpu_state[1] ),
    .Y(_3769_));
 sky130_fd_sc_hd__o211ai_1 _8031_ (.A1(\cpu_state[1] ),
    .A2(\reg_next_pc[29] ),
    .B1(net776),
    .C1(_3769_),
    .Y(_3770_));
 sky130_fd_sc_hd__o21ai_0 _8032_ (.A1(_3723_),
    .A2(_3758_),
    .B1(_3770_),
    .Y(_0633_));
 sky130_fd_sc_hd__nor2b_2 _8033_ (.A(\cpu_state[1] ),
    .B_N(net776),
    .Y(_3771_));
 sky130_fd_sc_hd__nand2_1 _8035_ (.A(\reg_next_pc[28] ),
    .B(net682),
    .Y(_3773_));
 sky130_fd_sc_hd__nor2_1 _8037_ (.A(_0339_),
    .B(_0381_),
    .Y(_3775_));
 sky130_fd_sc_hd__inv_1 _8038_ (.A(_0392_),
    .Y(_3776_));
 sky130_fd_sc_hd__o21bai_1 _8039_ (.A1(_3776_),
    .A2(_3691_),
    .B1_N(_0391_),
    .Y(_3777_));
 sky130_fd_sc_hd__mux2i_1 _8040_ (.A0(_3775_),
    .A1(_3693_),
    .S(_3777_),
    .Y(_3778_));
 sky130_fd_sc_hd__nor2_1 _8042_ (.A(net743),
    .B(net699),
    .Y(_3780_));
 sky130_fd_sc_hd__nor3_1 _8043_ (.A(_0382_),
    .B(_0339_),
    .C(_0381_),
    .Y(_3781_));
 sky130_fd_sc_hd__a21oi_1 _8044_ (.A1(_0339_),
    .A2(_0381_),
    .B1(_3781_),
    .Y(_3782_));
 sky130_fd_sc_hd__o21ai_0 _8045_ (.A1(_3716_),
    .A2(_3782_),
    .B1(net683),
    .Y(_3783_));
 sky130_fd_sc_hd__a31oi_1 _8046_ (.A1(_3761_),
    .A2(net612),
    .A3(_3780_),
    .B1(_3783_),
    .Y(_3784_));
 sky130_fd_sc_hd__and3_1 _8047_ (.A(_0431_),
    .B(_0258_),
    .C(_3701_),
    .X(_3785_));
 sky130_fd_sc_hd__and2_1 _8048_ (.A(_0075_),
    .B(_3785_),
    .X(_3786_));
 sky130_fd_sc_hd__nand2b_1 _8049_ (.A_N(net743),
    .B(net744),
    .Y(_3787_));
 sky130_fd_sc_hd__a41oi_1 _8050_ (.A1(_0390_),
    .A2(_0380_),
    .A3(_3786_),
    .A4(net612),
    .B1(_3787_),
    .Y(_3788_));
 sky130_fd_sc_hd__o21ai_0 _8051_ (.A1(_3646_),
    .A2(_3788_),
    .B1(_0952_),
    .Y(_3789_));
 sky130_fd_sc_hd__o211ai_1 _8052_ (.A1(_3716_),
    .A2(_3778_),
    .B1(_3784_),
    .C1(_3789_),
    .Y(_3790_));
 sky130_fd_sc_hd__nand2_1 _8053_ (.A(_3773_),
    .B(_3790_),
    .Y(_0634_));
 sky130_fd_sc_hd__nand3_1 _8054_ (.A(_0390_),
    .B(_3786_),
    .C(_3764_),
    .Y(_3791_));
 sky130_fd_sc_hd__xnor2_1 _8055_ (.A(_0380_),
    .B(_3791_),
    .Y(_3792_));
 sky130_fd_sc_hd__o221ai_1 _8056_ (.A1(net744),
    .A2(_0380_),
    .B1(_3787_),
    .B2(_3792_),
    .C1(net683),
    .Y(_3793_));
 sky130_fd_sc_hd__a21oi_1 _8057_ (.A1(_3753_),
    .A2(_3754_),
    .B1(_3755_),
    .Y(_3794_));
 sky130_fd_sc_hd__xor2_1 _8058_ (.A(_0382_),
    .B(_3794_),
    .X(_3795_));
 sky130_fd_sc_hd__nor2_1 _8059_ (.A(_3716_),
    .B(_3795_),
    .Y(_3796_));
 sky130_fd_sc_hd__nand2_1 _8060_ (.A(\reg_next_pc[27] ),
    .B(net682),
    .Y(_3797_));
 sky130_fd_sc_hd__o21ai_0 _8061_ (.A1(_3793_),
    .A2(_3796_),
    .B1(_3797_),
    .Y(_0635_));
 sky130_fd_sc_hd__xnor2_1 _8063_ (.A(_0392_),
    .B(_3691_),
    .Y(_3799_));
 sky130_fd_sc_hd__nand2_1 _8064_ (.A(net743),
    .B(_3799_),
    .Y(_3800_));
 sky130_fd_sc_hd__a31o_2 _8065_ (.A1(_0390_),
    .A2(_3786_),
    .A3(net612),
    .B1(net743),
    .X(_3801_));
 sky130_fd_sc_hd__nand3_1 _8066_ (.A(net744),
    .B(_3800_),
    .C(_3801_),
    .Y(_3802_));
 sky130_fd_sc_hd__a21oi_1 _8067_ (.A1(_3786_),
    .A2(net612),
    .B1(_3787_),
    .Y(_3803_));
 sky130_fd_sc_hd__o21ai_0 _8068_ (.A1(_3646_),
    .A2(_3803_),
    .B1(_0947_),
    .Y(_3804_));
 sky130_fd_sc_hd__a32o_1 _8070_ (.A1(net683),
    .A2(_3802_),
    .A3(_3804_),
    .B1(net682),
    .B2(\reg_next_pc[26] ),
    .X(_0636_));
 sky130_fd_sc_hd__a21oi_1 _8071_ (.A1(_3785_),
    .A2(_3764_),
    .B1(_0075_),
    .Y(_3806_));
 sky130_fd_sc_hd__a31oi_1 _8072_ (.A1(net744),
    .A2(_3786_),
    .A3(_3764_),
    .B1(_3806_),
    .Y(_3807_));
 sky130_fd_sc_hd__o221ai_1 _8073_ (.A1(net744),
    .A2(_0075_),
    .B1(_3807_),
    .B2(net743),
    .C1(net683),
    .Y(_3808_));
 sky130_fd_sc_hd__a31o_2 _8074_ (.A1(_0433_),
    .A2(_0395_),
    .A3(_3749_),
    .B1(_3687_),
    .X(_3809_));
 sky130_fd_sc_hd__a211o_1 _8075_ (.A1(_0260_),
    .A2(_3809_),
    .B1(_0259_),
    .C1(_0077_),
    .X(_3810_));
 sky130_fd_sc_hd__a21oi_1 _8076_ (.A1(_3753_),
    .A2(_3810_),
    .B1(_3716_),
    .Y(_3811_));
 sky130_fd_sc_hd__nand2_1 _8077_ (.A(\reg_next_pc[25] ),
    .B(net682),
    .Y(_3812_));
 sky130_fd_sc_hd__o21ai_0 _8078_ (.A1(_3808_),
    .A2(_3811_),
    .B1(_3812_),
    .Y(_0637_));
 sky130_fd_sc_hd__nor2_1 _8079_ (.A(_3686_),
    .B(_3687_),
    .Y(_3813_));
 sky130_fd_sc_hd__xor2_1 _8080_ (.A(_0260_),
    .B(_3813_),
    .X(_3814_));
 sky130_fd_sc_hd__a31oi_1 _8081_ (.A1(_0431_),
    .A2(_3701_),
    .A3(net612),
    .B1(_0258_),
    .Y(_3815_));
 sky130_fd_sc_hd__a31oi_1 _8082_ (.A1(net744),
    .A2(_3785_),
    .A3(net612),
    .B1(_3815_),
    .Y(_3816_));
 sky130_fd_sc_hd__o22ai_1 _8083_ (.A1(net744),
    .A2(_0258_),
    .B1(_3816_),
    .B2(net743),
    .Y(_3817_));
 sky130_fd_sc_hd__a21oi_1 _8084_ (.A1(net684),
    .A2(_3814_),
    .B1(_3817_),
    .Y(_3818_));
 sky130_fd_sc_hd__a22o_1 _8085_ (.A1(\reg_next_pc[24] ),
    .A2(net682),
    .B1(_3818_),
    .B2(net683),
    .X(_0638_));
 sky130_fd_sc_hd__a21oi_1 _8086_ (.A1(_0395_),
    .A2(_3749_),
    .B1(_0394_),
    .Y(_3819_));
 sky130_fd_sc_hd__xnor2_1 _8087_ (.A(_0433_),
    .B(_3819_),
    .Y(_3820_));
 sky130_fd_sc_hd__nand2_2 _8088_ (.A(_3701_),
    .B(_3764_),
    .Y(_3821_));
 sky130_fd_sc_hd__or3_1 _8089_ (.A(net699),
    .B(_0431_),
    .C(_3821_),
    .X(_3822_));
 sky130_fd_sc_hd__nand2_1 _8090_ (.A(_0431_),
    .B(_3821_),
    .Y(_3823_));
 sky130_fd_sc_hd__a21oi_1 _8091_ (.A1(_3822_),
    .A2(_3823_),
    .B1(net743),
    .Y(_3824_));
 sky130_fd_sc_hd__a221o_1 _8092_ (.A1(net699),
    .A2(_0431_),
    .B1(net684),
    .B2(_3820_),
    .C1(_3824_),
    .X(_3825_));
 sky130_fd_sc_hd__a22o_1 _8093_ (.A1(\reg_next_pc[23] ),
    .A2(net682),
    .B1(_3825_),
    .B2(net683),
    .X(_0639_));
 sky130_fd_sc_hd__nand2_1 _8094_ (.A(net744),
    .B(_0393_),
    .Y(_3826_));
 sky130_fd_sc_hd__nor2_1 _8095_ (.A(_0932_),
    .B(_0934_),
    .Y(_3827_));
 sky130_fd_sc_hd__nand3_1 _8096_ (.A(_0094_),
    .B(_3827_),
    .C(net612),
    .Y(_3828_));
 sky130_fd_sc_hd__mux2_2 _8097_ (.A0(_3826_),
    .A1(_0393_),
    .S(_3828_),
    .X(_3829_));
 sky130_fd_sc_hd__o221ai_1 _8098_ (.A1(net744),
    .A2(_0393_),
    .B1(_3829_),
    .B2(net743),
    .C1(net683),
    .Y(_3830_));
 sky130_fd_sc_hd__nand2_1 _8099_ (.A(_3665_),
    .B(_3684_),
    .Y(_3831_));
 sky130_fd_sc_hd__xor2_1 _8100_ (.A(_0395_),
    .B(_3831_),
    .X(_3832_));
 sky130_fd_sc_hd__nor2_1 _8101_ (.A(_3716_),
    .B(_3832_),
    .Y(_3833_));
 sky130_fd_sc_hd__nand2_1 _8102_ (.A(\reg_next_pc[22] ),
    .B(net682),
    .Y(_3834_));
 sky130_fd_sc_hd__o21ai_0 _8103_ (.A1(_3830_),
    .A2(_3833_),
    .B1(_3834_),
    .Y(_0640_));
 sky130_fd_sc_hd__nand2_1 _8105_ (.A(net744),
    .B(_0094_),
    .Y(_3836_));
 sky130_fd_sc_hd__nand2_1 _8106_ (.A(_3827_),
    .B(_3764_),
    .Y(_3837_));
 sky130_fd_sc_hd__mux2_2 _8107_ (.A0(_3836_),
    .A1(_0094_),
    .S(_3837_),
    .X(_3838_));
 sky130_fd_sc_hd__nor2_1 _8108_ (.A(_3739_),
    .B(_3742_),
    .Y(_3839_));
 sky130_fd_sc_hd__o21bai_1 _8109_ (.A1(_3745_),
    .A2(_3839_),
    .B1_N(_0073_),
    .Y(_3840_));
 sky130_fd_sc_hd__xnor2_1 _8110_ (.A(_0096_),
    .B(_3840_),
    .Y(_3841_));
 sky130_fd_sc_hd__nand2_1 _8111_ (.A(net684),
    .B(_3841_),
    .Y(_3842_));
 sky130_fd_sc_hd__o221ai_1 _8112_ (.A1(net744),
    .A2(_0094_),
    .B1(_3838_),
    .B2(net743),
    .C1(_3842_),
    .Y(_3843_));
 sky130_fd_sc_hd__o21ai_0 _8113_ (.A1(net750),
    .A2(\reg_next_pc[21] ),
    .B1(net171),
    .Y(_3844_));
 sky130_fd_sc_hd__a21oi_1 _8114_ (.A1(net750),
    .A2(_3843_),
    .B1(_3844_),
    .Y(_0641_));
 sky130_fd_sc_hd__a21oi_1 _8115_ (.A1(_0428_),
    .A2(net612),
    .B1(_0072_),
    .Y(_3845_));
 sky130_fd_sc_hd__a31oi_1 _8116_ (.A1(net744),
    .A2(_3827_),
    .A3(net612),
    .B1(_3845_),
    .Y(_3846_));
 sky130_fd_sc_hd__o221ai_1 _8117_ (.A1(net744),
    .A2(_0072_),
    .B1(_3846_),
    .B2(net743),
    .C1(net683),
    .Y(_3847_));
 sky130_fd_sc_hd__nand2_1 _8118_ (.A(_3677_),
    .B(_3680_),
    .Y(_3848_));
 sky130_fd_sc_hd__nand4_1 _8119_ (.A(_0099_),
    .B(_0263_),
    .C(_0401_),
    .D(_0419_),
    .Y(_3849_));
 sky130_fd_sc_hd__o21ai_0 _8120_ (.A1(_3848_),
    .A2(_3849_),
    .B1(_3661_),
    .Y(_3850_));
 sky130_fd_sc_hd__a21o_1 _8121_ (.A1(_0398_),
    .A2(_3850_),
    .B1(_0397_),
    .X(_3851_));
 sky130_fd_sc_hd__a21oi_1 _8122_ (.A1(_0430_),
    .A2(_3851_),
    .B1(_0429_),
    .Y(_3852_));
 sky130_fd_sc_hd__xnor2_1 _8123_ (.A(_0074_),
    .B(_3852_),
    .Y(_3853_));
 sky130_fd_sc_hd__nor2_1 _8124_ (.A(_3716_),
    .B(_3853_),
    .Y(_3854_));
 sky130_fd_sc_hd__nand2_1 _8125_ (.A(\reg_next_pc[20] ),
    .B(net682),
    .Y(_3855_));
 sky130_fd_sc_hd__o21ai_0 _8126_ (.A1(_3847_),
    .A2(_3854_),
    .B1(_3855_),
    .Y(_0642_));
 sky130_fd_sc_hd__a21o_1 _8127_ (.A1(_0419_),
    .A2(_3739_),
    .B1(_0418_),
    .X(_3856_));
 sky130_fd_sc_hd__a21oi_1 _8128_ (.A1(_0398_),
    .A2(_3856_),
    .B1(_0397_),
    .Y(_3857_));
 sky130_fd_sc_hd__xnor2_1 _8129_ (.A(_0430_),
    .B(_3857_),
    .Y(_3858_));
 sky130_fd_sc_hd__nor2_1 _8130_ (.A(_0932_),
    .B(_3764_),
    .Y(_3859_));
 sky130_fd_sc_hd__a31oi_1 _8131_ (.A1(net744),
    .A2(_0932_),
    .A3(_3764_),
    .B1(_3859_),
    .Y(_3860_));
 sky130_fd_sc_hd__o22ai_1 _8132_ (.A1(net744),
    .A2(_0932_),
    .B1(_3860_),
    .B2(net743),
    .Y(_3861_));
 sky130_fd_sc_hd__a21oi_1 _8133_ (.A1(net684),
    .A2(_3858_),
    .B1(_3861_),
    .Y(_3862_));
 sky130_fd_sc_hd__o21ai_0 _8135_ (.A1(net750),
    .A2(\reg_next_pc[19] ),
    .B1(net171),
    .Y(_3864_));
 sky130_fd_sc_hd__a21oi_1 _8136_ (.A1(net750),
    .A2(_3862_),
    .B1(_3864_),
    .Y(_0643_));
 sky130_fd_sc_hd__xnor2_1 _8137_ (.A(_0398_),
    .B(_3850_),
    .Y(_3865_));
 sky130_fd_sc_hd__nor2_1 _8138_ (.A(net699),
    .B(_0930_),
    .Y(_3866_));
 sky130_fd_sc_hd__nor4_1 _8139_ (.A(_0926_),
    .B(_3706_),
    .C(_3708_),
    .D(_3709_),
    .Y(_3867_));
 sky130_fd_sc_hd__mux2i_1 _8140_ (.A0(_0930_),
    .A1(_3866_),
    .S(_3867_),
    .Y(_3868_));
 sky130_fd_sc_hd__o22ai_1 _8141_ (.A1(net744),
    .A2(_0396_),
    .B1(_3868_),
    .B2(net743),
    .Y(_3869_));
 sky130_fd_sc_hd__a21oi_1 _8142_ (.A1(net684),
    .A2(_3865_),
    .B1(_3869_),
    .Y(_3870_));
 sky130_fd_sc_hd__mux2i_1 _8143_ (.A0(\reg_next_pc[18] ),
    .A1(_3870_),
    .S(net750),
    .Y(_3871_));
 sky130_fd_sc_hd__nor2b_1 _8145_ (.A(_3871_),
    .B_N(net171),
    .Y(_0644_));
 sky130_fd_sc_hd__xor2_1 _8146_ (.A(_0419_),
    .B(_3739_),
    .X(_3873_));
 sky130_fd_sc_hd__nand2_1 _8147_ (.A(net744),
    .B(_0926_),
    .Y(_3874_));
 sky130_fd_sc_hd__or3_1 _8148_ (.A(_3708_),
    .B(_3709_),
    .C(_3763_),
    .X(_3875_));
 sky130_fd_sc_hd__mux2_2 _8149_ (.A0(_3874_),
    .A1(_0926_),
    .S(_3875_),
    .X(_3876_));
 sky130_fd_sc_hd__o221ai_1 _8150_ (.A1(net744),
    .A2(_0926_),
    .B1(_3876_),
    .B2(net743),
    .C1(net750),
    .Y(_3877_));
 sky130_fd_sc_hd__a21oi_1 _8151_ (.A1(net684),
    .A2(_3873_),
    .B1(_3877_),
    .Y(_3878_));
 sky130_fd_sc_hd__o21ai_0 _8153_ (.A1(net750),
    .A2(\reg_next_pc[17] ),
    .B1(net171),
    .Y(_3880_));
 sky130_fd_sc_hd__nor2_1 _8154_ (.A(_3878_),
    .B(_3880_),
    .Y(_0645_));
 sky130_fd_sc_hd__nand2_1 _8155_ (.A(\cpu_state[1] ),
    .B(net776),
    .Y(_3881_));
 sky130_fd_sc_hd__a31o_2 _8156_ (.A1(_0401_),
    .A2(_3677_),
    .A3(_3680_),
    .B1(_0400_),
    .X(_3882_));
 sky130_fd_sc_hd__a21oi_1 _8157_ (.A1(_0263_),
    .A2(_3882_),
    .B1(_0262_),
    .Y(_3883_));
 sky130_fd_sc_hd__xnor2_1 _8158_ (.A(_0099_),
    .B(_3883_),
    .Y(_3884_));
 sky130_fd_sc_hd__nand2_1 _8159_ (.A(net744),
    .B(_0923_),
    .Y(_3885_));
 sky130_fd_sc_hd__and2_1 _8160_ (.A(_0399_),
    .B(_3707_),
    .X(_3886_));
 sky130_fd_sc_hd__nand2_1 _8161_ (.A(_0261_),
    .B(_3886_),
    .Y(_3887_));
 sky130_fd_sc_hd__nor3_1 _8162_ (.A(_3706_),
    .B(_3887_),
    .C(_3709_),
    .Y(_3888_));
 sky130_fd_sc_hd__mux2_2 _8163_ (.A0(_0923_),
    .A1(_3885_),
    .S(_3888_),
    .X(_3889_));
 sky130_fd_sc_hd__o22ai_1 _8164_ (.A1(net744),
    .A2(_0923_),
    .B1(_3889_),
    .B2(net743),
    .Y(_3890_));
 sky130_fd_sc_hd__a21oi_1 _8165_ (.A1(net684),
    .A2(_3884_),
    .B1(_3890_),
    .Y(_3891_));
 sky130_fd_sc_hd__nand2_1 _8166_ (.A(\reg_next_pc[16] ),
    .B(net682),
    .Y(_3892_));
 sky130_fd_sc_hd__o21ai_0 _8167_ (.A1(_3881_),
    .A2(_3891_),
    .B1(_3892_),
    .Y(_0646_));
 sky130_fd_sc_hd__nor2_1 _8168_ (.A(_3709_),
    .B(_3763_),
    .Y(_3893_));
 sky130_fd_sc_hd__a21oi_1 _8169_ (.A1(_3886_),
    .A2(_3893_),
    .B1(_0261_),
    .Y(_3894_));
 sky130_fd_sc_hd__nand2_1 _8170_ (.A(net744),
    .B(_3893_),
    .Y(_3895_));
 sky130_fd_sc_hd__nor2_1 _8171_ (.A(_3887_),
    .B(_3895_),
    .Y(_3896_));
 sky130_fd_sc_hd__nor2_1 _8172_ (.A(_3894_),
    .B(_3896_),
    .Y(_3897_));
 sky130_fd_sc_hd__o221ai_1 _8173_ (.A1(net744),
    .A2(_0261_),
    .B1(_3897_),
    .B2(net743),
    .C1(net683),
    .Y(_3898_));
 sky130_fd_sc_hd__nand2_1 _8174_ (.A(_3732_),
    .B(_3736_),
    .Y(_3899_));
 sky130_fd_sc_hd__o21ai_0 _8175_ (.A1(_3678_),
    .A2(_3899_),
    .B1(_3675_),
    .Y(_3900_));
 sky130_fd_sc_hd__nand2_1 _8176_ (.A(_0427_),
    .B(_3900_),
    .Y(_3901_));
 sky130_fd_sc_hd__nand2_1 _8177_ (.A(_3676_),
    .B(_3901_),
    .Y(_3902_));
 sky130_fd_sc_hd__a21oi_1 _8178_ (.A1(_0401_),
    .A2(_3902_),
    .B1(_0400_),
    .Y(_3903_));
 sky130_fd_sc_hd__xnor2_1 _8179_ (.A(_0263_),
    .B(_3903_),
    .Y(_3904_));
 sky130_fd_sc_hd__nor2_1 _8180_ (.A(_3716_),
    .B(_3904_),
    .Y(_3905_));
 sky130_fd_sc_hd__nand2_1 _8181_ (.A(\reg_next_pc[15] ),
    .B(net682),
    .Y(_3906_));
 sky130_fd_sc_hd__o21ai_0 _8182_ (.A1(_3898_),
    .A2(_3905_),
    .B1(_3906_),
    .Y(_0647_));
 sky130_fd_sc_hd__xnor2_1 _8183_ (.A(_0401_),
    .B(_3848_),
    .Y(_3907_));
 sky130_fd_sc_hd__nor2_1 _8184_ (.A(_3706_),
    .B(_3709_),
    .Y(_3908_));
 sky130_fd_sc_hd__nor2_1 _8185_ (.A(net699),
    .B(_0399_),
    .Y(_3909_));
 sky130_fd_sc_hd__a21oi_1 _8186_ (.A1(_3707_),
    .A2(_3908_),
    .B1(_0916_),
    .Y(_3910_));
 sky130_fd_sc_hd__a31oi_1 _8187_ (.A1(_3707_),
    .A2(_3908_),
    .A3(_3909_),
    .B1(_3910_),
    .Y(_3911_));
 sky130_fd_sc_hd__o221ai_1 _8188_ (.A1(net744),
    .A2(_0916_),
    .B1(_3911_),
    .B2(net743),
    .C1(net750),
    .Y(_3912_));
 sky130_fd_sc_hd__a21oi_1 _8189_ (.A1(net684),
    .A2(_3907_),
    .B1(_3912_),
    .Y(_3913_));
 sky130_fd_sc_hd__o21ai_0 _8190_ (.A1(net750),
    .A2(\reg_next_pc[14] ),
    .B1(net171),
    .Y(_3914_));
 sky130_fd_sc_hd__nor2_1 _8191_ (.A(_3913_),
    .B(_3914_),
    .Y(_0648_));
 sky130_fd_sc_hd__nor2_1 _8192_ (.A(_0907_),
    .B(_0909_),
    .Y(_3915_));
 sky130_fd_sc_hd__a21oi_1 _8193_ (.A1(_3915_),
    .A2(_3893_),
    .B1(_0425_),
    .Y(_3916_));
 sky130_fd_sc_hd__a31oi_1 _8194_ (.A1(net744),
    .A2(_3707_),
    .A3(_3893_),
    .B1(_3916_),
    .Y(_3917_));
 sky130_fd_sc_hd__o221ai_1 _8195_ (.A1(net744),
    .A2(_0425_),
    .B1(_3917_),
    .B2(net743),
    .C1(net683),
    .Y(_3918_));
 sky130_fd_sc_hd__xor2_1 _8196_ (.A(_0427_),
    .B(_3900_),
    .X(_3919_));
 sky130_fd_sc_hd__nor2_1 _8197_ (.A(_3716_),
    .B(_3919_),
    .Y(_3920_));
 sky130_fd_sc_hd__nand2_1 _8198_ (.A(\reg_next_pc[13] ),
    .B(net682),
    .Y(_3921_));
 sky130_fd_sc_hd__o21ai_0 _8199_ (.A1(_3918_),
    .A2(_3920_),
    .B1(_3921_),
    .Y(_0649_));
 sky130_fd_sc_hd__a21oi_1 _8200_ (.A1(_0460_),
    .A2(_3908_),
    .B1(_0120_),
    .Y(_3922_));
 sky130_fd_sc_hd__a31oi_1 _8201_ (.A1(decoder_trigger),
    .A2(_3915_),
    .A3(_3908_),
    .B1(_3922_),
    .Y(_3923_));
 sky130_fd_sc_hd__o221ai_1 _8202_ (.A1(decoder_trigger),
    .A2(_0120_),
    .B1(_3923_),
    .B2(net743),
    .C1(net683),
    .Y(_3924_));
 sky130_fd_sc_hd__inv_1 _8203_ (.A(_0404_),
    .Y(_3925_));
 sky130_fd_sc_hd__o21ai_0 _8204_ (.A1(_3669_),
    .A2(_3671_),
    .B1(_3672_),
    .Y(_3926_));
 sky130_fd_sc_hd__a21oi_1 _8205_ (.A1(_0119_),
    .A2(_3926_),
    .B1(_0118_),
    .Y(_3927_));
 sky130_fd_sc_hd__o21bai_1 _8206_ (.A1(_3925_),
    .A2(_3927_),
    .B1_N(_0403_),
    .Y(_3928_));
 sky130_fd_sc_hd__a21oi_1 _8207_ (.A1(_0462_),
    .A2(_3928_),
    .B1(_0461_),
    .Y(_3929_));
 sky130_fd_sc_hd__xnor2_1 _8208_ (.A(_0122_),
    .B(_3929_),
    .Y(_3930_));
 sky130_fd_sc_hd__nor2_1 _8209_ (.A(_3716_),
    .B(_3930_),
    .Y(_3931_));
 sky130_fd_sc_hd__nand2_1 _8210_ (.A(\reg_next_pc[12] ),
    .B(net682),
    .Y(_3932_));
 sky130_fd_sc_hd__o21ai_0 _8211_ (.A1(_3924_),
    .A2(_3931_),
    .B1(_3932_),
    .Y(_0650_));
 sky130_fd_sc_hd__mux2_2 _8212_ (.A0(_3893_),
    .A1(_3895_),
    .S(_0460_),
    .X(_3933_));
 sky130_fd_sc_hd__and2_1 _8213_ (.A(_3732_),
    .B(_3736_),
    .X(_3934_));
 sky130_fd_sc_hd__a21oi_1 _8214_ (.A1(_0119_),
    .A2(_3934_),
    .B1(_0118_),
    .Y(_3935_));
 sky130_fd_sc_hd__o21bai_1 _8215_ (.A1(_3925_),
    .A2(_3935_),
    .B1_N(_0403_),
    .Y(_3936_));
 sky130_fd_sc_hd__xnor2_1 _8216_ (.A(_0462_),
    .B(_3936_),
    .Y(_3937_));
 sky130_fd_sc_hd__nand2_1 _8217_ (.A(net684),
    .B(_3937_),
    .Y(_3938_));
 sky130_fd_sc_hd__o221ai_1 _8218_ (.A1(decoder_trigger),
    .A2(_0460_),
    .B1(_3933_),
    .B2(net743),
    .C1(_3938_),
    .Y(_3939_));
 sky130_fd_sc_hd__o21ai_0 _8219_ (.A1(net750),
    .A2(\reg_next_pc[11] ),
    .B1(net171),
    .Y(_3940_));
 sky130_fd_sc_hd__a21oi_1 _8220_ (.A1(net750),
    .A2(_3939_),
    .B1(_3940_),
    .Y(_0651_));
 sky130_fd_sc_hd__xnor2_1 _8221_ (.A(_0404_),
    .B(_3927_),
    .Y(_3941_));
 sky130_fd_sc_hd__nand2_1 _8222_ (.A(decoder_trigger),
    .B(_0905_),
    .Y(_3942_));
 sky130_fd_sc_hd__nand4_1 _8223_ (.A(_0276_),
    .B(_0457_),
    .C(_0117_),
    .D(_3705_),
    .Y(_3943_));
 sky130_fd_sc_hd__mux2_2 _8224_ (.A0(_3942_),
    .A1(_0905_),
    .S(_3943_),
    .X(_3944_));
 sky130_fd_sc_hd__o221ai_1 _8225_ (.A1(decoder_trigger),
    .A2(_0905_),
    .B1(_3944_),
    .B2(net743),
    .C1(net750),
    .Y(_3945_));
 sky130_fd_sc_hd__a21oi_1 _8226_ (.A1(net684),
    .A2(_3941_),
    .B1(_3945_),
    .Y(_3946_));
 sky130_fd_sc_hd__o21ai_0 _8227_ (.A1(net750),
    .A2(\reg_next_pc[10] ),
    .B1(net171),
    .Y(_3947_));
 sky130_fd_sc_hd__nor2_1 _8228_ (.A(_3946_),
    .B(_3947_),
    .Y(_0652_));
 sky130_fd_sc_hd__nor2_1 _8229_ (.A(net699),
    .B(_0903_),
    .Y(_3948_));
 sky130_fd_sc_hd__mux2i_1 _8230_ (.A0(_3948_),
    .A1(_0903_),
    .S(_3763_),
    .Y(_3949_));
 sky130_fd_sc_hd__xnor2_1 _8231_ (.A(_0119_),
    .B(_3934_),
    .Y(_3950_));
 sky130_fd_sc_hd__nand2_1 _8232_ (.A(net684),
    .B(_3950_),
    .Y(_3951_));
 sky130_fd_sc_hd__o221ai_1 _8233_ (.A1(decoder_trigger),
    .A2(_0117_),
    .B1(_3949_),
    .B2(net743),
    .C1(_3951_),
    .Y(_3952_));
 sky130_fd_sc_hd__o21ai_0 _8234_ (.A1(net750),
    .A2(\reg_next_pc[9] ),
    .B1(net171),
    .Y(_3953_));
 sky130_fd_sc_hd__a21oi_1 _8235_ (.A1(net750),
    .A2(_3952_),
    .B1(_3953_),
    .Y(_0653_));
 sky130_fd_sc_hd__o21ai_0 _8236_ (.A1(_0406_),
    .A2(_3670_),
    .B1(_0436_),
    .Y(_3954_));
 sky130_fd_sc_hd__o21bai_1 _8237_ (.A1(_3669_),
    .A2(_3954_),
    .B1_N(_0435_),
    .Y(_3955_));
 sky130_fd_sc_hd__xor2_1 _8238_ (.A(_0367_),
    .B(_3955_),
    .X(_3956_));
 sky130_fd_sc_hd__nor2_1 _8239_ (.A(_0895_),
    .B(_0897_),
    .Y(_3957_));
 sky130_fd_sc_hd__nand4_1 _8240_ (.A(_0276_),
    .B(_0457_),
    .C(_0434_),
    .D(_3957_),
    .Y(_3958_));
 sky130_fd_sc_hd__nor3_1 _8241_ (.A(net699),
    .B(_0365_),
    .C(_3958_),
    .Y(_3959_));
 sky130_fd_sc_hd__a21oi_1 _8242_ (.A1(_0365_),
    .A2(_3958_),
    .B1(_3959_),
    .Y(_3960_));
 sky130_fd_sc_hd__o221ai_1 _8243_ (.A1(decoder_trigger),
    .A2(_0901_),
    .B1(_3960_),
    .B2(net743),
    .C1(net750),
    .Y(_3961_));
 sky130_fd_sc_hd__a21oi_1 _8244_ (.A1(net684),
    .A2(_3956_),
    .B1(_3961_),
    .Y(_3962_));
 sky130_fd_sc_hd__o21ai_0 _8245_ (.A1(net750),
    .A2(\reg_next_pc[8] ),
    .B1(net171),
    .Y(_3963_));
 sky130_fd_sc_hd__nor2_1 _8246_ (.A(_3962_),
    .B(_3963_),
    .Y(_0654_));
 sky130_fd_sc_hd__o21bai_1 _8247_ (.A1(_3729_),
    .A2(_3730_),
    .B1_N(_0274_),
    .Y(_3964_));
 sky130_fd_sc_hd__a21oi_1 _8248_ (.A1(_0407_),
    .A2(_3964_),
    .B1(_0406_),
    .Y(_3965_));
 sky130_fd_sc_hd__xor2_1 _8249_ (.A(_0436_),
    .B(_3965_),
    .X(_3966_));
 sky130_fd_sc_hd__nand4_1 _8250_ (.A(decoder_trigger),
    .B(_0434_),
    .C(_3957_),
    .D(_3762_),
    .Y(_3967_));
 sky130_fd_sc_hd__nand2_1 _8251_ (.A(_3957_),
    .B(_3762_),
    .Y(_3968_));
 sky130_fd_sc_hd__nand2_1 _8252_ (.A(_0899_),
    .B(_3968_),
    .Y(_3969_));
 sky130_fd_sc_hd__a21oi_1 _8253_ (.A1(_3967_),
    .A2(_3969_),
    .B1(net743),
    .Y(_3970_));
 sky130_fd_sc_hd__a21oi_1 _8254_ (.A1(net684),
    .A2(_3966_),
    .B1(_3970_),
    .Y(_3971_));
 sky130_fd_sc_hd__o21ai_0 _8255_ (.A1(decoder_trigger),
    .A2(_0434_),
    .B1(_3971_),
    .Y(_3972_));
 sky130_fd_sc_hd__o21ai_0 _8256_ (.A1(net750),
    .A2(\reg_next_pc[7] ),
    .B1(net171),
    .Y(_3973_));
 sky130_fd_sc_hd__a21oi_1 _8257_ (.A1(net750),
    .A2(_3972_),
    .B1(_3973_),
    .Y(_0655_));
 sky130_fd_sc_hd__a21oi_1 _8258_ (.A1(_0051_),
    .A2(_0069_),
    .B1(_0408_),
    .Y(_3974_));
 sky130_fd_sc_hd__nor2b_1 _8259_ (.A(_3974_),
    .B_N(_0268_),
    .Y(_3975_));
 sky130_fd_sc_hd__o21ai_0 _8260_ (.A1(_0267_),
    .A2(_3975_),
    .B1(_0459_),
    .Y(_3976_));
 sky130_fd_sc_hd__nand2b_1 _8261_ (.A_N(_0458_),
    .B(_3976_),
    .Y(_3977_));
 sky130_fd_sc_hd__a21oi_1 _8262_ (.A1(_0275_),
    .A2(_3977_),
    .B1(_0274_),
    .Y(_3978_));
 sky130_fd_sc_hd__xnor2_1 _8263_ (.A(_0407_),
    .B(_3978_),
    .Y(_3979_));
 sky130_fd_sc_hd__nand3_1 _8264_ (.A(_0276_),
    .B(_0457_),
    .C(_0273_),
    .Y(_3980_));
 sky130_fd_sc_hd__nor3_1 _8265_ (.A(net699),
    .B(_0405_),
    .C(_3980_),
    .Y(_3981_));
 sky130_fd_sc_hd__a21oi_1 _8266_ (.A1(_0405_),
    .A2(_3980_),
    .B1(_3981_),
    .Y(_3982_));
 sky130_fd_sc_hd__o22ai_1 _8267_ (.A1(decoder_trigger),
    .A2(_0897_),
    .B1(_3982_),
    .B2(net743),
    .Y(_3983_));
 sky130_fd_sc_hd__a21oi_1 _8268_ (.A1(net684),
    .A2(_3979_),
    .B1(_3983_),
    .Y(_3984_));
 sky130_fd_sc_hd__nand2_1 _8269_ (.A(net750),
    .B(_3984_),
    .Y(_3985_));
 sky130_fd_sc_hd__o211a_1 _8270_ (.A1(net750),
    .A2(\reg_next_pc[6] ),
    .B1(net171),
    .C1(_3985_),
    .X(_0656_));
 sky130_fd_sc_hd__a21o_1 _8271_ (.A1(_0053_),
    .A2(_0268_),
    .B1(_0267_),
    .X(_3986_));
 sky130_fd_sc_hd__a211oi_1 _8272_ (.A1(_0459_),
    .A2(_3986_),
    .B1(_0458_),
    .C1(_0275_),
    .Y(_3987_));
 sky130_fd_sc_hd__o21ai_0 _8273_ (.A1(_3729_),
    .A2(_3730_),
    .B1(net684),
    .Y(_3988_));
 sky130_fd_sc_hd__o221ai_1 _8274_ (.A1(decoder_trigger),
    .A2(_0895_),
    .B1(_3987_),
    .B2(_3988_),
    .C1(net750),
    .Y(_3989_));
 sky130_fd_sc_hd__nor2_1 _8275_ (.A(net699),
    .B(_0273_),
    .Y(_3990_));
 sky130_fd_sc_hd__nor2_1 _8276_ (.A(_0895_),
    .B(_3762_),
    .Y(_3991_));
 sky130_fd_sc_hd__a21oi_1 _8277_ (.A1(_3762_),
    .A2(_3990_),
    .B1(_3991_),
    .Y(_3992_));
 sky130_fd_sc_hd__nor2_1 _8278_ (.A(net743),
    .B(_3992_),
    .Y(_3993_));
 sky130_fd_sc_hd__o221a_2 _8279_ (.A1(net750),
    .A2(\reg_next_pc[5] ),
    .B1(_3989_),
    .B2(_3993_),
    .C1(net171),
    .X(_0657_));
 sky130_fd_sc_hd__or3_1 _8280_ (.A(_0459_),
    .B(_0267_),
    .C(_3975_),
    .X(_3994_));
 sky130_fd_sc_hd__nand3_1 _8281_ (.A(net684),
    .B(_3976_),
    .C(_3994_),
    .Y(_3995_));
 sky130_fd_sc_hd__o21ai_0 _8282_ (.A1(_0276_),
    .A2(net743),
    .B1(decoder_trigger),
    .Y(_3996_));
 sky130_fd_sc_hd__nand2_1 _8283_ (.A(_0276_),
    .B(net676),
    .Y(_3997_));
 sky130_fd_sc_hd__nor2_1 _8284_ (.A(_0457_),
    .B(_3997_),
    .Y(_3998_));
 sky130_fd_sc_hd__a21oi_1 _8285_ (.A1(_0457_),
    .A2(_3996_),
    .B1(_3998_),
    .Y(_3999_));
 sky130_fd_sc_hd__o21ai_0 _8286_ (.A1(net750),
    .A2(\reg_next_pc[4] ),
    .B1(net171),
    .Y(_4000_));
 sky130_fd_sc_hd__a31oi_1 _8287_ (.A1(net750),
    .A2(_3995_),
    .A3(_3999_),
    .B1(_4000_),
    .Y(_0658_));
 sky130_fd_sc_hd__xnor2_1 _8288_ (.A(_0053_),
    .B(_0268_),
    .Y(_4001_));
 sky130_fd_sc_hd__nor2_1 _8289_ (.A(net743),
    .B(_0277_),
    .Y(_4002_));
 sky130_fd_sc_hd__a211oi_1 _8290_ (.A1(net743),
    .A2(_4001_),
    .B1(_4002_),
    .C1(net699),
    .Y(_4003_));
 sky130_fd_sc_hd__a211o_1 _8292_ (.A1(net699),
    .A2(_0266_),
    .B1(_4003_),
    .C1(_3485_),
    .X(_4005_));
 sky130_fd_sc_hd__o211a_1 _8293_ (.A1(net750),
    .A2(\reg_next_pc[3] ),
    .B1(net171),
    .C1(_4005_),
    .X(_0659_));
 sky130_fd_sc_hd__nor2b_1 _8294_ (.A(net750),
    .B_N(\reg_next_pc[2] ),
    .Y(_4006_));
 sky130_fd_sc_hd__nor2_1 _8295_ (.A(decoder_trigger),
    .B(_0888_),
    .Y(_4007_));
 sky130_fd_sc_hd__a21oi_1 _8296_ (.A1(_0888_),
    .A2(net676),
    .B1(_4007_),
    .Y(_4008_));
 sky130_fd_sc_hd__nand2_1 _8297_ (.A(_0054_),
    .B(net684),
    .Y(_4009_));
 sky130_fd_sc_hd__a21oi_1 _8299_ (.A1(_4008_),
    .A2(_4009_),
    .B1(_3485_),
    .Y(_4011_));
 sky130_fd_sc_hd__o21a_1 _8300_ (.A1(_4006_),
    .A2(_4011_),
    .B1(net171),
    .X(_0660_));
 sky130_fd_sc_hd__mux2i_1 _8301_ (.A0(_0421_),
    .A1(_0420_),
    .S(_3716_),
    .Y(_4012_));
 sky130_fd_sc_hd__nand2_1 _8302_ (.A(\reg_next_pc[1] ),
    .B(net682),
    .Y(_4013_));
 sky130_fd_sc_hd__o21ai_0 _8303_ (.A1(_3881_),
    .A2(_4012_),
    .B1(_4013_),
    .Y(_0661_));
 sky130_fd_sc_hd__inv_1 _8304_ (.A(\count_cycle[59] ),
    .Y(_4014_));
 sky130_fd_sc_hd__inv_1 _8305_ (.A(\count_cycle[56] ),
    .Y(_4015_));
 sky130_fd_sc_hd__and3_1 _8306_ (.A(\count_cycle[50] ),
    .B(\count_cycle[49] ),
    .C(\count_cycle[51] ),
    .X(_4016_));
 sky130_fd_sc_hd__and3_1 _8307_ (.A(\count_cycle[53] ),
    .B(\count_cycle[52] ),
    .C(_4016_),
    .X(_4017_));
 sky130_fd_sc_hd__nand3_1 _8308_ (.A(\count_cycle[55] ),
    .B(\count_cycle[54] ),
    .C(_4017_),
    .Y(_4018_));
 sky130_fd_sc_hd__nor2_1 _8309_ (.A(_4015_),
    .B(_4018_),
    .Y(_4019_));
 sky130_fd_sc_hd__nand3_1 _8310_ (.A(\count_cycle[58] ),
    .B(\count_cycle[57] ),
    .C(_4019_),
    .Y(_4020_));
 sky130_fd_sc_hd__nor2_1 _8311_ (.A(_4014_),
    .B(_4020_),
    .Y(_4021_));
 sky130_fd_sc_hd__nand3_1 _8312_ (.A(\count_cycle[61] ),
    .B(\count_cycle[60] ),
    .C(_4021_),
    .Y(_4022_));
 sky130_fd_sc_hd__nand3_1 _8313_ (.A(\count_cycle[48] ),
    .B(\count_cycle[47] ),
    .C(\count_cycle[46] ),
    .Y(_4023_));
 sky130_fd_sc_hd__and3_1 _8314_ (.A(\count_cycle[43] ),
    .B(\count_cycle[42] ),
    .C(\count_cycle[41] ),
    .X(_4024_));
 sky130_fd_sc_hd__nand3_1 _8315_ (.A(\count_cycle[45] ),
    .B(\count_cycle[44] ),
    .C(_4024_),
    .Y(_4025_));
 sky130_fd_sc_hd__nand4_1 _8316_ (.A(\count_cycle[40] ),
    .B(\count_cycle[39] ),
    .C(\count_cycle[38] ),
    .D(\count_cycle[37] ),
    .Y(_4026_));
 sky130_fd_sc_hd__and4_1 _8317_ (.A(\count_cycle[19] ),
    .B(\count_cycle[18] ),
    .C(\count_cycle[17] ),
    .D(\count_cycle[16] ),
    .X(_4027_));
 sky130_fd_sc_hd__and3_1 _8318_ (.A(\count_cycle[21] ),
    .B(\count_cycle[20] ),
    .C(_4027_),
    .X(_4028_));
 sky130_fd_sc_hd__nand4_1 _8319_ (.A(\count_cycle[24] ),
    .B(\count_cycle[23] ),
    .C(\count_cycle[22] ),
    .D(_4028_),
    .Y(_4029_));
 sky130_fd_sc_hd__and3_1 _8320_ (.A(\count_cycle[27] ),
    .B(\count_cycle[26] ),
    .C(\count_cycle[25] ),
    .X(_4030_));
 sky130_fd_sc_hd__and4_1 _8321_ (.A(\count_cycle[30] ),
    .B(\count_cycle[29] ),
    .C(\count_cycle[28] ),
    .D(_4030_),
    .X(_4031_));
 sky130_fd_sc_hd__and3_1 _8322_ (.A(\count_cycle[33] ),
    .B(\count_cycle[32] ),
    .C(\count_cycle[31] ),
    .X(_4032_));
 sky130_fd_sc_hd__and3_1 _8323_ (.A(\count_cycle[35] ),
    .B(\count_cycle[34] ),
    .C(_4032_),
    .X(_4033_));
 sky130_fd_sc_hd__nand3_1 _8324_ (.A(\count_cycle[36] ),
    .B(_4031_),
    .C(_4033_),
    .Y(_4034_));
 sky130_fd_sc_hd__nand2_1 _8325_ (.A(\count_cycle[10] ),
    .B(\count_cycle[9] ),
    .Y(_4035_));
 sky130_fd_sc_hd__nand2_1 _8326_ (.A(\count_cycle[12] ),
    .B(\count_cycle[11] ),
    .Y(_4036_));
 sky130_fd_sc_hd__nor2_1 _8327_ (.A(_4035_),
    .B(_4036_),
    .Y(_4037_));
 sky130_fd_sc_hd__nand4_1 _8328_ (.A(\count_cycle[15] ),
    .B(\count_cycle[14] ),
    .C(\count_cycle[13] ),
    .D(_4037_),
    .Y(_4038_));
 sky130_fd_sc_hd__and4_1 _8329_ (.A(\count_cycle[5] ),
    .B(\count_cycle[4] ),
    .C(\count_cycle[3] ),
    .D(\count_cycle[2] ),
    .X(_4039_));
 sky130_fd_sc_hd__and3_1 _8330_ (.A(\count_cycle[6] ),
    .B(\count_cycle[7] ),
    .C(_4039_),
    .X(_4040_));
 sky130_fd_sc_hd__and3_1 _8331_ (.A(\count_cycle[8] ),
    .B(_0132_),
    .C(_4040_),
    .X(_4041_));
 sky130_fd_sc_hd__nand2b_1 _8332_ (.A_N(_4038_),
    .B(_4041_),
    .Y(_4042_));
 sky130_fd_sc_hd__nor4_2 _8333_ (.A(_4026_),
    .B(_4029_),
    .C(_4034_),
    .D(_4042_),
    .Y(_4043_));
 sky130_fd_sc_hd__nand2b_1 _8334_ (.A_N(_4025_),
    .B(_4043_),
    .Y(_4044_));
 sky130_fd_sc_hd__or2_2 _8335_ (.A(_4023_),
    .B(_4044_),
    .X(_4045_));
 sky130_fd_sc_hd__o21ai_0 _8337_ (.A1(_4022_),
    .A2(_4045_),
    .B1(\count_cycle[62] ),
    .Y(_4047_));
 sky130_fd_sc_hd__or3_1 _8338_ (.A(\count_cycle[62] ),
    .B(_4022_),
    .C(_4045_),
    .X(_4048_));
 sky130_fd_sc_hd__a21boi_0 _8339_ (.A1(_4047_),
    .A2(_4048_),
    .B1_N(net775),
    .Y(_0662_));
 sky130_fd_sc_hd__nand2_1 _8340_ (.A(\count_cycle[60] ),
    .B(_4021_),
    .Y(_4049_));
 sky130_fd_sc_hd__nand4_4 _8341_ (.A(\count_cycle[8] ),
    .B(\count_cycle[1] ),
    .C(\count_cycle[0] ),
    .D(_4040_),
    .Y(_4050_));
 sky130_fd_sc_hd__or2_1 _8342_ (.A(_4038_),
    .B(_4050_),
    .X(_4051_));
 sky130_fd_sc_hd__nor3_4 _8343_ (.A(_4029_),
    .B(_4034_),
    .C(_4051_),
    .Y(_4052_));
 sky130_fd_sc_hd__nand2b_2 _8344_ (.A_N(_4026_),
    .B(_4052_),
    .Y(_4053_));
 sky130_fd_sc_hd__or3_1 _8345_ (.A(_4023_),
    .B(_4025_),
    .C(_4053_),
    .X(_4054_));
 sky130_fd_sc_hd__o21ai_0 _8347_ (.A1(_4049_),
    .A2(_4054_),
    .B1(\count_cycle[61] ),
    .Y(_4056_));
 sky130_fd_sc_hd__or3_1 _8348_ (.A(\count_cycle[61] ),
    .B(_4049_),
    .C(_4054_),
    .X(_4057_));
 sky130_fd_sc_hd__a21boi_0 _8349_ (.A1(_4056_),
    .A2(_4057_),
    .B1_N(net775),
    .Y(_0663_));
 sky130_fd_sc_hd__nor3_1 _8350_ (.A(_4014_),
    .B(_4020_),
    .C(_4045_),
    .Y(_4058_));
 sky130_fd_sc_hd__xor2_1 _8351_ (.A(\count_cycle[60] ),
    .B(_4058_),
    .X(_4059_));
 sky130_fd_sc_hd__and2_1 _8352_ (.A(net775),
    .B(_4059_),
    .X(_0664_));
 sky130_fd_sc_hd__o21ai_0 _8353_ (.A1(_4020_),
    .A2(_4054_),
    .B1(\count_cycle[59] ),
    .Y(_4060_));
 sky130_fd_sc_hd__or3_1 _8354_ (.A(\count_cycle[59] ),
    .B(_4020_),
    .C(_4054_),
    .X(_4061_));
 sky130_fd_sc_hd__a21boi_0 _8355_ (.A1(_4060_),
    .A2(_4061_),
    .B1_N(net775),
    .Y(_0665_));
 sky130_fd_sc_hd__nand2_1 _8356_ (.A(\count_cycle[57] ),
    .B(_4019_),
    .Y(_4062_));
 sky130_fd_sc_hd__o21ai_0 _8357_ (.A1(_4062_),
    .A2(_4045_),
    .B1(\count_cycle[58] ),
    .Y(_4063_));
 sky130_fd_sc_hd__or3_1 _8358_ (.A(\count_cycle[58] ),
    .B(_4062_),
    .C(_4045_),
    .X(_4064_));
 sky130_fd_sc_hd__a21boi_0 _8359_ (.A1(_4063_),
    .A2(_4064_),
    .B1_N(net775),
    .Y(_0666_));
 sky130_fd_sc_hd__nor3_1 _8360_ (.A(_4015_),
    .B(_4018_),
    .C(_4054_),
    .Y(_4065_));
 sky130_fd_sc_hd__xor2_1 _8361_ (.A(\count_cycle[57] ),
    .B(_4065_),
    .X(_4066_));
 sky130_fd_sc_hd__and2_1 _8362_ (.A(net775),
    .B(_4066_),
    .X(_0667_));
 sky130_fd_sc_hd__o21ai_0 _8363_ (.A1(_4018_),
    .A2(_4045_),
    .B1(\count_cycle[56] ),
    .Y(_4067_));
 sky130_fd_sc_hd__or3_1 _8364_ (.A(\count_cycle[56] ),
    .B(_4018_),
    .C(_4045_),
    .X(_4068_));
 sky130_fd_sc_hd__a21boi_0 _8365_ (.A1(_4067_),
    .A2(_4068_),
    .B1_N(net775),
    .Y(_0668_));
 sky130_fd_sc_hd__nand2_1 _8366_ (.A(\count_cycle[54] ),
    .B(_4017_),
    .Y(_4069_));
 sky130_fd_sc_hd__o21ai_0 _8367_ (.A1(_4069_),
    .A2(_4054_),
    .B1(\count_cycle[55] ),
    .Y(_4070_));
 sky130_fd_sc_hd__or3_1 _8368_ (.A(\count_cycle[55] ),
    .B(_4069_),
    .C(_4054_),
    .X(_4071_));
 sky130_fd_sc_hd__a21boi_0 _8369_ (.A1(_4070_),
    .A2(_4071_),
    .B1_N(net775),
    .Y(_0669_));
 sky130_fd_sc_hd__nand3_1 _8370_ (.A(\count_cycle[53] ),
    .B(\count_cycle[52] ),
    .C(_4016_),
    .Y(_4072_));
 sky130_fd_sc_hd__nor2_1 _8371_ (.A(_4072_),
    .B(_4045_),
    .Y(_4073_));
 sky130_fd_sc_hd__xor2_1 _8372_ (.A(\count_cycle[54] ),
    .B(_4073_),
    .X(_4074_));
 sky130_fd_sc_hd__and2_1 _8373_ (.A(net775),
    .B(_4074_),
    .X(_0670_));
 sky130_fd_sc_hd__nand2_1 _8374_ (.A(\count_cycle[52] ),
    .B(_4016_),
    .Y(_4075_));
 sky130_fd_sc_hd__o21ai_0 _8375_ (.A1(_4075_),
    .A2(_4054_),
    .B1(\count_cycle[53] ),
    .Y(_4076_));
 sky130_fd_sc_hd__or3_1 _8376_ (.A(\count_cycle[53] ),
    .B(_4075_),
    .C(_4054_),
    .X(_4077_));
 sky130_fd_sc_hd__a21boi_0 _8377_ (.A1(_4076_),
    .A2(_4077_),
    .B1_N(net775),
    .Y(_0671_));
 sky130_fd_sc_hd__nand3_1 _8378_ (.A(\count_cycle[50] ),
    .B(\count_cycle[49] ),
    .C(\count_cycle[51] ),
    .Y(_4078_));
 sky130_fd_sc_hd__nor2_1 _8379_ (.A(_4078_),
    .B(_4045_),
    .Y(_4079_));
 sky130_fd_sc_hd__xor2_1 _8380_ (.A(\count_cycle[52] ),
    .B(_4079_),
    .X(_4080_));
 sky130_fd_sc_hd__and2_1 _8381_ (.A(net775),
    .B(_4080_),
    .X(_0672_));
 sky130_fd_sc_hd__nand2_1 _8382_ (.A(\count_cycle[50] ),
    .B(\count_cycle[49] ),
    .Y(_4081_));
 sky130_fd_sc_hd__o21ai_0 _8383_ (.A1(_4081_),
    .A2(_4054_),
    .B1(\count_cycle[51] ),
    .Y(_4082_));
 sky130_fd_sc_hd__or3_1 _8384_ (.A(\count_cycle[51] ),
    .B(_4081_),
    .C(_4054_),
    .X(_4083_));
 sky130_fd_sc_hd__a21boi_0 _8385_ (.A1(_4082_),
    .A2(_4083_),
    .B1_N(net775),
    .Y(_0673_));
 sky130_fd_sc_hd__inv_1 _8386_ (.A(\count_cycle[49] ),
    .Y(_4084_));
 sky130_fd_sc_hd__nor2_1 _8387_ (.A(_4084_),
    .B(_4045_),
    .Y(_4085_));
 sky130_fd_sc_hd__xor2_1 _8388_ (.A(\count_cycle[50] ),
    .B(_4085_),
    .X(_4086_));
 sky130_fd_sc_hd__and2_1 _8389_ (.A(net775),
    .B(_4086_),
    .X(_0674_));
 sky130_fd_sc_hd__xnor2_1 _8390_ (.A(\count_cycle[49] ),
    .B(_4054_),
    .Y(_4087_));
 sky130_fd_sc_hd__and2_1 _8391_ (.A(net775),
    .B(_4087_),
    .X(_0675_));
 sky130_fd_sc_hd__nand2_1 _8392_ (.A(\count_cycle[47] ),
    .B(\count_cycle[46] ),
    .Y(_4088_));
 sky130_fd_sc_hd__o21ai_0 _8393_ (.A1(_4088_),
    .A2(_4044_),
    .B1(\count_cycle[48] ),
    .Y(_4089_));
 sky130_fd_sc_hd__or3_1 _8394_ (.A(\count_cycle[48] ),
    .B(_4088_),
    .C(_4044_),
    .X(_4090_));
 sky130_fd_sc_hd__a21boi_0 _8395_ (.A1(_4089_),
    .A2(_4090_),
    .B1_N(net775),
    .Y(_0676_));
 sky130_fd_sc_hd__nor2_1 _8396_ (.A(_4025_),
    .B(_4053_),
    .Y(_4091_));
 sky130_fd_sc_hd__nand2_1 _8397_ (.A(\count_cycle[46] ),
    .B(_4091_),
    .Y(_4092_));
 sky130_fd_sc_hd__xnor2_1 _8398_ (.A(\count_cycle[47] ),
    .B(_4092_),
    .Y(_4093_));
 sky130_fd_sc_hd__and2_1 _8399_ (.A(net775),
    .B(_4093_),
    .X(_0677_));
 sky130_fd_sc_hd__xnor2_1 _8400_ (.A(\count_cycle[46] ),
    .B(_4044_),
    .Y(_4094_));
 sky130_fd_sc_hd__and2_1 _8401_ (.A(net775),
    .B(_4094_),
    .X(_0678_));
 sky130_fd_sc_hd__nand2_1 _8402_ (.A(\count_cycle[44] ),
    .B(_4024_),
    .Y(_4095_));
 sky130_fd_sc_hd__o21ai_0 _8403_ (.A1(_4095_),
    .A2(_4053_),
    .B1(\count_cycle[45] ),
    .Y(_4096_));
 sky130_fd_sc_hd__or3_1 _8404_ (.A(\count_cycle[45] ),
    .B(_4095_),
    .C(_4053_),
    .X(_4097_));
 sky130_fd_sc_hd__a21boi_0 _8405_ (.A1(_4096_),
    .A2(_4097_),
    .B1_N(net775),
    .Y(_0679_));
 sky130_fd_sc_hd__nand2_1 _8406_ (.A(_4024_),
    .B(_4043_),
    .Y(_4098_));
 sky130_fd_sc_hd__xnor2_1 _8407_ (.A(\count_cycle[44] ),
    .B(_4098_),
    .Y(_4099_));
 sky130_fd_sc_hd__and2_1 _8408_ (.A(net775),
    .B(_4099_),
    .X(_0680_));
 sky130_fd_sc_hd__nand2_1 _8409_ (.A(\count_cycle[42] ),
    .B(\count_cycle[41] ),
    .Y(_4100_));
 sky130_fd_sc_hd__o21ai_0 _8410_ (.A1(_4100_),
    .A2(_4053_),
    .B1(\count_cycle[43] ),
    .Y(_4101_));
 sky130_fd_sc_hd__or3_1 _8411_ (.A(\count_cycle[43] ),
    .B(_4100_),
    .C(_4053_),
    .X(_4102_));
 sky130_fd_sc_hd__a21boi_0 _8412_ (.A1(_4101_),
    .A2(_4102_),
    .B1_N(net775),
    .Y(_0681_));
 sky130_fd_sc_hd__nand2_1 _8413_ (.A(\count_cycle[41] ),
    .B(_4043_),
    .Y(_4103_));
 sky130_fd_sc_hd__xnor2_1 _8414_ (.A(\count_cycle[42] ),
    .B(_4103_),
    .Y(_4104_));
 sky130_fd_sc_hd__and2_1 _8415_ (.A(net775),
    .B(_4104_),
    .X(_0682_));
 sky130_fd_sc_hd__xnor2_1 _8416_ (.A(\count_cycle[41] ),
    .B(_4053_),
    .Y(_4105_));
 sky130_fd_sc_hd__and2_1 _8417_ (.A(net775),
    .B(_4105_),
    .X(_0683_));
 sky130_fd_sc_hd__nand3_1 _8418_ (.A(\count_cycle[39] ),
    .B(\count_cycle[38] ),
    .C(\count_cycle[37] ),
    .Y(_4106_));
 sky130_fd_sc_hd__nor4_1 _8419_ (.A(_4106_),
    .B(_4029_),
    .C(_4034_),
    .D(_4042_),
    .Y(_4107_));
 sky130_fd_sc_hd__xor2_1 _8420_ (.A(\count_cycle[40] ),
    .B(_4107_),
    .X(_4108_));
 sky130_fd_sc_hd__and2_1 _8421_ (.A(net775),
    .B(_4108_),
    .X(_0684_));
 sky130_fd_sc_hd__nand3_1 _8422_ (.A(\count_cycle[38] ),
    .B(\count_cycle[37] ),
    .C(_4052_),
    .Y(_4109_));
 sky130_fd_sc_hd__xnor2_1 _8423_ (.A(\count_cycle[39] ),
    .B(_4109_),
    .Y(_4110_));
 sky130_fd_sc_hd__and2_1 _8424_ (.A(net775),
    .B(_4110_),
    .X(_0685_));
 sky130_fd_sc_hd__inv_1 _8425_ (.A(\count_cycle[37] ),
    .Y(_4111_));
 sky130_fd_sc_hd__or4_1 _8426_ (.A(_4111_),
    .B(_4029_),
    .C(_4034_),
    .D(_4042_),
    .X(_4112_));
 sky130_fd_sc_hd__xnor2_1 _8427_ (.A(\count_cycle[38] ),
    .B(_4112_),
    .Y(_4113_));
 sky130_fd_sc_hd__and2_1 _8428_ (.A(net775),
    .B(_4113_),
    .X(_0686_));
 sky130_fd_sc_hd__xor2_1 _8429_ (.A(\count_cycle[37] ),
    .B(_4052_),
    .X(_4114_));
 sky130_fd_sc_hd__and2_1 _8430_ (.A(net775),
    .B(_4114_),
    .X(_0687_));
 sky130_fd_sc_hd__nor2_1 _8431_ (.A(_4029_),
    .B(_4042_),
    .Y(_4115_));
 sky130_fd_sc_hd__and3_1 _8432_ (.A(_4031_),
    .B(_4033_),
    .C(_4115_),
    .X(_4116_));
 sky130_fd_sc_hd__xor2_1 _8433_ (.A(\count_cycle[36] ),
    .B(_4116_),
    .X(_4117_));
 sky130_fd_sc_hd__and2_1 _8434_ (.A(net775),
    .B(_4117_),
    .X(_0688_));
 sky130_fd_sc_hd__nand2_1 _8435_ (.A(\count_cycle[34] ),
    .B(_4032_),
    .Y(_4118_));
 sky130_fd_sc_hd__nor2_1 _8436_ (.A(_4029_),
    .B(_4051_),
    .Y(_4119_));
 sky130_fd_sc_hd__nand2_1 _8437_ (.A(_4031_),
    .B(_4119_),
    .Y(_4120_));
 sky130_fd_sc_hd__o21ai_0 _8438_ (.A1(_4118_),
    .A2(_4120_),
    .B1(\count_cycle[35] ),
    .Y(_4121_));
 sky130_fd_sc_hd__or3_1 _8439_ (.A(\count_cycle[35] ),
    .B(_4118_),
    .C(_4120_),
    .X(_4122_));
 sky130_fd_sc_hd__a21boi_0 _8440_ (.A1(_4121_),
    .A2(_4122_),
    .B1_N(net775),
    .Y(_0689_));
 sky130_fd_sc_hd__and3_1 _8441_ (.A(_4031_),
    .B(_4032_),
    .C(_4115_),
    .X(_4123_));
 sky130_fd_sc_hd__xor2_1 _8442_ (.A(\count_cycle[34] ),
    .B(_4123_),
    .X(_4124_));
 sky130_fd_sc_hd__and2_1 _8443_ (.A(net775),
    .B(_4124_),
    .X(_0690_));
 sky130_fd_sc_hd__nand2_1 _8444_ (.A(\count_cycle[32] ),
    .B(\count_cycle[31] ),
    .Y(_4125_));
 sky130_fd_sc_hd__o21ai_0 _8445_ (.A1(_4125_),
    .A2(_4120_),
    .B1(\count_cycle[33] ),
    .Y(_4126_));
 sky130_fd_sc_hd__or3_1 _8446_ (.A(\count_cycle[33] ),
    .B(_4125_),
    .C(_4120_),
    .X(_4127_));
 sky130_fd_sc_hd__a21boi_0 _8447_ (.A1(_4126_),
    .A2(_4127_),
    .B1_N(net775),
    .Y(_0691_));
 sky130_fd_sc_hd__nand3_1 _8448_ (.A(\count_cycle[31] ),
    .B(_4031_),
    .C(_4115_),
    .Y(_4128_));
 sky130_fd_sc_hd__xnor2_1 _8449_ (.A(\count_cycle[32] ),
    .B(_4128_),
    .Y(_4129_));
 sky130_fd_sc_hd__and2_1 _8450_ (.A(net775),
    .B(_4129_),
    .X(_0692_));
 sky130_fd_sc_hd__xnor2_1 _8451_ (.A(\count_cycle[31] ),
    .B(_4120_),
    .Y(_4130_));
 sky130_fd_sc_hd__and2_1 _8452_ (.A(net775),
    .B(_4130_),
    .X(_0693_));
 sky130_fd_sc_hd__nand4_1 _8453_ (.A(\count_cycle[29] ),
    .B(\count_cycle[28] ),
    .C(_4030_),
    .D(_4115_),
    .Y(_4131_));
 sky130_fd_sc_hd__xnor2_1 _8454_ (.A(\count_cycle[30] ),
    .B(_4131_),
    .Y(_4132_));
 sky130_fd_sc_hd__and2_1 _8455_ (.A(net776),
    .B(_4132_),
    .X(_0694_));
 sky130_fd_sc_hd__and3_1 _8456_ (.A(\count_cycle[26] ),
    .B(\count_cycle[25] ),
    .C(_4119_),
    .X(_4133_));
 sky130_fd_sc_hd__nand3_1 _8457_ (.A(\count_cycle[28] ),
    .B(\count_cycle[27] ),
    .C(_4133_),
    .Y(_4134_));
 sky130_fd_sc_hd__xnor2_1 _8458_ (.A(\count_cycle[29] ),
    .B(_4134_),
    .Y(_4135_));
 sky130_fd_sc_hd__and2_1 _8459_ (.A(net776),
    .B(_4135_),
    .X(_0695_));
 sky130_fd_sc_hd__nand2_1 _8460_ (.A(_4030_),
    .B(_4115_),
    .Y(_4136_));
 sky130_fd_sc_hd__xnor2_1 _8461_ (.A(\count_cycle[28] ),
    .B(_4136_),
    .Y(_4137_));
 sky130_fd_sc_hd__and2_1 _8462_ (.A(net776),
    .B(_4137_),
    .X(_0696_));
 sky130_fd_sc_hd__xor2_1 _8463_ (.A(\count_cycle[27] ),
    .B(_4133_),
    .X(_4138_));
 sky130_fd_sc_hd__and2_1 _8464_ (.A(net776),
    .B(_4138_),
    .X(_0697_));
 sky130_fd_sc_hd__nand2_1 _8465_ (.A(\count_cycle[25] ),
    .B(_4115_),
    .Y(_4139_));
 sky130_fd_sc_hd__xnor2_1 _8466_ (.A(\count_cycle[26] ),
    .B(_4139_),
    .Y(_4140_));
 sky130_fd_sc_hd__and2_1 _8467_ (.A(net776),
    .B(_4140_),
    .X(_0698_));
 sky130_fd_sc_hd__xor2_1 _8468_ (.A(\count_cycle[25] ),
    .B(_4119_),
    .X(_4141_));
 sky130_fd_sc_hd__and2_1 _8469_ (.A(net776),
    .B(_4141_),
    .X(_0699_));
 sky130_fd_sc_hd__nand3_1 _8470_ (.A(\count_cycle[23] ),
    .B(\count_cycle[22] ),
    .C(_4028_),
    .Y(_4142_));
 sky130_fd_sc_hd__o21ai_0 _8471_ (.A1(_4142_),
    .A2(_4042_),
    .B1(\count_cycle[24] ),
    .Y(_4143_));
 sky130_fd_sc_hd__or3_1 _8472_ (.A(\count_cycle[24] ),
    .B(_4142_),
    .C(_4042_),
    .X(_4144_));
 sky130_fd_sc_hd__a21boi_0 _8473_ (.A1(_4143_),
    .A2(_4144_),
    .B1_N(net775),
    .Y(_0700_));
 sky130_fd_sc_hd__nor2_1 _8474_ (.A(_4038_),
    .B(_4050_),
    .Y(_4145_));
 sky130_fd_sc_hd__nand3_1 _8475_ (.A(\count_cycle[22] ),
    .B(_4028_),
    .C(_4145_),
    .Y(_4146_));
 sky130_fd_sc_hd__xnor2_1 _8476_ (.A(\count_cycle[23] ),
    .B(_4146_),
    .Y(_4147_));
 sky130_fd_sc_hd__and2_1 _8477_ (.A(net775),
    .B(_4147_),
    .X(_0701_));
 sky130_fd_sc_hd__nor2b_1 _8478_ (.A(_4038_),
    .B_N(_4041_),
    .Y(_4148_));
 sky130_fd_sc_hd__nand2_1 _8479_ (.A(_4028_),
    .B(_4148_),
    .Y(_4149_));
 sky130_fd_sc_hd__xnor2_1 _8480_ (.A(\count_cycle[22] ),
    .B(_4149_),
    .Y(_4150_));
 sky130_fd_sc_hd__and2_1 _8481_ (.A(net775),
    .B(_4150_),
    .X(_0702_));
 sky130_fd_sc_hd__nand3_1 _8482_ (.A(\count_cycle[20] ),
    .B(_4027_),
    .C(_4145_),
    .Y(_4151_));
 sky130_fd_sc_hd__xnor2_1 _8483_ (.A(\count_cycle[21] ),
    .B(_4151_),
    .Y(_4152_));
 sky130_fd_sc_hd__and2_1 _8484_ (.A(net775),
    .B(_4152_),
    .X(_0703_));
 sky130_fd_sc_hd__and2_1 _8485_ (.A(_4027_),
    .B(_4148_),
    .X(_4153_));
 sky130_fd_sc_hd__xor2_1 _8486_ (.A(\count_cycle[20] ),
    .B(_4153_),
    .X(_4154_));
 sky130_fd_sc_hd__and2_1 _8487_ (.A(net775),
    .B(_4154_),
    .X(_0704_));
 sky130_fd_sc_hd__nand4_1 _8488_ (.A(\count_cycle[18] ),
    .B(\count_cycle[17] ),
    .C(\count_cycle[16] ),
    .D(_4145_),
    .Y(_4155_));
 sky130_fd_sc_hd__xnor2_1 _8489_ (.A(\count_cycle[19] ),
    .B(_4155_),
    .Y(_4156_));
 sky130_fd_sc_hd__and2_1 _8490_ (.A(net775),
    .B(_4156_),
    .X(_0705_));
 sky130_fd_sc_hd__and3_1 _8491_ (.A(\count_cycle[17] ),
    .B(\count_cycle[16] ),
    .C(_4148_),
    .X(_4157_));
 sky130_fd_sc_hd__xor2_1 _8492_ (.A(\count_cycle[18] ),
    .B(_4157_),
    .X(_4158_));
 sky130_fd_sc_hd__and2_1 _8493_ (.A(net775),
    .B(_4158_),
    .X(_0706_));
 sky130_fd_sc_hd__nand2_1 _8494_ (.A(\count_cycle[16] ),
    .B(_4145_),
    .Y(_4159_));
 sky130_fd_sc_hd__xnor2_1 _8495_ (.A(\count_cycle[17] ),
    .B(_4159_),
    .Y(_4160_));
 sky130_fd_sc_hd__and2_1 _8496_ (.A(net775),
    .B(_4160_),
    .X(_0707_));
 sky130_fd_sc_hd__xnor2_1 _8497_ (.A(\count_cycle[16] ),
    .B(_4148_),
    .Y(_4161_));
 sky130_fd_sc_hd__nor2b_1 _8498_ (.A(_4161_),
    .B_N(net775),
    .Y(_0708_));
 sky130_fd_sc_hd__nand3_1 _8499_ (.A(\count_cycle[14] ),
    .B(\count_cycle[13] ),
    .C(_4037_),
    .Y(_4162_));
 sky130_fd_sc_hd__o21ai_0 _8500_ (.A1(_4162_),
    .A2(_4050_),
    .B1(\count_cycle[15] ),
    .Y(_4163_));
 sky130_fd_sc_hd__or3_1 _8501_ (.A(\count_cycle[15] ),
    .B(_4162_),
    .C(_4050_),
    .X(_4164_));
 sky130_fd_sc_hd__a21boi_0 _8502_ (.A1(_4163_),
    .A2(_4164_),
    .B1_N(net775),
    .Y(_0709_));
 sky130_fd_sc_hd__nand3_1 _8503_ (.A(\count_cycle[13] ),
    .B(_4037_),
    .C(_4041_),
    .Y(_4165_));
 sky130_fd_sc_hd__xnor2_1 _8504_ (.A(\count_cycle[14] ),
    .B(_4165_),
    .Y(_4166_));
 sky130_fd_sc_hd__and2_1 _8505_ (.A(net775),
    .B(_4166_),
    .X(_0710_));
 sky130_fd_sc_hd__nor3_1 _8506_ (.A(_4035_),
    .B(_4036_),
    .C(_4050_),
    .Y(_4167_));
 sky130_fd_sc_hd__xor2_1 _8507_ (.A(\count_cycle[13] ),
    .B(_4167_),
    .X(_4168_));
 sky130_fd_sc_hd__and2_1 _8508_ (.A(net775),
    .B(_4168_),
    .X(_0711_));
 sky130_fd_sc_hd__nand4_1 _8509_ (.A(\count_cycle[11] ),
    .B(\count_cycle[10] ),
    .C(\count_cycle[9] ),
    .D(_4041_),
    .Y(_4169_));
 sky130_fd_sc_hd__xnor2_1 _8510_ (.A(\count_cycle[12] ),
    .B(_4169_),
    .Y(_4170_));
 sky130_fd_sc_hd__and2_1 _8511_ (.A(net775),
    .B(_4170_),
    .X(_0712_));
 sky130_fd_sc_hd__o21ai_0 _8512_ (.A1(_4035_),
    .A2(_4050_),
    .B1(\count_cycle[11] ),
    .Y(_4171_));
 sky130_fd_sc_hd__or3_1 _8513_ (.A(\count_cycle[11] ),
    .B(_4035_),
    .C(_4050_),
    .X(_4172_));
 sky130_fd_sc_hd__a21boi_0 _8514_ (.A1(_4171_),
    .A2(_4172_),
    .B1_N(net775),
    .Y(_0713_));
 sky130_fd_sc_hd__nand2_1 _8515_ (.A(\count_cycle[9] ),
    .B(_4041_),
    .Y(_4173_));
 sky130_fd_sc_hd__xnor2_1 _8516_ (.A(\count_cycle[10] ),
    .B(_4173_),
    .Y(_4174_));
 sky130_fd_sc_hd__and2_1 _8517_ (.A(net775),
    .B(_4174_),
    .X(_0714_));
 sky130_fd_sc_hd__xnor2_1 _8518_ (.A(\count_cycle[9] ),
    .B(_4050_),
    .Y(_4175_));
 sky130_fd_sc_hd__and2_1 _8519_ (.A(net775),
    .B(_4175_),
    .X(_0715_));
 sky130_fd_sc_hd__nand2_1 _8520_ (.A(_0132_),
    .B(_4040_),
    .Y(_4176_));
 sky130_fd_sc_hd__xnor2_1 _8521_ (.A(\count_cycle[8] ),
    .B(_4176_),
    .Y(_4177_));
 sky130_fd_sc_hd__and2_1 _8522_ (.A(net775),
    .B(_4177_),
    .X(_0716_));
 sky130_fd_sc_hd__nand4_1 _8523_ (.A(\count_cycle[6] ),
    .B(\count_cycle[1] ),
    .C(\count_cycle[0] ),
    .D(_4039_),
    .Y(_4178_));
 sky130_fd_sc_hd__xnor2_1 _8524_ (.A(\count_cycle[7] ),
    .B(_4178_),
    .Y(_4179_));
 sky130_fd_sc_hd__and2_1 _8525_ (.A(net775),
    .B(_4179_),
    .X(_0717_));
 sky130_fd_sc_hd__nand2_1 _8526_ (.A(_0132_),
    .B(_4039_),
    .Y(_4180_));
 sky130_fd_sc_hd__xnor2_1 _8527_ (.A(\count_cycle[6] ),
    .B(_4180_),
    .Y(_4181_));
 sky130_fd_sc_hd__and2_1 _8528_ (.A(net775),
    .B(_4181_),
    .X(_0718_));
 sky130_fd_sc_hd__and3_1 _8529_ (.A(\count_cycle[4] ),
    .B(\count_cycle[3] ),
    .C(\count_cycle[2] ),
    .X(_4182_));
 sky130_fd_sc_hd__nand3_1 _8530_ (.A(\count_cycle[1] ),
    .B(\count_cycle[0] ),
    .C(_4182_),
    .Y(_4183_));
 sky130_fd_sc_hd__xnor2_1 _8531_ (.A(\count_cycle[5] ),
    .B(_4183_),
    .Y(_4184_));
 sky130_fd_sc_hd__and2_1 _8532_ (.A(net775),
    .B(_4184_),
    .X(_0719_));
 sky130_fd_sc_hd__nand3_1 _8533_ (.A(_0132_),
    .B(\count_cycle[3] ),
    .C(\count_cycle[2] ),
    .Y(_4185_));
 sky130_fd_sc_hd__xnor2_1 _8534_ (.A(\count_cycle[4] ),
    .B(_4185_),
    .Y(_4186_));
 sky130_fd_sc_hd__and2_1 _8535_ (.A(net775),
    .B(_4186_),
    .X(_0720_));
 sky130_fd_sc_hd__nand3_1 _8536_ (.A(\count_cycle[2] ),
    .B(\count_cycle[1] ),
    .C(\count_cycle[0] ),
    .Y(_4187_));
 sky130_fd_sc_hd__xnor2_1 _8537_ (.A(\count_cycle[3] ),
    .B(_4187_),
    .Y(_4188_));
 sky130_fd_sc_hd__and2_1 _8538_ (.A(net775),
    .B(_4188_),
    .X(_0721_));
 sky130_fd_sc_hd__xor2_1 _8539_ (.A(_0132_),
    .B(\count_cycle[2] ),
    .X(_4189_));
 sky130_fd_sc_hd__and2_1 _8540_ (.A(net775),
    .B(_4189_),
    .X(_0722_));
 sky130_fd_sc_hd__and2_1 _8541_ (.A(net775),
    .B(_0133_),
    .X(_0723_));
 sky130_fd_sc_hd__nor2b_1 _8542_ (.A(\count_cycle[0] ),
    .B_N(net775),
    .Y(_0724_));
 sky130_fd_sc_hd__nand2_1 _8543_ (.A(\reg_pc[30] ),
    .B(net682),
    .Y(_4190_));
 sky130_fd_sc_hd__o21ai_0 _8544_ (.A1(_0958_),
    .A2(_3881_),
    .B1(_4190_),
    .Y(_0725_));
 sky130_fd_sc_hd__nand2_1 _8545_ (.A(\reg_pc[29] ),
    .B(net682),
    .Y(_4191_));
 sky130_fd_sc_hd__o21ai_0 _8546_ (.A1(_0955_),
    .A2(_3881_),
    .B1(_4191_),
    .Y(_0726_));
 sky130_fd_sc_hd__nand2_1 _8547_ (.A(\reg_pc[28] ),
    .B(net682),
    .Y(_4192_));
 sky130_fd_sc_hd__o21ai_0 _8548_ (.A1(_0952_),
    .A2(_3881_),
    .B1(_4192_),
    .Y(_0727_));
 sky130_fd_sc_hd__a22o_1 _8549_ (.A1(_0380_),
    .A2(net683),
    .B1(net682),
    .B2(\reg_pc[27] ),
    .X(_0728_));
 sky130_fd_sc_hd__nand2_1 _8550_ (.A(\reg_pc[26] ),
    .B(net682),
    .Y(_4193_));
 sky130_fd_sc_hd__o21ai_0 _8551_ (.A1(_0947_),
    .A2(_3881_),
    .B1(_4193_),
    .Y(_0729_));
 sky130_fd_sc_hd__a22o_1 _8552_ (.A1(_0075_),
    .A2(net683),
    .B1(net682),
    .B2(\reg_pc[25] ),
    .X(_0730_));
 sky130_fd_sc_hd__mux2i_1 _8553_ (.A0(\reg_pc[24] ),
    .A1(_0258_),
    .S(net750),
    .Y(_4194_));
 sky130_fd_sc_hd__nor2b_1 _8554_ (.A(_4194_),
    .B_N(net776),
    .Y(_0731_));
 sky130_fd_sc_hd__mux2i_1 _8555_ (.A0(\reg_pc[23] ),
    .A1(_0431_),
    .S(net750),
    .Y(_4195_));
 sky130_fd_sc_hd__nor2b_1 _8556_ (.A(_4195_),
    .B_N(net776),
    .Y(_0732_));
 sky130_fd_sc_hd__mux2i_1 _8557_ (.A0(\reg_pc[22] ),
    .A1(_0393_),
    .S(net750),
    .Y(_4196_));
 sky130_fd_sc_hd__nor2b_1 _8558_ (.A(_4196_),
    .B_N(net776),
    .Y(_0733_));
 sky130_fd_sc_hd__mux2i_1 _8559_ (.A0(\reg_pc[21] ),
    .A1(_0094_),
    .S(net750),
    .Y(_4197_));
 sky130_fd_sc_hd__nor2b_1 _8560_ (.A(_4197_),
    .B_N(net776),
    .Y(_0734_));
 sky130_fd_sc_hd__nor2_1 _8561_ (.A(_3485_),
    .B(_0934_),
    .Y(_4198_));
 sky130_fd_sc_hd__a21oi_1 _8562_ (.A1(_3485_),
    .A2(\reg_pc[20] ),
    .B1(_4198_),
    .Y(_4199_));
 sky130_fd_sc_hd__nor2b_1 _8563_ (.A(_4199_),
    .B_N(net171),
    .Y(_0735_));
 sky130_fd_sc_hd__nor2_1 _8565_ (.A(_3485_),
    .B(_0932_),
    .Y(_4201_));
 sky130_fd_sc_hd__a21oi_1 _8566_ (.A1(_3485_),
    .A2(\reg_pc[19] ),
    .B1(_4201_),
    .Y(_4202_));
 sky130_fd_sc_hd__nor2b_1 _8567_ (.A(_4202_),
    .B_N(net776),
    .Y(_0736_));
 sky130_fd_sc_hd__nand2_1 _8568_ (.A(\reg_pc[18] ),
    .B(net682),
    .Y(_4203_));
 sky130_fd_sc_hd__o21ai_0 _8569_ (.A1(_0930_),
    .A2(_3881_),
    .B1(_4203_),
    .Y(_0737_));
 sky130_fd_sc_hd__nor2_1 _8570_ (.A(_3485_),
    .B(_0926_),
    .Y(_4204_));
 sky130_fd_sc_hd__a21oi_1 _8571_ (.A1(_3485_),
    .A2(\reg_pc[17] ),
    .B1(_4204_),
    .Y(_4205_));
 sky130_fd_sc_hd__nor2b_1 _8572_ (.A(_4205_),
    .B_N(net171),
    .Y(_0738_));
 sky130_fd_sc_hd__nor2_1 _8573_ (.A(_3485_),
    .B(_0923_),
    .Y(_4206_));
 sky130_fd_sc_hd__a21oi_1 _8574_ (.A1(_3485_),
    .A2(\reg_pc[16] ),
    .B1(_4206_),
    .Y(_4207_));
 sky130_fd_sc_hd__nor2b_1 _8575_ (.A(_4207_),
    .B_N(net171),
    .Y(_0739_));
 sky130_fd_sc_hd__mux2i_1 _8576_ (.A0(\reg_pc[15] ),
    .A1(_0261_),
    .S(net750),
    .Y(_4208_));
 sky130_fd_sc_hd__nor2b_1 _8577_ (.A(_4208_),
    .B_N(net171),
    .Y(_0740_));
 sky130_fd_sc_hd__nor2_1 _8578_ (.A(_3485_),
    .B(_0916_),
    .Y(_4209_));
 sky130_fd_sc_hd__a21oi_1 _8579_ (.A1(_3485_),
    .A2(\reg_pc[14] ),
    .B1(_4209_),
    .Y(_4210_));
 sky130_fd_sc_hd__nor2b_1 _8580_ (.A(_4210_),
    .B_N(net171),
    .Y(_0741_));
 sky130_fd_sc_hd__nor2_1 _8581_ (.A(_3485_),
    .B(_0911_),
    .Y(_4211_));
 sky130_fd_sc_hd__a21oi_1 _8582_ (.A1(_3485_),
    .A2(\reg_pc[13] ),
    .B1(_4211_),
    .Y(_4212_));
 sky130_fd_sc_hd__nor2b_1 _8583_ (.A(_4212_),
    .B_N(net171),
    .Y(_0742_));
 sky130_fd_sc_hd__nor2_1 _8584_ (.A(_3485_),
    .B(_0909_),
    .Y(_4213_));
 sky130_fd_sc_hd__a21oi_1 _8585_ (.A1(_3485_),
    .A2(\reg_pc[12] ),
    .B1(_4213_),
    .Y(_4214_));
 sky130_fd_sc_hd__nor2b_1 _8586_ (.A(_4214_),
    .B_N(net171),
    .Y(_0743_));
 sky130_fd_sc_hd__nor2_1 _8587_ (.A(_3485_),
    .B(_0907_),
    .Y(_4215_));
 sky130_fd_sc_hd__a21oi_1 _8588_ (.A1(_3485_),
    .A2(\reg_pc[11] ),
    .B1(_4215_),
    .Y(_4216_));
 sky130_fd_sc_hd__nor2b_1 _8589_ (.A(_4216_),
    .B_N(net171),
    .Y(_0744_));
 sky130_fd_sc_hd__nor2_1 _8590_ (.A(_3485_),
    .B(_0905_),
    .Y(_4217_));
 sky130_fd_sc_hd__a21oi_1 _8591_ (.A1(_3485_),
    .A2(\reg_pc[10] ),
    .B1(_4217_),
    .Y(_4218_));
 sky130_fd_sc_hd__nor2b_1 _8592_ (.A(_4218_),
    .B_N(net171),
    .Y(_0745_));
 sky130_fd_sc_hd__nor2_1 _8593_ (.A(_3485_),
    .B(_0903_),
    .Y(_4219_));
 sky130_fd_sc_hd__a21oi_1 _8594_ (.A1(_3485_),
    .A2(\reg_pc[9] ),
    .B1(_4219_),
    .Y(_4220_));
 sky130_fd_sc_hd__nor2b_1 _8595_ (.A(_4220_),
    .B_N(net171),
    .Y(_0746_));
 sky130_fd_sc_hd__nor2_1 _8596_ (.A(_3485_),
    .B(_0901_),
    .Y(_4221_));
 sky130_fd_sc_hd__a21oi_1 _8597_ (.A1(_3485_),
    .A2(\reg_pc[8] ),
    .B1(_4221_),
    .Y(_4222_));
 sky130_fd_sc_hd__nor2b_1 _8598_ (.A(_4222_),
    .B_N(net171),
    .Y(_0747_));
 sky130_fd_sc_hd__nor2_1 _8599_ (.A(_3485_),
    .B(_0899_),
    .Y(_4223_));
 sky130_fd_sc_hd__a21oi_1 _8600_ (.A1(_3485_),
    .A2(\reg_pc[7] ),
    .B1(_4223_),
    .Y(_4224_));
 sky130_fd_sc_hd__nor2b_1 _8601_ (.A(_4224_),
    .B_N(net171),
    .Y(_0748_));
 sky130_fd_sc_hd__nor2_1 _8602_ (.A(_3485_),
    .B(_0897_),
    .Y(_4225_));
 sky130_fd_sc_hd__a21oi_1 _8603_ (.A1(_3485_),
    .A2(\reg_pc[6] ),
    .B1(_4225_),
    .Y(_4226_));
 sky130_fd_sc_hd__nor2b_1 _8604_ (.A(_4226_),
    .B_N(net171),
    .Y(_0749_));
 sky130_fd_sc_hd__nor2_1 _8605_ (.A(_3485_),
    .B(_0895_),
    .Y(_4227_));
 sky130_fd_sc_hd__a21oi_1 _8606_ (.A1(_3485_),
    .A2(\reg_pc[5] ),
    .B1(_4227_),
    .Y(_4228_));
 sky130_fd_sc_hd__nor2b_1 _8607_ (.A(_4228_),
    .B_N(net171),
    .Y(_0750_));
 sky130_fd_sc_hd__mux2i_1 _8608_ (.A0(\reg_pc[4] ),
    .A1(_0457_),
    .S(net750),
    .Y(_4229_));
 sky130_fd_sc_hd__nor2b_1 _8609_ (.A(_4229_),
    .B_N(net171),
    .Y(_0751_));
 sky130_fd_sc_hd__mux2i_1 _8610_ (.A0(\reg_pc[3] ),
    .A1(_0266_),
    .S(net750),
    .Y(_4230_));
 sky130_fd_sc_hd__nor2b_1 _8611_ (.A(_4230_),
    .B_N(net171),
    .Y(_0752_));
 sky130_fd_sc_hd__nor2_1 _8612_ (.A(_3485_),
    .B(_0888_),
    .Y(_4231_));
 sky130_fd_sc_hd__a21oi_1 _8613_ (.A1(_3485_),
    .A2(\reg_pc[2] ),
    .B1(_4231_),
    .Y(_4232_));
 sky130_fd_sc_hd__nor2b_1 _8614_ (.A(_4232_),
    .B_N(net171),
    .Y(_0753_));
 sky130_fd_sc_hd__a22o_1 _8615_ (.A1(_0420_),
    .A2(net683),
    .B1(net682),
    .B2(\reg_pc[1] ),
    .X(_0754_));
 sky130_fd_sc_hd__inv_1 _8616_ (.A(net349),
    .Y(_0216_));
 sky130_fd_sc_hd__inv_1 _8617_ (.A(net718),
    .Y(_0305_));
 sky130_fd_sc_hd__inv_1 _8618_ (.A(\mem_state[0] ),
    .Y(_0498_));
 sky130_fd_sc_hd__inv_1 _8619_ (.A(net347),
    .Y(_0207_));
 sky130_fd_sc_hd__mux2_2 _8620_ (.A0(\mem_rdata_latched[18] ),
    .A1(\decoded_imm_j[18] ),
    .S(net618),
    .X(_0532_));
 sky130_fd_sc_hd__mux2_2 _8621_ (.A0(\mem_rdata_latched[17] ),
    .A1(\decoded_imm_j[17] ),
    .S(net618),
    .X(_0531_));
 sky130_fd_sc_hd__mux2_2 _8622_ (.A0(\mem_rdata_latched[16] ),
    .A1(\decoded_imm_j[16] ),
    .S(net618),
    .X(_0530_));
 sky130_fd_sc_hd__mux2_2 _8623_ (.A0(\mem_rdata_latched[15] ),
    .A1(\decoded_imm_j[15] ),
    .S(net618),
    .X(_0529_));
 sky130_fd_sc_hd__mux2_2 _8624_ (.A0(\mem_rdata_latched[23] ),
    .A1(\decoded_imm_j[3] ),
    .S(net618),
    .X(_0537_));
 sky130_fd_sc_hd__mux2_2 _8625_ (.A0(\mem_rdata_latched[22] ),
    .A1(\decoded_imm_j[2] ),
    .S(net618),
    .X(_0536_));
 sky130_fd_sc_hd__mux2_2 _8626_ (.A0(\mem_rdata_latched[21] ),
    .A1(\decoded_imm_j[1] ),
    .S(net618),
    .X(_0535_));
 sky130_fd_sc_hd__mux2_2 _8627_ (.A0(\mem_rdata_latched[20] ),
    .A1(\decoded_imm_j[11] ),
    .S(net618),
    .X(_0534_));
 sky130_fd_sc_hd__or4b_2 _8628_ (.A(mem_do_rinst),
    .B(mem_do_rdata),
    .C(_0500_),
    .D_N(_0503_),
    .X(_4233_));
 sky130_fd_sc_hd__nand2b_1 _8629_ (.A_N(mem_do_wdata),
    .B(_0500_),
    .Y(_4234_));
 sky130_fd_sc_hd__a21oi_1 _8630_ (.A1(_4233_),
    .A2(_4234_),
    .B1(_3420_),
    .Y(_0755_));
 sky130_fd_sc_hd__and2_1 _8631_ (.A(net750),
    .B(\decoded_rd[3] ),
    .X(_0756_));
 sky130_fd_sc_hd__and2_1 _8632_ (.A(net750),
    .B(\decoded_rd[2] ),
    .X(_0757_));
 sky130_fd_sc_hd__and2_1 _8633_ (.A(\cpu_state[1] ),
    .B(\decoded_rd[1] ),
    .X(_0758_));
 sky130_fd_sc_hd__and2_1 _8634_ (.A(net750),
    .B(\decoded_rd[0] ),
    .X(_0759_));
 sky130_fd_sc_hd__or2_2 _8635_ (.A(\latched_rd[0] ),
    .B(\latched_rd[1] ),
    .X(_4235_));
 sky130_fd_sc_hd__inv_1 _8637_ (.A(\latched_rd[2] ),
    .Y(_4237_));
 sky130_fd_sc_hd__o21ai_0 _8638_ (.A1(net736),
    .A2(net738),
    .B1(net683),
    .Y(_4238_));
 sky130_fd_sc_hd__nor2_1 _8639_ (.A(_4237_),
    .B(_4238_),
    .Y(_4239_));
 sky130_fd_sc_hd__nor2b_1 _8640_ (.A(\latched_rd[3] ),
    .B_N(\latched_rd[4] ),
    .Y(_4240_));
 sky130_fd_sc_hd__nand2_1 _8641_ (.A(_4239_),
    .B(_4240_),
    .Y(_4241_));
 sky130_fd_sc_hd__nor2_4 _8642_ (.A(_4235_),
    .B(_4241_),
    .Y(_0844_));
 sky130_fd_sc_hd__nand2_1 _8643_ (.A(\latched_rd[0] ),
    .B(\latched_rd[1] ),
    .Y(_4242_));
 sky130_fd_sc_hd__nor3_1 _8644_ (.A(\latched_rd[4] ),
    .B(\latched_rd[3] ),
    .C(_4235_),
    .Y(_4243_));
 sky130_fd_sc_hd__nor3_1 _8645_ (.A(\latched_rd[2] ),
    .B(_4238_),
    .C(_4243_),
    .Y(_4244_));
 sky130_fd_sc_hd__nand2_1 _8646_ (.A(_4240_),
    .B(_4244_),
    .Y(_4245_));
 sky130_fd_sc_hd__nor2_4 _8647_ (.A(_4242_),
    .B(_4245_),
    .Y(_0842_));
 sky130_fd_sc_hd__nand3_1 _8648_ (.A(\latched_rd[4] ),
    .B(\latched_rd[3] ),
    .C(_4244_),
    .Y(_4246_));
 sky130_fd_sc_hd__nor2_4 _8649_ (.A(_4235_),
    .B(_4246_),
    .Y(_0848_));
 sky130_fd_sc_hd__nand2b_1 _8650_ (.A_N(\latched_rd[0] ),
    .B(\latched_rd[1] ),
    .Y(_4247_));
 sky130_fd_sc_hd__nor2_4 _8652_ (.A(_4245_),
    .B(net681),
    .Y(_0841_));
 sky130_fd_sc_hd__nand2b_1 _8653_ (.A_N(\latched_rd[1] ),
    .B(\latched_rd[0] ),
    .Y(_4249_));
 sky130_fd_sc_hd__nor2_4 _8655_ (.A(_4245_),
    .B(_4249_),
    .Y(_0840_));
 sky130_fd_sc_hd__nor2_4 _8656_ (.A(_4235_),
    .B(_4245_),
    .Y(_0839_));
 sky130_fd_sc_hd__nand3_1 _8657_ (.A(\latched_rd[4] ),
    .B(\latched_rd[3] ),
    .C(_4239_),
    .Y(_4251_));
 sky130_fd_sc_hd__nor2_4 _8658_ (.A(_4242_),
    .B(_4251_),
    .Y(_0856_));
 sky130_fd_sc_hd__nor2_4 _8659_ (.A(_4246_),
    .B(_4249_),
    .Y(_0849_));
 sky130_fd_sc_hd__nor2b_1 _8660_ (.A(\latched_rd[4] ),
    .B_N(\latched_rd[3] ),
    .Y(_4252_));
 sky130_fd_sc_hd__nand2_1 _8661_ (.A(_4239_),
    .B(_4252_),
    .Y(_4253_));
 sky130_fd_sc_hd__nor2_4 _8662_ (.A(_4242_),
    .B(_4253_),
    .Y(_0838_));
 sky130_fd_sc_hd__nor2_4 _8663_ (.A(_4241_),
    .B(_4242_),
    .Y(_0847_));
 sky130_fd_sc_hd__nor2_4 _8664_ (.A(net681),
    .B(_4253_),
    .Y(_0837_));
 sky130_fd_sc_hd__nor2_4 _8665_ (.A(_4249_),
    .B(_4253_),
    .Y(_0836_));
 sky130_fd_sc_hd__nor2_4 _8666_ (.A(_4246_),
    .B(net681),
    .Y(_0850_));
 sky130_fd_sc_hd__nor2_4 _8667_ (.A(_4235_),
    .B(_4253_),
    .Y(_0835_));
 sky130_fd_sc_hd__nor2_4 _8668_ (.A(_4241_),
    .B(net681),
    .Y(_0846_));
 sky130_fd_sc_hd__nand2_1 _8669_ (.A(_4244_),
    .B(_4252_),
    .Y(_4254_));
 sky130_fd_sc_hd__nor2_4 _8670_ (.A(_4242_),
    .B(_4254_),
    .Y(_0834_));
 sky130_fd_sc_hd__nor2_4 _8671_ (.A(net681),
    .B(_4254_),
    .Y(_0833_));
 sky130_fd_sc_hd__nor2_4 _8672_ (.A(_4242_),
    .B(_4246_),
    .Y(_0851_));
 sky130_fd_sc_hd__nor2_4 _8673_ (.A(_4249_),
    .B(_4254_),
    .Y(_0863_));
 sky130_fd_sc_hd__nor2_4 _8674_ (.A(_4235_),
    .B(_4254_),
    .Y(_0862_));
 sky130_fd_sc_hd__nor2_1 _8675_ (.A(\latched_rd[4] ),
    .B(\latched_rd[3] ),
    .Y(_4255_));
 sky130_fd_sc_hd__nand2_1 _8676_ (.A(_4239_),
    .B(_4255_),
    .Y(_4256_));
 sky130_fd_sc_hd__nor2_4 _8677_ (.A(_4242_),
    .B(_4256_),
    .Y(_0861_));
 sky130_fd_sc_hd__nor2_4 _8678_ (.A(net681),
    .B(_4256_),
    .Y(_0860_));
 sky130_fd_sc_hd__nor2_4 _8679_ (.A(_4235_),
    .B(_4251_),
    .Y(_0852_));
 sky130_fd_sc_hd__nor2_4 _8680_ (.A(_4249_),
    .B(_4256_),
    .Y(_0859_));
 sky130_fd_sc_hd__nor2_4 _8681_ (.A(_4235_),
    .B(_4256_),
    .Y(_0858_));
 sky130_fd_sc_hd__nand2_1 _8682_ (.A(_4255_),
    .B(_4244_),
    .Y(_4257_));
 sky130_fd_sc_hd__nor2_4 _8683_ (.A(_4242_),
    .B(_4257_),
    .Y(_0857_));
 sky130_fd_sc_hd__nor2_4 _8684_ (.A(_4249_),
    .B(_4251_),
    .Y(_0853_));
 sky130_fd_sc_hd__nor2_4 _8685_ (.A(net681),
    .B(_4257_),
    .Y(_0854_));
 sky130_fd_sc_hd__nor2_4 _8686_ (.A(net681),
    .B(_4251_),
    .Y(_0855_));
 sky130_fd_sc_hd__nor2_4 _8687_ (.A(_4241_),
    .B(_4249_),
    .Y(_0845_));
 sky130_fd_sc_hd__nor2_4 _8688_ (.A(_4249_),
    .B(_4257_),
    .Y(_0843_));
 sky130_fd_sc_hd__nand2_1 _8689_ (.A(net746),
    .B(net657),
    .Y(_0518_));
 sky130_fd_sc_hd__nor2_1 _8690_ (.A(\mem_rdata_q[14] ),
    .B(\mem_rdata_q[12] ),
    .Y(_4258_));
 sky130_fd_sc_hd__nand2_1 _8691_ (.A(\mem_rdata_q[13] ),
    .B(_4258_),
    .Y(_4259_));
 sky130_fd_sc_hd__or4_1 _8692_ (.A(\mem_rdata_q[29] ),
    .B(\mem_rdata_q[28] ),
    .C(\mem_rdata_q[26] ),
    .D(\mem_rdata_q[25] ),
    .X(_4260_));
 sky130_fd_sc_hd__or3_1 _8693_ (.A(\mem_rdata_q[31] ),
    .B(net735),
    .C(_4260_),
    .X(_4261_));
 sky130_fd_sc_hd__nor2_1 _8694_ (.A(\mem_rdata_q[30] ),
    .B(_4261_),
    .Y(_4262_));
 sky130_fd_sc_hd__and3_1 _8695_ (.A(net776),
    .B(is_alu_reg_reg),
    .C(net680),
    .X(_4263_));
 sky130_fd_sc_hd__nand2_1 _8696_ (.A(_4262_),
    .B(_4263_),
    .Y(_4264_));
 sky130_fd_sc_hd__nor2b_1 _8697_ (.A(net680),
    .B_N(net776),
    .Y(_4265_));
 sky130_fd_sc_hd__nand2_1 _8699_ (.A(instr_slt),
    .B(net663),
    .Y(_4267_));
 sky130_fd_sc_hd__o21ai_0 _8700_ (.A1(_4259_),
    .A2(_4264_),
    .B1(_4267_),
    .Y(_0760_));
 sky130_fd_sc_hd__o21ai_0 _8701_ (.A1(net699),
    .A2(decoder_pseudo_trigger),
    .B1(instr_sll),
    .Y(_4268_));
 sky130_fd_sc_hd__nand2b_1 _8702_ (.A_N(\mem_rdata_q[13] ),
    .B(\mem_rdata_q[12] ),
    .Y(_4269_));
 sky130_fd_sc_hd__nand2b_1 _8703_ (.A_N(_4269_),
    .B(_3277_),
    .Y(_4270_));
 sky130_fd_sc_hd__nor3_1 _8704_ (.A(\mem_rdata_q[30] ),
    .B(_4261_),
    .C(_4270_),
    .Y(_4271_));
 sky130_fd_sc_hd__nand3_1 _8705_ (.A(is_alu_reg_reg),
    .B(net680),
    .C(_4271_),
    .Y(_4272_));
 sky130_fd_sc_hd__a21boi_0 _8706_ (.A1(_4268_),
    .A2(_4272_),
    .B1_N(net776),
    .Y(_0761_));
 sky130_fd_sc_hd__or3_1 _8707_ (.A(\mem_rdata_q[14] ),
    .B(\mem_rdata_q[13] ),
    .C(\mem_rdata_q[12] ),
    .X(_4273_));
 sky130_fd_sc_hd__nor3_1 _8709_ (.A(\mem_rdata_q[31] ),
    .B(net735),
    .C(_4260_),
    .Y(_4275_));
 sky130_fd_sc_hd__nand3_1 _8710_ (.A(\mem_rdata_q[30] ),
    .B(_4275_),
    .C(_4263_),
    .Y(_4276_));
 sky130_fd_sc_hd__nand2_1 _8712_ (.A(net739),
    .B(_4265_),
    .Y(_4278_));
 sky130_fd_sc_hd__o21ai_0 _8713_ (.A1(_4273_),
    .A2(_4276_),
    .B1(_4278_),
    .Y(_0762_));
 sky130_fd_sc_hd__nand2_1 _8714_ (.A(instr_add),
    .B(net663),
    .Y(_4279_));
 sky130_fd_sc_hd__o21ai_0 _8715_ (.A1(_4264_),
    .A2(_4273_),
    .B1(_4279_),
    .Y(_0763_));
 sky130_fd_sc_hd__nor2_1 _8717_ (.A(mem_do_prefetch),
    .B(mem_do_rinst),
    .Y(_4281_));
 sky130_fd_sc_hd__nor2_1 _8718_ (.A(mem_do_wdata),
    .B(_4281_),
    .Y(_0764_));
 sky130_fd_sc_hd__nand3_1 _8719_ (.A(net776),
    .B(is_alu_reg_imm),
    .C(net680),
    .Y(_4282_));
 sky130_fd_sc_hd__nand3_1 _8720_ (.A(\mem_rdata_q[14] ),
    .B(\mem_rdata_q[13] ),
    .C(\mem_rdata_q[12] ),
    .Y(_4283_));
 sky130_fd_sc_hd__nand2_1 _8721_ (.A(instr_andi),
    .B(net663),
    .Y(_4284_));
 sky130_fd_sc_hd__o21ai_0 _8722_ (.A1(_4282_),
    .A2(_4283_),
    .B1(_4284_),
    .Y(_0765_));
 sky130_fd_sc_hd__nand3b_1 _8723_ (.A_N(\mem_rdata_q[12] ),
    .B(\mem_rdata_q[13] ),
    .C(\mem_rdata_q[14] ),
    .Y(_4285_));
 sky130_fd_sc_hd__nand2_1 _8724_ (.A(instr_ori),
    .B(net663),
    .Y(_4286_));
 sky130_fd_sc_hd__o21ai_0 _8725_ (.A1(_4282_),
    .A2(_4285_),
    .B1(_4286_),
    .Y(_0766_));
 sky130_fd_sc_hd__nor3_1 _8726_ (.A(_3277_),
    .B(\mem_rdata_q[13] ),
    .C(\mem_rdata_q[12] ),
    .Y(_4287_));
 sky130_fd_sc_hd__inv_1 _8727_ (.A(_4287_),
    .Y(_4288_));
 sky130_fd_sc_hd__nand2_1 _8728_ (.A(instr_xori),
    .B(net663),
    .Y(_4289_));
 sky130_fd_sc_hd__o21ai_0 _8729_ (.A1(_4282_),
    .A2(_4288_),
    .B1(_4289_),
    .Y(_0767_));
 sky130_fd_sc_hd__nand3_1 _8730_ (.A(_3277_),
    .B(\mem_rdata_q[13] ),
    .C(\mem_rdata_q[12] ),
    .Y(_4290_));
 sky130_fd_sc_hd__nand2_1 _8731_ (.A(instr_sltiu),
    .B(net663),
    .Y(_4291_));
 sky130_fd_sc_hd__o21ai_0 _8732_ (.A1(_4282_),
    .A2(_4290_),
    .B1(_4291_),
    .Y(_0768_));
 sky130_fd_sc_hd__nand2_1 _8733_ (.A(instr_slti),
    .B(net663),
    .Y(_4292_));
 sky130_fd_sc_hd__o21ai_0 _8734_ (.A1(_4259_),
    .A2(_4282_),
    .B1(_4292_),
    .Y(_0769_));
 sky130_fd_sc_hd__nand2_1 _8735_ (.A(instr_addi),
    .B(net663),
    .Y(_4293_));
 sky130_fd_sc_hd__o21ai_0 _8736_ (.A1(_4273_),
    .A2(_4282_),
    .B1(_4293_),
    .Y(_0770_));
 sky130_fd_sc_hd__nand3_1 _8737_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .B(net776),
    .C(net680),
    .Y(_4294_));
 sky130_fd_sc_hd__nand2_1 _8738_ (.A(instr_bgeu),
    .B(net663),
    .Y(_4295_));
 sky130_fd_sc_hd__o21ai_0 _8739_ (.A1(_4283_),
    .A2(_4294_),
    .B1(_4295_),
    .Y(_0771_));
 sky130_fd_sc_hd__nand2_1 _8740_ (.A(instr_bltu),
    .B(net663),
    .Y(_4296_));
 sky130_fd_sc_hd__o21ai_0 _8741_ (.A1(_4285_),
    .A2(_4294_),
    .B1(_4296_),
    .Y(_0772_));
 sky130_fd_sc_hd__or2_2 _8742_ (.A(_3277_),
    .B(_4269_),
    .X(_4297_));
 sky130_fd_sc_hd__nand2_1 _8743_ (.A(instr_bge),
    .B(_4265_),
    .Y(_4298_));
 sky130_fd_sc_hd__o21ai_0 _8744_ (.A1(_4294_),
    .A2(_4297_),
    .B1(_4298_),
    .Y(_0773_));
 sky130_fd_sc_hd__nand2_1 _8745_ (.A(instr_blt),
    .B(net663),
    .Y(_4299_));
 sky130_fd_sc_hd__o21ai_0 _8746_ (.A1(_4288_),
    .A2(_4294_),
    .B1(_4299_),
    .Y(_0774_));
 sky130_fd_sc_hd__nand2_1 _8747_ (.A(instr_bne),
    .B(_4265_),
    .Y(_4300_));
 sky130_fd_sc_hd__o21ai_0 _8748_ (.A1(_4270_),
    .A2(_4294_),
    .B1(_4300_),
    .Y(_0775_));
 sky130_fd_sc_hd__mux2i_1 _8749_ (.A0(\reg_out[31] ),
    .A1(\alu_out_q[31] ),
    .S(latched_stalu),
    .Y(_4301_));
 sky130_fd_sc_hd__nand2_1 _8750_ (.A(\reg_next_pc[31] ),
    .B(net697),
    .Y(_4302_));
 sky130_fd_sc_hd__o21a_1 _8751_ (.A1(net697),
    .A2(_4301_),
    .B1(_4302_),
    .X(_4303_));
 sky130_fd_sc_hd__nand2_1 _8752_ (.A(\reg_pc[31] ),
    .B(net682),
    .Y(_4304_));
 sky130_fd_sc_hd__o21ai_0 _8753_ (.A1(_3881_),
    .A2(_4303_),
    .B1(_4304_),
    .Y(_0776_));
 sky130_fd_sc_hd__and2_1 _8754_ (.A(net750),
    .B(\decoded_rd[4] ),
    .X(_0777_));
 sky130_fd_sc_hd__nand2_1 _8755_ (.A(net776),
    .B(_0870_),
    .Y(_4305_));
 sky130_fd_sc_hd__and2_1 _8756_ (.A(mem_do_prefetch),
    .B(_4305_),
    .X(_4306_));
 sky130_fd_sc_hd__nor2_1 _8757_ (.A(mem_do_rdata),
    .B(_4306_),
    .Y(_4307_));
 sky130_fd_sc_hd__mux2i_1 _8758_ (.A0(\cpu_state[1] ),
    .A1(_4307_),
    .S(\cpu_state[6] ),
    .Y(_4308_));
 sky130_fd_sc_hd__a32oi_1 _8759_ (.A1(instr_lb),
    .A2(\cpu_state[6] ),
    .A3(_4307_),
    .B1(_4308_),
    .B2(latched_is_lb),
    .Y(_4309_));
 sky130_fd_sc_hd__nor2b_1 _8760_ (.A(_4309_),
    .B_N(net776),
    .Y(_0778_));
 sky130_fd_sc_hd__a32oi_1 _8761_ (.A1(instr_lh),
    .A2(\cpu_state[6] ),
    .A3(_4307_),
    .B1(_4308_),
    .B2(latched_is_lh),
    .Y(_4310_));
 sky130_fd_sc_hd__nor2b_1 _8762_ (.A(_4310_),
    .B_N(net776),
    .Y(_0779_));
 sky130_fd_sc_hd__nand3_1 _8763_ (.A(\count_instr[61] ),
    .B(\count_instr[62] ),
    .C(_3452_),
    .Y(_4311_));
 sky130_fd_sc_hd__o21ai_0 _8764_ (.A1(_3491_),
    .A2(_4311_),
    .B1(\count_instr[63] ),
    .Y(_4312_));
 sky130_fd_sc_hd__or3_1 _8765_ (.A(\count_instr[63] ),
    .B(_3491_),
    .C(_4311_),
    .X(_4313_));
 sky130_fd_sc_hd__a21boi_1 _8766_ (.A1(_4312_),
    .A2(_4313_),
    .B1_N(net775),
    .Y(_0780_));
 sky130_fd_sc_hd__nand2_1 _8767_ (.A(net750),
    .B(_3716_),
    .Y(_4314_));
 sky130_fd_sc_hd__o311a_1 _8768_ (.A1(net750),
    .A2(net748),
    .A3(net738),
    .B1(net171),
    .C1(_4314_),
    .X(_4315_));
 sky130_fd_sc_hd__o41ai_1 _8769_ (.A1(net750),
    .A2(is_beq_bne_blt_bge_bltu_bgeu),
    .A3(_2873_),
    .A4(instr_jalr),
    .B1(_4315_),
    .Y(_4316_));
 sky130_fd_sc_hd__a41oi_1 _8770_ (.A1(_3485_),
    .A2(is_beq_bne_blt_bge_bltu_bgeu),
    .A3(net748),
    .A4(_1500_),
    .B1(_4316_),
    .Y(_0781_));
 sky130_fd_sc_hd__nand2_1 _8771_ (.A(net750),
    .B(_2873_),
    .Y(_4317_));
 sky130_fd_sc_hd__nor2_1 _8772_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .B(_2873_),
    .Y(_4318_));
 sky130_fd_sc_hd__a21oi_1 _8773_ (.A1(latched_stalu),
    .A2(_4317_),
    .B1(_4318_),
    .Y(_4319_));
 sky130_fd_sc_hd__nor2b_1 _8774_ (.A(_4319_),
    .B_N(net171),
    .Y(_0782_));
 sky130_fd_sc_hd__or3_1 _8775_ (.A(net742),
    .B(net741),
    .C(net740),
    .X(_4320_));
 sky130_fd_sc_hd__nor2_1 _8776_ (.A(instr_rdcycle),
    .B(_4320_),
    .Y(_4321_));
 sky130_fd_sc_hd__nor3_1 _8777_ (.A(\cpu_state[1] ),
    .B(\cpu_state[6] ),
    .C(_2876_),
    .Y(_4322_));
 sky130_fd_sc_hd__a21oi_1 _8778_ (.A1(net749),
    .A2(_4321_),
    .B1(_4322_),
    .Y(_4323_));
 sky130_fd_sc_hd__nor2_1 _8779_ (.A(net736),
    .B(_4323_),
    .Y(_4324_));
 sky130_fd_sc_hd__a31oi_1 _8780_ (.A1(net750),
    .A2(_2873_),
    .A3(_4323_),
    .B1(_4324_),
    .Y(_4325_));
 sky130_fd_sc_hd__nand2_1 _8781_ (.A(net171),
    .B(_4325_),
    .Y(_4326_));
 sky130_fd_sc_hd__a41oi_1 _8782_ (.A1(is_beq_bne_blt_bge_bltu_bgeu),
    .A2(net748),
    .A3(_1500_),
    .A4(_4323_),
    .B1(_4326_),
    .Y(_0783_));
 sky130_fd_sc_hd__nor3_1 _8783_ (.A(mem_do_prefetch),
    .B(_4305_),
    .C(net691),
    .Y(_0784_));
 sky130_fd_sc_hd__nand2_1 _8785_ (.A(\cpu_state[5] ),
    .B(net776),
    .Y(_4328_));
 sky130_fd_sc_hd__a211oi_1 _8786_ (.A1(mem_do_prefetch),
    .A2(net661),
    .B1(_4328_),
    .C1(mem_do_wdata),
    .Y(_4329_));
 sky130_fd_sc_hd__a31o_2 _8787_ (.A1(mem_do_wdata),
    .A2(net776),
    .A3(net661),
    .B1(_4329_),
    .X(_0785_));
 sky130_fd_sc_hd__nor2_1 _8788_ (.A(\cpu_state[5] ),
    .B(\cpu_state[0] ),
    .Y(_4330_));
 sky130_fd_sc_hd__nand3_1 _8789_ (.A(_2936_),
    .B(net682),
    .C(_4330_),
    .Y(_4331_));
 sky130_fd_sc_hd__nand3_1 _8790_ (.A(mem_do_rdata),
    .B(net776),
    .C(net661),
    .Y(_4332_));
 sky130_fd_sc_hd__o31ai_1 _8791_ (.A1(mem_do_rdata),
    .A2(_4306_),
    .A3(_4331_),
    .B1(_4332_),
    .Y(_0786_));
 sky130_fd_sc_hd__nand2_1 _8792_ (.A(net776),
    .B(net661),
    .Y(_4333_));
 sky130_fd_sc_hd__inv_1 _8793_ (.A(is_lb_lh_lw_lbu_lhu),
    .Y(_4334_));
 sky130_fd_sc_hd__nand2_1 _8794_ (.A(_1018_),
    .B(_4321_),
    .Y(_4335_));
 sky130_fd_sc_hd__nor2_1 _8795_ (.A(instr_lh),
    .B(instr_lhu),
    .Y(_4336_));
 sky130_fd_sc_hd__nor3_1 _8796_ (.A(instr_lb),
    .B(instr_lbu),
    .C(instr_lw),
    .Y(_4337_));
 sky130_fd_sc_hd__nand2_1 _8797_ (.A(_4336_),
    .B(_4337_),
    .Y(_4338_));
 sky130_fd_sc_hd__nor2_1 _8798_ (.A(instr_sll),
    .B(instr_slli),
    .Y(_4339_));
 sky130_fd_sc_hd__nor4_1 _8799_ (.A(instr_fence),
    .B(instr_blt),
    .C(instr_sub),
    .D(instr_jalr),
    .Y(_4340_));
 sky130_fd_sc_hd__nor4_1 _8800_ (.A(instr_beq),
    .B(instr_bltu),
    .C(instr_addi),
    .D(instr_add),
    .Y(_4341_));
 sky130_fd_sc_hd__nand4_1 _8801_ (.A(_1671_),
    .B(_4339_),
    .C(_4340_),
    .D(_4341_),
    .Y(_4342_));
 sky130_fd_sc_hd__nor3_1 _8802_ (.A(instr_sb),
    .B(instr_sw),
    .C(instr_sh),
    .Y(_4343_));
 sky130_fd_sc_hd__nor2_1 _8803_ (.A(net743),
    .B(_3421_),
    .Y(_4344_));
 sky130_fd_sc_hd__nor4_1 _8804_ (.A(instr_sltu),
    .B(instr_slti),
    .C(instr_sltiu),
    .D(instr_slt),
    .Y(_4345_));
 sky130_fd_sc_hd__nand4_1 _8805_ (.A(_1487_),
    .B(_4343_),
    .C(_4344_),
    .D(_4345_),
    .Y(_4346_));
 sky130_fd_sc_hd__nor4_1 _8806_ (.A(_4335_),
    .B(_4338_),
    .C(_4342_),
    .D(_4346_),
    .Y(_4347_));
 sky130_fd_sc_hd__nor2_1 _8807_ (.A(_4334_),
    .B(net620),
    .Y(_4348_));
 sky130_fd_sc_hd__a21oi_1 _8808_ (.A1(is_sb_sh_sw),
    .A2(_2417_),
    .B1(_4348_),
    .Y(_4349_));
 sky130_fd_sc_hd__o21ai_0 _8809_ (.A1(_3485_),
    .A2(net749),
    .B1(mem_do_prefetch),
    .Y(_4350_));
 sky130_fd_sc_hd__o221ai_1 _8810_ (.A1(_3485_),
    .A2(net676),
    .B1(_4349_),
    .B2(_2875_),
    .C1(_4350_),
    .Y(_4351_));
 sky130_fd_sc_hd__nor2_1 _8811_ (.A(is_lb_lh_lw_lbu_lhu),
    .B(_2423_),
    .Y(_4352_));
 sky130_fd_sc_hd__nand2_1 _8812_ (.A(is_sll_srl_sra),
    .B(_4352_),
    .Y(_4353_));
 sky130_fd_sc_hd__nor4_1 _8813_ (.A(is_slli_srli_srai),
    .B(instr_rdcycle),
    .C(_4320_),
    .D(net620),
    .Y(_4354_));
 sky130_fd_sc_hd__nand2_1 _8814_ (.A(_4353_),
    .B(_4354_),
    .Y(_4355_));
 sky130_fd_sc_hd__nand2_1 _8815_ (.A(_0165_),
    .B(_0157_),
    .Y(_4356_));
 sky130_fd_sc_hd__o21ai_0 _8816_ (.A1(\reg_sh[4] ),
    .A2(_4356_),
    .B1(net747),
    .Y(_4357_));
 sky130_fd_sc_hd__o31ai_1 _8817_ (.A1(\cpu_state[1] ),
    .A2(net747),
    .A3(net749),
    .B1(_4357_),
    .Y(_4358_));
 sky130_fd_sc_hd__a21oi_1 _8818_ (.A1(net749),
    .A2(_4355_),
    .B1(_4358_),
    .Y(_4359_));
 sky130_fd_sc_hd__mux2i_1 _8819_ (.A0(mem_do_rinst),
    .A1(_4351_),
    .S(_4359_),
    .Y(_4360_));
 sky130_fd_sc_hd__nand3_1 _8820_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .B(net748),
    .C(net776),
    .Y(_4361_));
 sky130_fd_sc_hd__o22ai_1 _8821_ (.A1(_4333_),
    .A2(_4360_),
    .B1(_4361_),
    .B2(_1500_),
    .Y(_0787_));
 sky130_fd_sc_hd__a21oi_1 _8822_ (.A1(\cpu_state[1] ),
    .A2(net676),
    .B1(mem_do_prefetch),
    .Y(_4362_));
 sky130_fd_sc_hd__a311oi_1 _8823_ (.A1(\cpu_state[1] ),
    .A2(instr_jalr),
    .A3(net676),
    .B1(_4333_),
    .C1(_4362_),
    .Y(_0788_));
 sky130_fd_sc_hd__mux2_2 _8824_ (.A0(\mem_rdata_latched[19] ),
    .A1(\decoded_imm_j[19] ),
    .S(net618),
    .X(_0533_));
 sky130_fd_sc_hd__mux2_2 _8825_ (.A0(\mem_rdata_latched[24] ),
    .A1(\decoded_imm_j[4] ),
    .S(net618),
    .X(_0538_));
 sky130_fd_sc_hd__nand3b_1 _8826_ (.A_N(mem_do_rdata),
    .B(net776),
    .C(\cpu_state[6] ),
    .Y(_4363_));
 sky130_fd_sc_hd__a21oi_1 _8827_ (.A1(mem_do_prefetch),
    .A2(net661),
    .B1(_4363_),
    .Y(_4364_));
 sky130_fd_sc_hd__a221oi_1 _8828_ (.A1(instr_sw),
    .A2(_4329_),
    .B1(_4364_),
    .B2(instr_lw),
    .C1(net683),
    .Y(_4365_));
 sky130_fd_sc_hd__a211oi_1 _8829_ (.A1(mem_do_prefetch),
    .A2(net661),
    .B1(_4338_),
    .C1(_4363_),
    .Y(_4366_));
 sky130_fd_sc_hd__a31oi_1 _8830_ (.A1(mem_do_prefetch),
    .A2(net661),
    .A3(net690),
    .B1(_4366_),
    .Y(_4367_));
 sky130_fd_sc_hd__nand2_1 _8831_ (.A(mem_do_rdata),
    .B(\cpu_state[6] ),
    .Y(_4368_));
 sky130_fd_sc_hd__nand2_1 _8832_ (.A(mem_do_wdata),
    .B(\cpu_state[5] ),
    .Y(_4369_));
 sky130_fd_sc_hd__o2111ai_1 _8833_ (.A1(\cpu_state[1] ),
    .A2(net690),
    .B1(_4368_),
    .C1(_4369_),
    .D1(net776),
    .Y(_4370_));
 sky130_fd_sc_hd__a21oi_1 _8834_ (.A1(_4329_),
    .A2(_4343_),
    .B1(_4370_),
    .Y(_4371_));
 sky130_fd_sc_hd__nand2_1 _8835_ (.A(_4367_),
    .B(_4371_),
    .Y(_4372_));
 sky130_fd_sc_hd__nand2_1 _8836_ (.A(\mem_wordsize[0] ),
    .B(_4372_),
    .Y(_4373_));
 sky130_fd_sc_hd__nand2_1 _8837_ (.A(_4365_),
    .B(_4373_),
    .Y(_0508_));
 sky130_fd_sc_hd__nand2_1 _8838_ (.A(net734),
    .B(_4372_),
    .Y(_4374_));
 sky130_fd_sc_hd__o21ai_0 _8839_ (.A1(instr_lb),
    .A2(instr_lbu),
    .B1(_4364_),
    .Y(_4375_));
 sky130_fd_sc_hd__nand2_1 _8840_ (.A(instr_sb),
    .B(_4329_),
    .Y(_4376_));
 sky130_fd_sc_hd__nand3_1 _8841_ (.A(_4374_),
    .B(_4375_),
    .C(_4376_),
    .Y(_0509_));
 sky130_fd_sc_hd__nand2_1 _8842_ (.A(\mem_wordsize[2] ),
    .B(_4372_),
    .Y(_4377_));
 sky130_fd_sc_hd__o21ai_0 _8843_ (.A1(instr_lh),
    .A2(instr_lhu),
    .B1(_4364_),
    .Y(_4378_));
 sky130_fd_sc_hd__nand2_1 _8844_ (.A(instr_sh),
    .B(_4329_),
    .Y(_4379_));
 sky130_fd_sc_hd__nand3_1 _8845_ (.A(_4377_),
    .B(_4378_),
    .C(_4379_),
    .Y(_0510_));
 sky130_fd_sc_hd__and2_2 _8846_ (.A(net749),
    .B(net776),
    .X(_0523_));
 sky130_fd_sc_hd__o21ai_0 _8847_ (.A1(net308),
    .A2(net721),
    .B1(\mem_wordsize[0] ),
    .Y(_4380_));
 sky130_fd_sc_hd__nand2_1 _8848_ (.A(net308),
    .B(\mem_wordsize[2] ),
    .Y(_4381_));
 sky130_fd_sc_hd__a21oi_1 _8849_ (.A1(_4380_),
    .A2(_4381_),
    .B1(_0867_),
    .Y(_4382_));
 sky130_fd_sc_hd__a21o_1 _8850_ (.A1(mem_do_rinst),
    .A2(\reg_pc[1] ),
    .B1(_4382_),
    .X(_4383_));
 sky130_fd_sc_hd__and2_1 _8851_ (.A(\cpu_state[0] ),
    .B(net776),
    .X(_0790_));
 sky130_fd_sc_hd__a221o_1 _8852_ (.A1(net620),
    .A2(_0523_),
    .B1(_4383_),
    .B2(net776),
    .C1(_0790_),
    .X(_0511_));
 sky130_fd_sc_hd__nand2_1 _8853_ (.A(is_beq_bne_blt_bge_bltu_bgeu),
    .B(net748),
    .Y(_4384_));
 sky130_fd_sc_hd__o21ai_0 _8854_ (.A1(instr_rdcycle),
    .A2(_4320_),
    .B1(net749),
    .Y(_4385_));
 sky130_fd_sc_hd__or3_1 _8855_ (.A(\reg_sh[4] ),
    .B(net689),
    .C(_4356_),
    .X(_4386_));
 sky130_fd_sc_hd__a21oi_1 _8856_ (.A1(net683),
    .A2(_3787_),
    .B1(_4318_),
    .Y(_4387_));
 sky130_fd_sc_hd__o2111ai_1 _8857_ (.A1(net661),
    .A2(_4384_),
    .B1(_4385_),
    .C1(_4386_),
    .D1(_4387_),
    .Y(_4388_));
 sky130_fd_sc_hd__nand2_1 _8858_ (.A(net171),
    .B(_4383_),
    .Y(_4389_));
 sky130_fd_sc_hd__o21ai_0 _8859_ (.A1(_0784_),
    .A2(_4388_),
    .B1(_4389_),
    .Y(_4390_));
 sky130_fd_sc_hd__nand2_1 _8860_ (.A(net171),
    .B(_4390_),
    .Y(_0512_));
 sky130_fd_sc_hd__and3_1 _8861_ (.A(net683),
    .B(net676),
    .C(_4389_),
    .X(_0513_));
 sky130_fd_sc_hd__nand2_1 _8862_ (.A(net171),
    .B(_4389_),
    .Y(_4391_));
 sky130_fd_sc_hd__inv_1 _8863_ (.A(_4391_),
    .Y(_4392_));
 sky130_fd_sc_hd__nand4_1 _8864_ (.A(net749),
    .B(_4352_),
    .C(_4354_),
    .D(_4392_),
    .Y(_4393_));
 sky130_fd_sc_hd__a32oi_1 _8865_ (.A1(is_beq_bne_blt_bge_bltu_bgeu),
    .A2(net748),
    .A3(net661),
    .B1(_2423_),
    .B2(net749),
    .Y(_4394_));
 sky130_fd_sc_hd__o32ai_1 _8866_ (.A1(is_sb_sh_sw),
    .A2(is_sll_srl_sra),
    .A3(_4393_),
    .B1(_4394_),
    .B2(_4391_),
    .Y(_0514_));
 sky130_fd_sc_hd__nor4_1 _8867_ (.A(instr_rdcycle),
    .B(_4320_),
    .C(_4353_),
    .D(net620),
    .Y(_4395_));
 sky130_fd_sc_hd__o21ai_0 _8868_ (.A1(is_slli_srli_srai),
    .A2(_4395_),
    .B1(net749),
    .Y(_4396_));
 sky130_fd_sc_hd__a21oi_1 _8869_ (.A1(_4357_),
    .A2(_4396_),
    .B1(_4391_),
    .Y(_0515_));
 sky130_fd_sc_hd__o21ai_0 _8870_ (.A1(mem_do_prefetch),
    .A2(net661),
    .B1(\cpu_state[5] ),
    .Y(_4397_));
 sky130_fd_sc_hd__o22ai_1 _8871_ (.A1(_3440_),
    .A2(_4393_),
    .B1(_4397_),
    .B2(_4391_),
    .Y(_0516_));
 sky130_fd_sc_hd__o21ai_0 _8872_ (.A1(mem_do_prefetch),
    .A2(net661),
    .B1(\cpu_state[6] ),
    .Y(_4398_));
 sky130_fd_sc_hd__nand2_1 _8873_ (.A(net749),
    .B(_4348_),
    .Y(_4399_));
 sky130_fd_sc_hd__a21oi_1 _8874_ (.A1(_4398_),
    .A2(_4399_),
    .B1(_4391_),
    .Y(_0517_));
 sky130_fd_sc_hd__o21ai_0 _8875_ (.A1(_0503_),
    .A2(_0502_),
    .B1(net698),
    .Y(_4400_));
 sky130_fd_sc_hd__or4_1 _8876_ (.A(_0504_),
    .B(_0500_),
    .C(_0503_),
    .D(_0502_),
    .X(_4401_));
 sky130_fd_sc_hd__inv_1 _8877_ (.A(mem_do_rinst),
    .Y(_4402_));
 sky130_fd_sc_hd__a21oi_1 _8878_ (.A1(_4402_),
    .A2(_0504_),
    .B1(net364),
    .Y(_4403_));
 sky130_fd_sc_hd__nand3_1 _8879_ (.A(_4400_),
    .B(_4401_),
    .C(_4403_),
    .Y(_4404_));
 sky130_fd_sc_hd__and2_1 _8880_ (.A(_0500_),
    .B(_0528_),
    .X(_0795_));
 sky130_fd_sc_hd__and3_1 _8881_ (.A(_0867_),
    .B(_4281_),
    .C(_0795_),
    .X(_4405_));
 sky130_fd_sc_hd__a21oi_1 _8882_ (.A1(net776),
    .A2(_4404_),
    .B1(_4405_),
    .Y(_0519_));
 sky130_fd_sc_hd__nand2_1 _8883_ (.A(mem_do_wdata),
    .B(_0500_),
    .Y(_4406_));
 sky130_fd_sc_hd__nor2_4 _8884_ (.A(_4406_),
    .B(_3420_),
    .Y(_0520_));
 sky130_fd_sc_hd__and2_1 _8885_ (.A(net776),
    .B(_1004_),
    .X(net233));
 sky130_fd_sc_hd__o21a_1 _8886_ (.A1(net266),
    .A2(net233),
    .B1(_0528_),
    .X(_0521_));
 sky130_fd_sc_hd__nor2_1 _8887_ (.A(_0501_),
    .B(net364),
    .Y(_4407_));
 sky130_fd_sc_hd__o21bai_1 _8888_ (.A1(_3278_),
    .A2(_4407_),
    .B1_N(_0504_),
    .Y(_4408_));
 sky130_fd_sc_hd__nand2_1 _8889_ (.A(net170),
    .B(net364),
    .Y(_4409_));
 sky130_fd_sc_hd__a31oi_1 _8890_ (.A1(net776),
    .A2(_4408_),
    .A3(_4409_),
    .B1(_4405_),
    .Y(_0522_));
 sky130_fd_sc_hd__o21a_1 _8891_ (.A1(net266),
    .A2(net233),
    .B1(_0528_),
    .X(_0524_));
 sky130_fd_sc_hd__a21boi_0 _8892_ (.A1(_4317_),
    .A2(_4384_),
    .B1_N(net171),
    .Y(_0525_));
 sky130_fd_sc_hd__a21o_1 _8893_ (.A1(_1679_),
    .A2(_4339_),
    .B1(_1670_),
    .X(_4410_));
 sky130_fd_sc_hd__nand2_1 _8894_ (.A(_1656_),
    .B(_4368_),
    .Y(_4411_));
 sky130_fd_sc_hd__o21ai_0 _8895_ (.A1(net747),
    .A2(net749),
    .B1(net691),
    .Y(_4412_));
 sky130_fd_sc_hd__o21ai_0 _8896_ (.A1(_4306_),
    .A2(_4411_),
    .B1(_4412_),
    .Y(_4413_));
 sky130_fd_sc_hd__nand4_1 _8897_ (.A(net776),
    .B(_4369_),
    .C(_4386_),
    .D(_4413_),
    .Y(_4414_));
 sky130_fd_sc_hd__a21oi_1 _8898_ (.A1(net747),
    .A2(_4410_),
    .B1(_4414_),
    .Y(_0526_));
 sky130_fd_sc_hd__a31oi_4 _8899_ (.A1(net747),
    .A2(net671),
    .A3(_4339_),
    .B1(_4414_),
    .Y(_0527_));
 sky130_fd_sc_hd__nand2_1 _8900_ (.A(instr_beq),
    .B(net663),
    .Y(_4415_));
 sky130_fd_sc_hd__o21ai_0 _8901_ (.A1(_4273_),
    .A2(_4294_),
    .B1(_4415_),
    .Y(_0789_));
 sky130_fd_sc_hd__inv_1 _8902_ (.A(\count_cycle[62] ),
    .Y(_4416_));
 sky130_fd_sc_hd__nor3_1 _8903_ (.A(_4416_),
    .B(_4022_),
    .C(_4054_),
    .Y(_4417_));
 sky130_fd_sc_hd__xor2_1 _8904_ (.A(\count_cycle[63] ),
    .B(_4417_),
    .X(_4418_));
 sky130_fd_sc_hd__and2_1 _8905_ (.A(net775),
    .B(_4418_),
    .X(_0791_));
 sky130_fd_sc_hd__nand2_1 _8906_ (.A(\mem_rdata_q[3] ),
    .B(\mem_rdata_q[2] ),
    .Y(_4419_));
 sky130_fd_sc_hd__nor2_1 _8907_ (.A(\mem_rdata_q[6] ),
    .B(\mem_rdata_q[5] ),
    .Y(_4420_));
 sky130_fd_sc_hd__nand3_1 _8908_ (.A(\mem_rdata_q[1] ),
    .B(\mem_rdata_q[0] ),
    .C(_4420_),
    .Y(_4421_));
 sky130_fd_sc_hd__nor4_1 _8909_ (.A(\mem_rdata_q[4] ),
    .B(_4273_),
    .C(_4419_),
    .D(_4421_),
    .Y(_4422_));
 sky130_fd_sc_hd__mux2i_1 _8910_ (.A0(instr_fence),
    .A1(_4422_),
    .S(_0812_),
    .Y(_4423_));
 sky130_fd_sc_hd__nor2b_1 _8911_ (.A(_4423_),
    .B_N(net776),
    .Y(_0792_));
 sky130_fd_sc_hd__nor3b_1 _8912_ (.A(net698),
    .B(net163),
    .C_N(net160),
    .Y(_4424_));
 sky130_fd_sc_hd__nor3b_1 _8913_ (.A(\mem_rdata_q[3] ),
    .B(_3278_),
    .C_N(\mem_rdata_q[2] ),
    .Y(_4425_));
 sky130_fd_sc_hd__nand2_1 _8914_ (.A(\mem_rdata_q[1] ),
    .B(\mem_rdata_q[0] ),
    .Y(_4426_));
 sky130_fd_sc_hd__nand3_1 _8915_ (.A(net149),
    .B(net138),
    .C(_3278_),
    .Y(_4427_));
 sky130_fd_sc_hd__o21ai_0 _8916_ (.A1(_3278_),
    .A2(_4426_),
    .B1(_4427_),
    .Y(_4428_));
 sky130_fd_sc_hd__o21ai_0 _8917_ (.A1(_4424_),
    .A2(_4425_),
    .B1(_4428_),
    .Y(_4429_));
 sky130_fd_sc_hd__nand3b_1 _8918_ (.A_N(net166),
    .B(net165),
    .C(net677),
    .Y(_4430_));
 sky130_fd_sc_hd__nand3b_1 _8919_ (.A_N(\mem_rdata_q[6] ),
    .B(\mem_rdata_q[5] ),
    .C(net698),
    .Y(_4431_));
 sky130_fd_sc_hd__mux2i_1 _8920_ (.A0(net164),
    .A1(\mem_rdata_q[4] ),
    .S(net698),
    .Y(_4432_));
 sky130_fd_sc_hd__a21o_1 _8921_ (.A1(_4430_),
    .A2(_4431_),
    .B1(_4432_),
    .X(_4433_));
 sky130_fd_sc_hd__nor2_1 _8922_ (.A(_4429_),
    .B(_4433_),
    .Y(_0805_));
 sky130_fd_sc_hd__nor3_1 _8923_ (.A(net166),
    .B(net165),
    .C(net698),
    .Y(_4434_));
 sky130_fd_sc_hd__a21oi_1 _8924_ (.A1(net698),
    .A2(_4420_),
    .B1(_4434_),
    .Y(_4435_));
 sky130_fd_sc_hd__nor3_1 _8925_ (.A(_4429_),
    .B(_4432_),
    .C(_4435_),
    .Y(_0806_));
 sky130_fd_sc_hd__nand3_1 _8926_ (.A(\mem_rdata_q[6] ),
    .B(\mem_rdata_q[5] ),
    .C(net698),
    .Y(_4436_));
 sky130_fd_sc_hd__nand3_1 _8927_ (.A(net166),
    .B(net165),
    .C(_3278_),
    .Y(_4437_));
 sky130_fd_sc_hd__nand2_1 _8928_ (.A(_4436_),
    .B(_4437_),
    .Y(_4438_));
 sky130_fd_sc_hd__nand2_1 _8929_ (.A(_4432_),
    .B(_4438_),
    .Y(_4439_));
 sky130_fd_sc_hd__nand3_1 _8930_ (.A(net163),
    .B(net160),
    .C(_3278_),
    .Y(_4440_));
 sky130_fd_sc_hd__o21ai_0 _8931_ (.A1(_3278_),
    .A2(_4419_),
    .B1(_4440_),
    .Y(_4441_));
 sky130_fd_sc_hd__nand2_1 _8932_ (.A(_4428_),
    .B(_4441_),
    .Y(_4442_));
 sky130_fd_sc_hd__nor2_1 _8933_ (.A(_4439_),
    .B(_4442_),
    .Y(_0807_));
 sky130_fd_sc_hd__nor3_1 _8934_ (.A(\mem_rdata_q[3] ),
    .B(\mem_rdata_q[2] ),
    .C(_3278_),
    .Y(_4443_));
 sky130_fd_sc_hd__nor3_1 _8935_ (.A(net163),
    .B(net160),
    .C(net698),
    .Y(_4444_));
 sky130_fd_sc_hd__o21ai_0 _8936_ (.A1(_4443_),
    .A2(_4444_),
    .B1(_4428_),
    .Y(_4445_));
 sky130_fd_sc_hd__inv_1 _8937_ (.A(_4445_),
    .Y(_4446_));
 sky130_fd_sc_hd__nand2_1 _8938_ (.A(_4432_),
    .B(_4446_),
    .Y(_4447_));
 sky130_fd_sc_hd__nor2_1 _8939_ (.A(_4435_),
    .B(_4447_),
    .Y(_0808_));
 sky130_fd_sc_hd__a21oi_1 _8940_ (.A1(_4430_),
    .A2(_4431_),
    .B1(_4447_),
    .Y(_0809_));
 sky130_fd_sc_hd__nor3_1 _8941_ (.A(_4432_),
    .B(_4435_),
    .C(_4445_),
    .Y(_0810_));
 sky130_fd_sc_hd__nor2_1 _8942_ (.A(_4433_),
    .B(_4445_),
    .Y(_0811_));
 sky130_fd_sc_hd__nor2_1 _8943_ (.A(_4334_),
    .B(_4273_),
    .Y(_0813_));
 sky130_fd_sc_hd__nor2_1 _8944_ (.A(_4334_),
    .B(_4270_),
    .Y(_0814_));
 sky130_fd_sc_hd__nor2_1 _8945_ (.A(_4334_),
    .B(_4259_),
    .Y(_0815_));
 sky130_fd_sc_hd__nor2_1 _8946_ (.A(_4334_),
    .B(_4288_),
    .Y(_0816_));
 sky130_fd_sc_hd__nor2_1 _8947_ (.A(_4334_),
    .B(_4297_),
    .Y(_0817_));
 sky130_fd_sc_hd__nor2_1 _8948_ (.A(_3440_),
    .B(_4273_),
    .Y(_0818_));
 sky130_fd_sc_hd__nor2_1 _8949_ (.A(_3440_),
    .B(_4270_),
    .Y(_0819_));
 sky130_fd_sc_hd__nor2_1 _8950_ (.A(_3440_),
    .B(_4259_),
    .Y(_0820_));
 sky130_fd_sc_hd__and2_1 _8951_ (.A(is_alu_reg_imm),
    .B(_4271_),
    .X(_0821_));
 sky130_fd_sc_hd__nor2_1 _8952_ (.A(_3277_),
    .B(_4269_),
    .Y(_4448_));
 sky130_fd_sc_hd__and3_1 _8953_ (.A(is_alu_reg_imm),
    .B(_4262_),
    .C(_4448_),
    .X(_0822_));
 sky130_fd_sc_hd__and4_1 _8954_ (.A(\mem_rdata_q[30] ),
    .B(is_alu_reg_imm),
    .C(_4275_),
    .D(_4448_),
    .X(_0823_));
 sky130_fd_sc_hd__nand2_1 _8955_ (.A(\mem_rdata_q[31] ),
    .B(\mem_rdata_q[30] ),
    .Y(_4449_));
 sky130_fd_sc_hd__or4_1 _8956_ (.A(\mem_rdata_q[24] ),
    .B(_4259_),
    .C(_4260_),
    .D(_4449_),
    .X(_4450_));
 sky130_fd_sc_hd__nor4_1 _8957_ (.A(\mem_rdata_q[19] ),
    .B(\mem_rdata_q[18] ),
    .C(\mem_rdata_q[17] ),
    .D(\mem_rdata_q[15] ),
    .Y(_4451_));
 sky130_fd_sc_hd__nor4b_1 _8958_ (.A(\mem_rdata_q[23] ),
    .B(\mem_rdata_q[22] ),
    .C(\mem_rdata_q[16] ),
    .D_N(\mem_rdata_q[4] ),
    .Y(_4452_));
 sky130_fd_sc_hd__nand2_1 _8959_ (.A(_4451_),
    .B(_4452_),
    .Y(_4453_));
 sky130_fd_sc_hd__nor2_1 _8960_ (.A(\mem_rdata_q[3] ),
    .B(\mem_rdata_q[2] ),
    .Y(_4454_));
 sky130_fd_sc_hd__nand3_1 _8961_ (.A(\mem_rdata_q[6] ),
    .B(\mem_rdata_q[5] ),
    .C(_4454_),
    .Y(_4455_));
 sky130_fd_sc_hd__or4_1 _8962_ (.A(_4426_),
    .B(_4450_),
    .C(_4453_),
    .D(_4455_),
    .X(_4456_));
 sky130_fd_sc_hd__nor4b_1 _8963_ (.A(net735),
    .B(\mem_rdata_q[20] ),
    .C(_4456_),
    .D_N(\mem_rdata_q[21] ),
    .Y(_0826_));
 sky130_fd_sc_hd__nor4bb_1 _8964_ (.A(\mem_rdata_q[20] ),
    .B(_4456_),
    .C_N(net735),
    .D_N(\mem_rdata_q[21] ),
    .Y(_0827_));
 sky130_fd_sc_hd__a211oi_1 _8965_ (.A1(\mem_rdata_q[30] ),
    .A2(_3277_),
    .B1(_4261_),
    .C1(_4269_),
    .Y(_4457_));
 sky130_fd_sc_hd__and2_1 _8966_ (.A(is_alu_reg_imm),
    .B(_4457_),
    .X(_0828_));
 sky130_fd_sc_hd__and2_1 _8967_ (.A(is_alu_reg_reg),
    .B(_4457_),
    .X(_0829_));
 sky130_fd_sc_hd__or3_1 _8968_ (.A(\mem_rdata_latched[14] ),
    .B(\mem_rdata_latched[12] ),
    .C(\mem_rdata_latched[13] ),
    .X(_4458_));
 sky130_fd_sc_hd__nor3_1 _8969_ (.A(_4429_),
    .B(_4439_),
    .C(_4458_),
    .Y(_0831_));
 sky130_fd_sc_hd__nor3_1 _8970_ (.A(net735),
    .B(\mem_rdata_q[21] ),
    .C(_4456_),
    .Y(_0824_));
 sky130_fd_sc_hd__nor3b_1 _8971_ (.A(\mem_rdata_q[21] ),
    .B(_4456_),
    .C_N(net735),
    .Y(_0825_));
 sky130_fd_sc_hd__a21o_1 _8972_ (.A1(is_alu_reg_imm),
    .A2(_4269_),
    .B1(instr_jalr),
    .X(_0832_));
 sky130_fd_sc_hd__nand2_1 _8973_ (.A(instr_xor),
    .B(net663),
    .Y(_4459_));
 sky130_fd_sc_hd__o21ai_0 _8974_ (.A1(_4264_),
    .A2(_4288_),
    .B1(_4459_),
    .Y(_0793_));
 sky130_fd_sc_hd__o21ai_0 _8975_ (.A1(net308),
    .A2(net733),
    .B1(net721),
    .Y(_4460_));
 sky130_fd_sc_hd__nand2_1 _8976_ (.A(_0962_),
    .B(_4460_),
    .Y(net270));
 sky130_fd_sc_hd__o32a_1 _8977_ (.A1(_1500_),
    .A2(net690),
    .A3(_4384_),
    .B1(_0784_),
    .B2(net611),
    .X(_0000_));
 sky130_fd_sc_hd__a222oi_1 _8978_ (.A1(\count_cycle[63] ),
    .A2(net742),
    .B1(net741),
    .B2(\count_instr[31] ),
    .C1(\count_instr[63] ),
    .C2(net740),
    .Y(_4461_));
 sky130_fd_sc_hd__nand2_1 _8979_ (.A(\count_cycle[31] ),
    .B(net686),
    .Y(_4462_));
 sky130_fd_sc_hd__nand2_1 _8980_ (.A(_4461_),
    .B(_4462_),
    .Y(_4463_));
 sky130_fd_sc_hd__a221oi_1 _8981_ (.A1(net709),
    .A2(net747),
    .B1(net749),
    .B2(_4463_),
    .C1(_2936_),
    .Y(_4464_));
 sky130_fd_sc_hd__a21o_1 _8982_ (.A1(_0291_),
    .A2(_0440_),
    .B1(_0439_),
    .X(_4465_));
 sky130_fd_sc_hd__a31oi_1 _8983_ (.A1(_0292_),
    .A2(_0440_),
    .A3(_2986_),
    .B1(_4465_),
    .Y(_4466_));
 sky130_fd_sc_hd__xor2_1 _8984_ (.A(\reg_pc[31] ),
    .B(\decoded_imm[31] ),
    .X(_4467_));
 sky130_fd_sc_hd__xnor2_1 _8985_ (.A(_4466_),
    .B(_4467_),
    .Y(_4468_));
 sky130_fd_sc_hd__nand2_1 _8986_ (.A(net748),
    .B(_4468_),
    .Y(_4469_));
 sky130_fd_sc_hd__a21oi_1 _8987_ (.A1(net162),
    .A2(net678),
    .B1(_2881_),
    .Y(_4470_));
 sky130_fd_sc_hd__a21oi_1 _8988_ (.A1(_4464_),
    .A2(_4469_),
    .B1(_4470_),
    .Y(_0028_));
 sky130_fd_sc_hd__nor2_1 _8989_ (.A(is_slli_srli_srai),
    .B(_2795_),
    .Y(_4471_));
 sky130_fd_sc_hd__a21oi_1 _8990_ (.A1(\decoded_imm_j[4] ),
    .A2(is_slli_srli_srai),
    .B1(_4471_),
    .Y(_4472_));
 sky130_fd_sc_hd__xor2_1 _8991_ (.A(\reg_sh[4] ),
    .B(_0157_),
    .X(_4473_));
 sky130_fd_sc_hd__inv_1 _8992_ (.A(_0159_),
    .Y(_4474_));
 sky130_fd_sc_hd__o21ai_0 _8993_ (.A1(_4474_),
    .A2(_0165_),
    .B1(_0157_),
    .Y(_4475_));
 sky130_fd_sc_hd__nand2_1 _8994_ (.A(net658),
    .B(_4475_),
    .Y(_4476_));
 sky130_fd_sc_hd__o211ai_1 _8995_ (.A1(net658),
    .A2(_4473_),
    .B1(_4476_),
    .C1(net746),
    .Y(_4477_));
 sky130_fd_sc_hd__o21ai_0 _8996_ (.A1(net746),
    .A2(_4472_),
    .B1(_4477_),
    .Y(_0040_));
 sky130_fd_sc_hd__mux4_2 _8997_ (.A0(\cpuregs[0][31] ),
    .A1(\cpuregs[1][31] ),
    .A2(\cpuregs[2][31] ),
    .A3(\cpuregs[3][31] ),
    .S0(net762),
    .S1(net757),
    .X(_4478_));
 sky130_fd_sc_hd__mux4_2 _8998_ (.A0(\cpuregs[4][31] ),
    .A1(\cpuregs[5][31] ),
    .A2(\cpuregs[6][31] ),
    .A3(\cpuregs[7][31] ),
    .S0(net762),
    .S1(net757),
    .X(_4479_));
 sky130_fd_sc_hd__mux4_2 _8999_ (.A0(\cpuregs[8][31] ),
    .A1(\cpuregs[9][31] ),
    .A2(\cpuregs[10][31] ),
    .A3(\cpuregs[11][31] ),
    .S0(net762),
    .S1(net757),
    .X(_4480_));
 sky130_fd_sc_hd__mux4_2 _9000_ (.A0(\cpuregs[12][31] ),
    .A1(\cpuregs[13][31] ),
    .A2(\cpuregs[14][31] ),
    .A3(\cpuregs[15][31] ),
    .S0(net762),
    .S1(net757),
    .X(_4481_));
 sky130_fd_sc_hd__mux4_2 _9001_ (.A0(_4478_),
    .A1(_4479_),
    .A2(_4480_),
    .A3(_4481_),
    .S0(net754),
    .S1(_0049_),
    .X(_4482_));
 sky130_fd_sc_hd__mux4_2 _9002_ (.A0(\cpuregs[16][31] ),
    .A1(\cpuregs[17][31] ),
    .A2(\cpuregs[18][31] ),
    .A3(\cpuregs[19][31] ),
    .S0(_0046_),
    .S1(net757),
    .X(_4483_));
 sky130_fd_sc_hd__mux4_2 _9003_ (.A0(\cpuregs[20][31] ),
    .A1(\cpuregs[21][31] ),
    .A2(\cpuregs[22][31] ),
    .A3(\cpuregs[23][31] ),
    .S0(_0046_),
    .S1(net757),
    .X(_4484_));
 sky130_fd_sc_hd__mux4_2 _9004_ (.A0(\cpuregs[24][31] ),
    .A1(\cpuregs[25][31] ),
    .A2(\cpuregs[26][31] ),
    .A3(\cpuregs[27][31] ),
    .S0(_0046_),
    .S1(net757),
    .X(_4485_));
 sky130_fd_sc_hd__mux4_2 _9005_ (.A0(\cpuregs[28][31] ),
    .A1(\cpuregs[29][31] ),
    .A2(\cpuregs[30][31] ),
    .A3(\cpuregs[31][31] ),
    .S0(_0046_),
    .S1(net757),
    .X(_4486_));
 sky130_fd_sc_hd__mux4_2 _9006_ (.A0(_4483_),
    .A1(_4484_),
    .A2(_4485_),
    .A3(_4486_),
    .S0(net754),
    .S1(_0049_),
    .X(_4487_));
 sky130_fd_sc_hd__mux2i_1 _9007_ (.A0(_4482_),
    .A1(_4487_),
    .S(_0050_),
    .Y(_4488_));
 sky130_fd_sc_hd__nand2_1 _9008_ (.A(\decoded_imm[31] ),
    .B(net687),
    .Y(_4489_));
 sky130_fd_sc_hd__o21ai_0 _9009_ (.A1(net668),
    .A2(_4488_),
    .B1(_4489_),
    .Y(_4588_));
 sky130_fd_sc_hd__a21oi_1 _9010_ (.A1(_4406_),
    .A2(_4233_),
    .B1(_3420_),
    .Y(_0794_));
 sky130_fd_sc_hd__a21o_1 _9011_ (.A1(_0087_),
    .A2(_0088_),
    .B1(_0086_),
    .X(_4490_));
 sky130_fd_sc_hd__a21oi_1 _9012_ (.A1(_0085_),
    .A2(_4490_),
    .B1(_0084_),
    .Y(_4491_));
 sky130_fd_sc_hd__o21bai_1 _9013_ (.A1(_1659_),
    .A2(_4491_),
    .B1_N(_0082_),
    .Y(_4492_));
 sky130_fd_sc_hd__a21oi_1 _9014_ (.A1(_0081_),
    .A2(_4492_),
    .B1(_0080_),
    .Y(_4493_));
 sky130_fd_sc_hd__o21ai_0 _9015_ (.A1(_1654_),
    .A2(_1788_),
    .B1(_4493_),
    .Y(_4494_));
 sky130_fd_sc_hd__a21oi_1 _9016_ (.A1(_0079_),
    .A2(_4494_),
    .B1(_0078_),
    .Y(_4495_));
 sky130_fd_sc_hd__xnor2_1 _9017_ (.A(net709),
    .B(\decoded_imm[31] ),
    .Y(_4496_));
 sky130_fd_sc_hd__xnor2_1 _9018_ (.A(_4495_),
    .B(_4496_),
    .Y(_4497_));
 sky130_fd_sc_hd__nand2_1 _9019_ (.A(net710),
    .B(net658),
    .Y(_4498_));
 sky130_fd_sc_hd__o21ai_0 _9020_ (.A1(_0297_),
    .A2(net658),
    .B1(_4498_),
    .Y(_4499_));
 sky130_fd_sc_hd__mux4_2 _9021_ (.A0(\cpuregs[0][31] ),
    .A1(\cpuregs[1][31] ),
    .A2(\cpuregs[2][31] ),
    .A3(\cpuregs[3][31] ),
    .S0(_0041_),
    .S1(net768),
    .X(_4500_));
 sky130_fd_sc_hd__mux4_2 _9022_ (.A0(\cpuregs[4][31] ),
    .A1(\cpuregs[5][31] ),
    .A2(\cpuregs[6][31] ),
    .A3(\cpuregs[7][31] ),
    .S0(net771),
    .S1(net768),
    .X(_4501_));
 sky130_fd_sc_hd__mux4_2 _9023_ (.A0(\cpuregs[16][31] ),
    .A1(\cpuregs[17][31] ),
    .A2(\cpuregs[18][31] ),
    .A3(\cpuregs[19][31] ),
    .S0(net771),
    .S1(net768),
    .X(_4502_));
 sky130_fd_sc_hd__mux4_2 _9024_ (.A0(\cpuregs[20][31] ),
    .A1(\cpuregs[21][31] ),
    .A2(\cpuregs[22][31] ),
    .A3(\cpuregs[23][31] ),
    .S0(net771),
    .S1(net768),
    .X(_4503_));
 sky130_fd_sc_hd__mux4_2 _9025_ (.A0(_4500_),
    .A1(_4501_),
    .A2(_4502_),
    .A3(_4503_),
    .S0(_0043_),
    .S1(_0045_),
    .X(_4504_));
 sky130_fd_sc_hd__mux4_2 _9026_ (.A0(\cpuregs[8][31] ),
    .A1(\cpuregs[9][31] ),
    .A2(\cpuregs[10][31] ),
    .A3(\cpuregs[11][31] ),
    .S0(_0041_),
    .S1(net769),
    .X(_4505_));
 sky130_fd_sc_hd__mux4_2 _9027_ (.A0(\cpuregs[12][31] ),
    .A1(\cpuregs[13][31] ),
    .A2(\cpuregs[14][31] ),
    .A3(\cpuregs[15][31] ),
    .S0(_0041_),
    .S1(net769),
    .X(_4506_));
 sky130_fd_sc_hd__mux4_2 _9028_ (.A0(\cpuregs[24][31] ),
    .A1(\cpuregs[25][31] ),
    .A2(\cpuregs[26][31] ),
    .A3(\cpuregs[27][31] ),
    .S0(net771),
    .S1(net769),
    .X(_4507_));
 sky130_fd_sc_hd__mux4_2 _9029_ (.A0(\cpuregs[28][31] ),
    .A1(\cpuregs[29][31] ),
    .A2(\cpuregs[30][31] ),
    .A3(\cpuregs[31][31] ),
    .S0(net771),
    .S1(net769),
    .X(_4508_));
 sky130_fd_sc_hd__mux4_2 _9030_ (.A0(_4505_),
    .A1(_4506_),
    .A2(_4507_),
    .A3(_4508_),
    .S0(_0043_),
    .S1(net763),
    .X(_4509_));
 sky130_fd_sc_hd__mux2i_1 _9031_ (.A0(_4504_),
    .A1(_4509_),
    .S(net764),
    .Y(_4510_));
 sky130_fd_sc_hd__nand2_1 _9032_ (.A(\reg_pc[31] ),
    .B(net688),
    .Y(_4511_));
 sky130_fd_sc_hd__o21ai_0 _9033_ (.A1(_1687_),
    .A2(_4510_),
    .B1(_4511_),
    .Y(_4512_));
 sky130_fd_sc_hd__a32oi_1 _9034_ (.A1(net747),
    .A2(net671),
    .A3(_4499_),
    .B1(_4512_),
    .B2(_1728_),
    .Y(_4513_));
 sky130_fd_sc_hd__o21ai_0 _9035_ (.A1(net691),
    .A2(_4497_),
    .B1(_4513_),
    .Y(_4620_));
 sky130_fd_sc_hd__nor3_1 _9036_ (.A(_0871_),
    .B(_4439_),
    .C(_4445_),
    .Y(_4514_));
 sky130_fd_sc_hd__a21oi_1 _9037_ (.A1(is_beq_bne_blt_bge_bltu_bgeu),
    .A2(_0871_),
    .B1(_4514_),
    .Y(_4515_));
 sky130_fd_sc_hd__nor2b_1 _9038_ (.A(_4515_),
    .B_N(net776),
    .Y(_0796_));
 sky130_fd_sc_hd__nand4_1 _9039_ (.A(\reg_pc[27] ),
    .B(\reg_pc[28] ),
    .C(\reg_pc[29] ),
    .D(\reg_pc[30] ),
    .Y(_4516_));
 sky130_fd_sc_hd__nor2_1 _9040_ (.A(_1533_),
    .B(_4516_),
    .Y(_4517_));
 sky130_fd_sc_hd__xnor2_1 _9041_ (.A(\reg_pc[31] ),
    .B(_4517_),
    .Y(_4518_));
 sky130_fd_sc_hd__mux2i_2 _9042_ (.A0(_4301_),
    .A1(_4518_),
    .S(net693),
    .Y(\cpuregs_wrdata[31] ));
 sky130_fd_sc_hd__a21o_1 _9043_ (.A1(_0194_),
    .A2(_1181_),
    .B1(_0193_),
    .X(_4519_));
 sky130_fd_sc_hd__and4_1 _9044_ (.A(_0147_),
    .B(_0194_),
    .C(_0116_),
    .D(_1027_),
    .X(_4520_));
 sky130_fd_sc_hd__a221oi_2 _9045_ (.A1(_0147_),
    .A2(_4519_),
    .B1(_4520_),
    .B2(_1180_),
    .C1(_0146_),
    .Y(_4521_));
 sky130_fd_sc_hd__xnor2_1 _9046_ (.A(_1495_),
    .B(_4521_),
    .Y(_4522_));
 sky130_fd_sc_hd__nor2_1 _9047_ (.A(_0296_),
    .B(_0489_),
    .Y(_4523_));
 sky130_fd_sc_hd__a21boi_0 _9048_ (.A1(_1224_),
    .A2(_1223_),
    .B1_N(_1103_),
    .Y(_4524_));
 sky130_fd_sc_hd__o21ai_0 _9049_ (.A1(_1031_),
    .A2(_4524_),
    .B1(_0295_),
    .Y(_4525_));
 sky130_fd_sc_hd__mux2_2 _9050_ (.A0(_0489_),
    .A1(_4523_),
    .S(_4525_),
    .X(_4526_));
 sky130_fd_sc_hd__nand3b_1 _9051_ (.A_N(net739),
    .B(_0296_),
    .C(_0489_),
    .Y(_4527_));
 sky130_fd_sc_hd__nand2_1 _9052_ (.A(_0489_),
    .B(_1013_),
    .Y(_4528_));
 sky130_fd_sc_hd__o21ai_0 _9053_ (.A1(_0488_),
    .A2(net694),
    .B1(_4528_),
    .Y(_4529_));
 sky130_fd_sc_hd__a221oi_1 _9054_ (.A1(_0490_),
    .A2(_1016_),
    .B1(net679),
    .B2(_4527_),
    .C1(_4529_),
    .Y(_4530_));
 sky130_fd_sc_hd__a221oi_1 _9055_ (.A1(_1100_),
    .A2(_4522_),
    .B1(_4526_),
    .B2(_1254_),
    .C1(_4530_),
    .Y(\alu_out[31] ));
 sky130_fd_sc_hd__nand2b_1 _9056_ (.A_N(_0076_),
    .B(_3753_),
    .Y(_4531_));
 sky130_fd_sc_hd__a21oi_1 _9057_ (.A1(_0424_),
    .A2(_3724_),
    .B1(_0423_),
    .Y(_4532_));
 sky130_fd_sc_hd__nor2b_1 _9058_ (.A(_4532_),
    .B_N(_0389_),
    .Y(_4533_));
 sky130_fd_sc_hd__a2111oi_1 _9059_ (.A1(_0392_),
    .A2(_4531_),
    .B1(_4533_),
    .C1(_0391_),
    .D1(_0388_),
    .Y(_4534_));
 sky130_fd_sc_hd__a21oi_1 _9060_ (.A1(_0339_),
    .A2(_0381_),
    .B1(_0338_),
    .Y(_4535_));
 sky130_fd_sc_hd__a21boi_0 _9061_ (.A1(_3692_),
    .A2(_4535_),
    .B1_N(_0424_),
    .Y(_4536_));
 sky130_fd_sc_hd__o21ai_0 _9062_ (.A1(_0423_),
    .A2(_4536_),
    .B1(_0389_),
    .Y(_4537_));
 sky130_fd_sc_hd__nand2b_1 _9063_ (.A_N(_0388_),
    .B(_4537_),
    .Y(_4538_));
 sky130_fd_sc_hd__xor2_1 _9064_ (.A(net745),
    .B(_4303_),
    .X(_4539_));
 sky130_fd_sc_hd__o21ai_0 _9065_ (.A1(\reg_next_pc[31] ),
    .A2(\cpu_state[1] ),
    .B1(net776),
    .Y(_4540_));
 sky130_fd_sc_hd__nor2_1 _9066_ (.A(_3716_),
    .B(_4540_),
    .Y(_4541_));
 sky130_fd_sc_hd__nand3_1 _9067_ (.A(_4538_),
    .B(_4539_),
    .C(_4541_),
    .Y(_4542_));
 sky130_fd_sc_hd__nand3_1 _9068_ (.A(_0387_),
    .B(_3704_),
    .C(_3764_),
    .Y(_4543_));
 sky130_fd_sc_hd__xor2_1 _9069_ (.A(_4303_),
    .B(_4543_),
    .X(_4544_));
 sky130_fd_sc_hd__nand3_1 _9070_ (.A(net745),
    .B(net744),
    .C(_4303_),
    .Y(_4545_));
 sky130_fd_sc_hd__o21ai_0 _9071_ (.A1(net745),
    .A2(_4303_),
    .B1(_4545_),
    .Y(_4546_));
 sky130_fd_sc_hd__nand2_1 _9072_ (.A(net743),
    .B(_4546_),
    .Y(_4547_));
 sky130_fd_sc_hd__o221ai_1 _9073_ (.A1(net744),
    .A2(_4303_),
    .B1(_4538_),
    .B2(_4547_),
    .C1(\cpu_state[1] ),
    .Y(_4548_));
 sky130_fd_sc_hd__a21oi_1 _9074_ (.A1(_3780_),
    .A2(_4544_),
    .B1(_4548_),
    .Y(_4549_));
 sky130_fd_sc_hd__nor3_1 _9075_ (.A(_3716_),
    .B(_4540_),
    .C(_4539_),
    .Y(_4550_));
 sky130_fd_sc_hd__a2bb2oi_1 _9076_ (.A1_N(_4540_),
    .A2_N(_4549_),
    .B1(_4534_),
    .B2(_4550_),
    .Y(_4551_));
 sky130_fd_sc_hd__o21ai_0 _9077_ (.A1(_4534_),
    .A2(_4542_),
    .B1(_4551_),
    .Y(_0797_));
 sky130_fd_sc_hd__a21boi_0 _9078_ (.A1(_3439_),
    .A2(_4345_),
    .B1_N(_4265_),
    .Y(_0798_));
 sky130_fd_sc_hd__nand2_1 _9079_ (.A(instr_and),
    .B(net663),
    .Y(_4552_));
 sky130_fd_sc_hd__o21ai_0 _9080_ (.A1(_4264_),
    .A2(_4283_),
    .B1(_4552_),
    .Y(_0799_));
 sky130_fd_sc_hd__nor2_1 _9081_ (.A(net307),
    .B(net266),
    .Y(_4553_));
 sky130_fd_sc_hd__a311oi_1 _9082_ (.A1(_0962_),
    .A2(net266),
    .A3(_4460_),
    .B1(_4553_),
    .C1(_1004_),
    .Y(_4632_));
 sky130_fd_sc_hd__nand2_1 _9083_ (.A(instr_sltu),
    .B(net663),
    .Y(_4554_));
 sky130_fd_sc_hd__o21ai_0 _9084_ (.A1(_4264_),
    .A2(_4290_),
    .B1(_4554_),
    .Y(_0800_));
 sky130_fd_sc_hd__o21ai_0 _9085_ (.A1(_3423_),
    .A2(_3421_),
    .B1(\mem_rdata_q[31] ),
    .Y(_4555_));
 sky130_fd_sc_hd__nand2_1 _9086_ (.A(_3428_),
    .B(_4555_),
    .Y(_0801_));
 sky130_fd_sc_hd__nand2_1 _9087_ (.A(instr_or),
    .B(net663),
    .Y(_4556_));
 sky130_fd_sc_hd__o21ai_0 _9088_ (.A1(_4264_),
    .A2(_4285_),
    .B1(_4556_),
    .Y(_0802_));
 sky130_fd_sc_hd__nand2_1 _9089_ (.A(instr_sra),
    .B(_4265_),
    .Y(_4557_));
 sky130_fd_sc_hd__o21ai_0 _9090_ (.A1(_4276_),
    .A2(_4297_),
    .B1(_4557_),
    .Y(_0803_));
 sky130_fd_sc_hd__nand2_1 _9091_ (.A(instr_srl),
    .B(_4265_),
    .Y(_4558_));
 sky130_fd_sc_hd__o21ai_0 _9092_ (.A1(_4264_),
    .A2(_4297_),
    .B1(_4558_),
    .Y(_0804_));
 sky130_fd_sc_hd__a22oi_1 _9093_ (.A1(net345),
    .A2(net733),
    .B1(net734),
    .B2(net263),
    .Y(_4559_));
 sky130_fd_sc_hd__o21ai_0 _9094_ (.A1(_0481_),
    .A2(_0962_),
    .B1(_4559_),
    .Y(net258));
 sky130_fd_sc_hd__inv_1 _9095_ (.A(_4344_),
    .Y(_0001_));
 sky130_fd_sc_hd__or3_1 _9096_ (.A(instr_blt),
    .B(instr_slti),
    .C(instr_slt),
    .X(_0002_));
 sky130_fd_sc_hd__or3_1 _9097_ (.A(instr_sltu),
    .B(instr_bltu),
    .C(instr_sltiu),
    .X(_0003_));
 sky130_fd_sc_hd__nand2_1 _9098_ (.A(\reg_out[31] ),
    .B(_0886_),
    .Y(_4560_));
 sky130_fd_sc_hd__nor2_1 _9099_ (.A(net332),
    .B(net695),
    .Y(_4561_));
 sky130_fd_sc_hd__a31oi_1 _9100_ (.A1(net695),
    .A2(_4302_),
    .A3(_4560_),
    .B1(_4561_),
    .Y(net225));
 sky130_fd_sc_hd__nand2_1 _9101_ (.A(net162),
    .B(_3278_),
    .Y(_4562_));
 sky130_fd_sc_hd__nand2_1 _9102_ (.A(\mem_rdata_q[31] ),
    .B(net698),
    .Y(_4563_));
 sky130_fd_sc_hd__nand2_1 _9103_ (.A(_4562_),
    .B(_4563_),
    .Y(\mem_rdata_latched[31] ));
 sky130_fd_sc_hd__fa_1 _9104_ (.A(\decoded_imm_j[2] ),
    .B(_0051_),
    .CIN(_0052_),
    .COUT(_0053_),
    .SUM(_0054_));
 sky130_fd_sc_hd__fa_1 _9105_ (.A(net245),
    .B(_0055_),
    .CIN(_0056_),
    .COUT(_0057_),
    .SUM(_0058_));
 sky130_fd_sc_hd__fa_1 _9106_ (.A(net245),
    .B(net721),
    .CIN(_0060_),
    .COUT(_0061_),
    .SUM(_0062_));
 sky130_fd_sc_hd__fa_1 _9107_ (.A(net319),
    .B(\decoded_imm[1] ),
    .CIN(_0063_),
    .COUT(_0064_),
    .SUM(_0065_));
 sky130_fd_sc_hd__fa_1 _9108_ (.A(\reg_pc[2] ),
    .B(\decoded_imm[2] ),
    .CIN(_0066_),
    .COUT(_0067_),
    .SUM(_0068_));
 sky130_fd_sc_hd__ha_1 _9109_ (.A(\reg_pc[2] ),
    .B(\decoded_imm[2] ),
    .COUT(_0070_),
    .SUM(_0071_));
 sky130_fd_sc_hd__ha_1 _9110_ (.A(\decoded_imm_j[20] ),
    .B(_0072_),
    .COUT(_0073_),
    .SUM(_0074_));
 sky130_fd_sc_hd__ha_1 _9111_ (.A(net745),
    .B(_0075_),
    .COUT(_0076_),
    .SUM(_0077_));
 sky130_fd_sc_hd__ha_1 _9112_ (.A(net710),
    .B(\decoded_imm[30] ),
    .COUT(_0078_),
    .SUM(_0079_));
 sky130_fd_sc_hd__ha_1 _9113_ (.A(net329),
    .B(\decoded_imm[29] ),
    .COUT(_0080_),
    .SUM(_0081_));
 sky130_fd_sc_hd__ha_1 _9114_ (.A(net712),
    .B(\decoded_imm[28] ),
    .COUT(_0082_),
    .SUM(_0083_));
 sky130_fd_sc_hd__ha_1 _9115_ (.A(net713),
    .B(\decoded_imm[27] ),
    .COUT(_0084_),
    .SUM(_0085_));
 sky130_fd_sc_hd__ha_1 _9116_ (.A(net714),
    .B(\decoded_imm[26] ),
    .COUT(_0086_),
    .SUM(_0087_));
 sky130_fd_sc_hd__ha_1 _9117_ (.A(net715),
    .B(\decoded_imm[25] ),
    .COUT(_0088_),
    .SUM(_0089_));
 sky130_fd_sc_hd__ha_1 _9118_ (.A(net716),
    .B(\decoded_imm[24] ),
    .COUT(_0090_),
    .SUM(_0091_));
 sky130_fd_sc_hd__ha_1 _9119_ (.A(net717),
    .B(\decoded_imm[23] ),
    .COUT(_0092_),
    .SUM(_0093_));
 sky130_fd_sc_hd__ha_1 _9120_ (.A(\decoded_imm_j[20] ),
    .B(_0094_),
    .COUT(_0095_),
    .SUM(_0096_));
 sky130_fd_sc_hd__ha_1 _9121_ (.A(\decoded_imm_j[16] ),
    .B(_0097_),
    .COUT(_0098_),
    .SUM(_0099_));
 sky130_fd_sc_hd__ha_1 _9122_ (.A(net718),
    .B(\decoded_imm[22] ),
    .COUT(_0100_),
    .SUM(_0101_));
 sky130_fd_sc_hd__ha_1 _9123_ (.A(\reg_pc[9] ),
    .B(\decoded_imm[9] ),
    .COUT(_0103_),
    .SUM(_0104_));
 sky130_fd_sc_hd__ha_1 _9124_ (.A(net717),
    .B(_0105_),
    .COUT(_0106_),
    .SUM(_0107_));
 sky130_fd_sc_hd__ha_1 _9125_ (.A(_0108_),
    .B(_0109_),
    .COUT(_0110_),
    .SUM(_0111_));
 sky130_fd_sc_hd__ha_1 _9126_ (.A(net720),
    .B(_0109_),
    .COUT(_0112_),
    .SUM(_4633_));
 sky130_fd_sc_hd__ha_1 _9127_ (.A(net720),
    .B(net350),
    .COUT(_0113_),
    .SUM(_4634_));
 sky130_fd_sc_hd__ha_1 _9128_ (.A(net713),
    .B(_0114_),
    .COUT(_0115_),
    .SUM(_0116_));
 sky130_fd_sc_hd__ha_1 _9129_ (.A(\decoded_imm_j[9] ),
    .B(_0117_),
    .COUT(_0118_),
    .SUM(_0119_));
 sky130_fd_sc_hd__ha_1 _9130_ (.A(\decoded_imm_j[12] ),
    .B(_0120_),
    .COUT(_0121_),
    .SUM(_0122_));
 sky130_fd_sc_hd__ha_1 _9131_ (.A(_0123_),
    .B(_0105_),
    .COUT(_0124_),
    .SUM(_0125_));
 sky130_fd_sc_hd__ha_1 _9132_ (.A(net717),
    .B(net353),
    .COUT(_0126_),
    .SUM(_4635_));
 sky130_fd_sc_hd__ha_1 _9133_ (.A(net715),
    .B(_0127_),
    .COUT(_0128_),
    .SUM(_0129_));
 sky130_fd_sc_hd__ha_1 _9134_ (.A(\reg_pc[10] ),
    .B(\decoded_imm[10] ),
    .COUT(_0130_),
    .SUM(_0131_));
 sky130_fd_sc_hd__ha_1 _9135_ (.A(\count_cycle[0] ),
    .B(\count_cycle[1] ),
    .COUT(_0132_),
    .SUM(_0133_));
 sky130_fd_sc_hd__ha_1 _9136_ (.A(\reg_pc[19] ),
    .B(\decoded_imm[19] ),
    .COUT(_0134_),
    .SUM(_0135_));
 sky130_fd_sc_hd__ha_1 _9137_ (.A(net703),
    .B(_0136_),
    .COUT(_0137_),
    .SUM(_0138_));
 sky130_fd_sc_hd__ha_1 _9138_ (.A(net726),
    .B(_0139_),
    .COUT(_0140_),
    .SUM(_0141_));
 sky130_fd_sc_hd__ha_1 _9139_ (.A(net728),
    .B(_0142_),
    .COUT(_0143_),
    .SUM(_0144_));
 sky130_fd_sc_hd__ha_1 _9140_ (.A(net710),
    .B(_0145_),
    .COUT(_0146_),
    .SUM(_0147_));
 sky130_fd_sc_hd__ha_1 _9141_ (.A(net730),
    .B(_0148_),
    .COUT(_0149_),
    .SUM(_0150_));
 sky130_fd_sc_hd__ha_1 _9142_ (.A(\reg_pc[26] ),
    .B(\decoded_imm[26] ),
    .COUT(_0151_),
    .SUM(_0152_));
 sky130_fd_sc_hd__ha_1 _9143_ (.A(\reg_pc[22] ),
    .B(\decoded_imm[22] ),
    .COUT(_0153_),
    .SUM(_0154_));
 sky130_fd_sc_hd__ha_1 _9144_ (.A(_0155_),
    .B(_0156_),
    .COUT(_0157_),
    .SUM(_0158_));
 sky130_fd_sc_hd__ha_1 _9145_ (.A(_0155_),
    .B(_0156_),
    .COUT(_0159_),
    .SUM(_4636_));
 sky130_fd_sc_hd__ha_1 _9146_ (.A(\reg_sh[2] ),
    .B(_0156_),
    .COUT(_0160_),
    .SUM(_4637_));
 sky130_fd_sc_hd__ha_1 _9147_ (.A(\reg_pc[2] ),
    .B(\reg_pc[3] ),
    .COUT(_0161_),
    .SUM(_0162_));
 sky130_fd_sc_hd__ha_1 _9148_ (.A(_0163_),
    .B(_0164_),
    .COUT(_0165_),
    .SUM(_0166_));
 sky130_fd_sc_hd__ha_1 _9149_ (.A(_0163_),
    .B(_0164_),
    .COUT(_0167_),
    .SUM(_4638_));
 sky130_fd_sc_hd__ha_1 _9150_ (.A(net719),
    .B(\decoded_imm[21] ),
    .COUT(_0168_),
    .SUM(_0169_));
 sky130_fd_sc_hd__ha_1 _9151_ (.A(net720),
    .B(\decoded_imm[20] ),
    .COUT(_0170_),
    .SUM(_0171_));
 sky130_fd_sc_hd__ha_1 _9152_ (.A(net722),
    .B(\decoded_imm[19] ),
    .COUT(_0172_),
    .SUM(_0173_));
 sky130_fd_sc_hd__ha_1 _9153_ (.A(net723),
    .B(\decoded_imm[18] ),
    .COUT(_0174_),
    .SUM(_0175_));
 sky130_fd_sc_hd__ha_1 _9154_ (.A(net724),
    .B(\decoded_imm[17] ),
    .COUT(_0176_),
    .SUM(_0177_));
 sky130_fd_sc_hd__ha_1 _9155_ (.A(net725),
    .B(\decoded_imm[16] ),
    .COUT(_0178_),
    .SUM(_0179_));
 sky130_fd_sc_hd__ha_1 _9156_ (.A(net726),
    .B(\decoded_imm[15] ),
    .COUT(_0180_),
    .SUM(_0181_));
 sky130_fd_sc_hd__ha_1 _9157_ (.A(net727),
    .B(\decoded_imm[14] ),
    .COUT(_0182_),
    .SUM(_0183_));
 sky130_fd_sc_hd__ha_1 _9158_ (.A(net728),
    .B(\decoded_imm[13] ),
    .COUT(_0184_),
    .SUM(_0185_));
 sky130_fd_sc_hd__ha_1 _9159_ (.A(net729),
    .B(\decoded_imm[12] ),
    .COUT(_0186_),
    .SUM(_0187_));
 sky130_fd_sc_hd__ha_1 _9160_ (.A(net730),
    .B(\decoded_imm[11] ),
    .COUT(_0188_),
    .SUM(_0189_));
 sky130_fd_sc_hd__ha_1 _9161_ (.A(net704),
    .B(\decoded_imm[7] ),
    .COUT(_0190_),
    .SUM(_0191_));
 sky130_fd_sc_hd__ha_1 _9162_ (.A(net329),
    .B(_0192_),
    .COUT(_0193_),
    .SUM(_0194_));
 sky130_fd_sc_hd__ha_1 _9163_ (.A(net714),
    .B(_0195_),
    .COUT(_0196_),
    .SUM(_0197_));
 sky130_fd_sc_hd__ha_1 _9164_ (.A(_0198_),
    .B(_0199_),
    .COUT(_0200_),
    .SUM(_0201_));
 sky130_fd_sc_hd__ha_1 _9165_ (.A(net719),
    .B(_0199_),
    .COUT(_0202_),
    .SUM(_4639_));
 sky130_fd_sc_hd__ha_1 _9166_ (.A(net719),
    .B(net351),
    .COUT(_0203_),
    .SUM(_4640_));
 sky130_fd_sc_hd__ha_1 _9167_ (.A(net723),
    .B(_0204_),
    .COUT(_0205_),
    .SUM(_0206_));
 sky130_fd_sc_hd__ha_1 _9168_ (.A(net724),
    .B(_0207_),
    .COUT(_0208_),
    .SUM(_0209_));
 sky130_fd_sc_hd__ha_1 _9169_ (.A(_0210_),
    .B(_0211_),
    .COUT(_0212_),
    .SUM(_0213_));
 sky130_fd_sc_hd__ha_1 _9170_ (.A(net729),
    .B(_0211_),
    .COUT(_0214_),
    .SUM(_4641_));
 sky130_fd_sc_hd__ha_1 _9171_ (.A(net729),
    .B(net342),
    .COUT(_0215_),
    .SUM(_4642_));
 sky130_fd_sc_hd__ha_1 _9172_ (.A(net722),
    .B(_0216_),
    .COUT(_0217_),
    .SUM(_0218_));
 sky130_fd_sc_hd__ha_1 _9173_ (.A(net703),
    .B(\decoded_imm[8] ),
    .COUT(_0220_),
    .SUM(_0221_));
 sky130_fd_sc_hd__ha_1 _9174_ (.A(net707),
    .B(\decoded_imm[4] ),
    .COUT(_0222_),
    .SUM(_0223_));
 sky130_fd_sc_hd__ha_1 _9175_ (.A(net708),
    .B(\decoded_imm[3] ),
    .COUT(_0224_),
    .SUM(_0225_));
 sky130_fd_sc_hd__ha_1 _9176_ (.A(net711),
    .B(\decoded_imm[2] ),
    .COUT(_0226_),
    .SUM(_0227_));
 sky130_fd_sc_hd__ha_1 _9177_ (.A(net732),
    .B(\decoded_imm[0] ),
    .COUT(_0063_),
    .SUM(_0228_));
 sky130_fd_sc_hd__ha_1 _9178_ (.A(net718),
    .B(_0229_),
    .COUT(_0230_),
    .SUM(_0231_));
 sky130_fd_sc_hd__ha_1 _9179_ (.A(\reg_pc[16] ),
    .B(\decoded_imm[16] ),
    .COUT(_0232_),
    .SUM(_0233_));
 sky130_fd_sc_hd__ha_1 _9180_ (.A(net706),
    .B(_0234_),
    .COUT(_0235_),
    .SUM(_0236_));
 sky130_fd_sc_hd__ha_1 _9181_ (.A(net731),
    .B(\decoded_imm[10] ),
    .COUT(_0237_),
    .SUM(_0238_));
 sky130_fd_sc_hd__ha_1 _9182_ (.A(net702),
    .B(\decoded_imm[9] ),
    .COUT(_0239_),
    .SUM(_0240_));
 sky130_fd_sc_hd__ha_1 _9183_ (.A(net705),
    .B(\decoded_imm[6] ),
    .COUT(_0241_),
    .SUM(_0242_));
 sky130_fd_sc_hd__ha_1 _9184_ (.A(net706),
    .B(\decoded_imm[5] ),
    .COUT(_0243_),
    .SUM(_0244_));
 sky130_fd_sc_hd__ha_1 _9185_ (.A(net319),
    .B(\decoded_imm[1] ),
    .COUT(_0245_),
    .SUM(_0219_));
 sky130_fd_sc_hd__ha_1 _9186_ (.A(_0246_),
    .B(_0204_),
    .COUT(_0247_),
    .SUM(_0248_));
 sky130_fd_sc_hd__ha_1 _9187_ (.A(net723),
    .B(net348),
    .COUT(_0249_),
    .SUM(_4643_));
 sky130_fd_sc_hd__ha_1 _9188_ (.A(_0250_),
    .B(_0207_),
    .COUT(_0251_),
    .SUM(_0252_));
 sky130_fd_sc_hd__ha_1 _9189_ (.A(net724),
    .B(net347),
    .COUT(_0253_),
    .SUM(_4644_));
 sky130_fd_sc_hd__ha_1 _9190_ (.A(_0254_),
    .B(_0127_),
    .COUT(_0255_),
    .SUM(_0256_));
 sky130_fd_sc_hd__ha_1 _9191_ (.A(net715),
    .B(net355),
    .COUT(_0257_),
    .SUM(_4645_));
 sky130_fd_sc_hd__ha_1 _9192_ (.A(net745),
    .B(_0258_),
    .COUT(_0259_),
    .SUM(_0260_));
 sky130_fd_sc_hd__ha_1 _9193_ (.A(\decoded_imm_j[15] ),
    .B(_0261_),
    .COUT(_0262_),
    .SUM(_0263_));
 sky130_fd_sc_hd__ha_1 _9194_ (.A(\reg_pc[15] ),
    .B(\decoded_imm[15] ),
    .COUT(_0264_),
    .SUM(_0265_));
 sky130_fd_sc_hd__ha_1 _9195_ (.A(\decoded_imm_j[3] ),
    .B(_0266_),
    .COUT(_0267_),
    .SUM(_0268_));
 sky130_fd_sc_hd__ha_1 _9196_ (.A(_0269_),
    .B(_0192_),
    .COUT(_0270_),
    .SUM(_0271_));
 sky130_fd_sc_hd__ha_1 _9197_ (.A(net329),
    .B(net359),
    .COUT(_0272_),
    .SUM(_4646_));
 sky130_fd_sc_hd__ha_1 _9198_ (.A(\decoded_imm_j[5] ),
    .B(_0273_),
    .COUT(_0274_),
    .SUM(_0275_));
 sky130_fd_sc_hd__ha_1 _9199_ (.A(_0052_),
    .B(_0266_),
    .COUT(_0276_),
    .SUM(_0277_));
 sky130_fd_sc_hd__ha_1 _9200_ (.A(net711),
    .B(_0278_),
    .COUT(_0279_),
    .SUM(_0280_));
 sky130_fd_sc_hd__ha_1 _9201_ (.A(\reg_pc[28] ),
    .B(\decoded_imm[28] ),
    .COUT(_0281_),
    .SUM(_0282_));
 sky130_fd_sc_hd__ha_1 _9202_ (.A(_0283_),
    .B(_0284_),
    .COUT(_0285_),
    .SUM(_0286_));
 sky130_fd_sc_hd__ha_1 _9203_ (.A(net731),
    .B(_0284_),
    .COUT(_0287_),
    .SUM(_4647_));
 sky130_fd_sc_hd__ha_1 _9204_ (.A(net731),
    .B(net340),
    .COUT(_0288_),
    .SUM(_4648_));
 sky130_fd_sc_hd__ha_1 _9205_ (.A(\reg_pc[11] ),
    .B(\decoded_imm[11] ),
    .COUT(_0289_),
    .SUM(_0290_));
 sky130_fd_sc_hd__ha_1 _9206_ (.A(\reg_pc[29] ),
    .B(\decoded_imm[29] ),
    .COUT(_0291_),
    .SUM(_0292_));
 sky130_fd_sc_hd__ha_1 _9207_ (.A(_0293_),
    .B(_0145_),
    .COUT(_0294_),
    .SUM(_0295_));
 sky130_fd_sc_hd__ha_1 _9208_ (.A(net710),
    .B(net701),
    .COUT(_0296_),
    .SUM(_4649_));
 sky130_fd_sc_hd__ha_1 _9209_ (.A(_0297_),
    .B(_0114_),
    .COUT(_0298_),
    .SUM(_0299_));
 sky130_fd_sc_hd__ha_1 _9210_ (.A(net713),
    .B(net357),
    .COUT(_0300_),
    .SUM(_4650_));
 sky130_fd_sc_hd__ha_1 _9211_ (.A(_0301_),
    .B(_0195_),
    .COUT(_0302_),
    .SUM(_0303_));
 sky130_fd_sc_hd__ha_1 _9212_ (.A(net714),
    .B(net356),
    .COUT(_0304_),
    .SUM(_4651_));
 sky130_fd_sc_hd__ha_1 _9213_ (.A(_0305_),
    .B(_0229_),
    .COUT(_0306_),
    .SUM(_0307_));
 sky130_fd_sc_hd__ha_1 _9214_ (.A(net718),
    .B(net352),
    .COUT(_0308_),
    .SUM(_4652_));
 sky130_fd_sc_hd__ha_1 _9215_ (.A(_0309_),
    .B(_0216_),
    .COUT(_0310_),
    .SUM(_0311_));
 sky130_fd_sc_hd__ha_1 _9216_ (.A(net722),
    .B(net349),
    .COUT(_0312_),
    .SUM(_4653_));
 sky130_fd_sc_hd__ha_1 _9217_ (.A(_0313_),
    .B(_0139_),
    .COUT(_0314_),
    .SUM(_0315_));
 sky130_fd_sc_hd__ha_1 _9218_ (.A(net726),
    .B(net345),
    .COUT(_0316_),
    .SUM(_4654_));
 sky130_fd_sc_hd__ha_1 _9219_ (.A(_0317_),
    .B(_0142_),
    .COUT(_0318_),
    .SUM(_0319_));
 sky130_fd_sc_hd__ha_1 _9220_ (.A(net728),
    .B(net343),
    .COUT(_0320_),
    .SUM(_4655_));
 sky130_fd_sc_hd__ha_1 _9221_ (.A(_0321_),
    .B(_0148_),
    .COUT(_0322_),
    .SUM(_0323_));
 sky130_fd_sc_hd__ha_1 _9222_ (.A(net730),
    .B(net341),
    .COUT(_0324_),
    .SUM(_4656_));
 sky130_fd_sc_hd__ha_1 _9223_ (.A(_0325_),
    .B(_0136_),
    .COUT(_0326_),
    .SUM(_0327_));
 sky130_fd_sc_hd__ha_1 _9224_ (.A(net703),
    .B(net362),
    .COUT(_0328_),
    .SUM(_4657_));
 sky130_fd_sc_hd__ha_1 _9225_ (.A(_0234_),
    .B(_0329_),
    .COUT(_0330_),
    .SUM(_0331_));
 sky130_fd_sc_hd__ha_1 _9226_ (.A(net261),
    .B(net706),
    .COUT(_0332_),
    .SUM(_4658_));
 sky130_fd_sc_hd__ha_1 _9227_ (.A(_0278_),
    .B(_0333_),
    .COUT(_0334_),
    .SUM(_0335_));
 sky130_fd_sc_hd__ha_1 _9228_ (.A(net256),
    .B(net711),
    .COUT(_0336_),
    .SUM(_4659_));
 sky130_fd_sc_hd__ha_1 _9229_ (.A(net745),
    .B(_0337_),
    .COUT(_0338_),
    .SUM(_0339_));
 sky130_fd_sc_hd__ha_1 _9230_ (.A(_0340_),
    .B(_0341_),
    .COUT(_0342_),
    .SUM(_0343_));
 sky130_fd_sc_hd__ha_1 _9231_ (.A(net725),
    .B(_0341_),
    .COUT(_0344_),
    .SUM(_4660_));
 sky130_fd_sc_hd__ha_1 _9232_ (.A(net725),
    .B(net346),
    .COUT(_0345_),
    .SUM(_4661_));
 sky130_fd_sc_hd__ha_1 _9233_ (.A(_0346_),
    .B(_0347_),
    .COUT(_0348_),
    .SUM(_0349_));
 sky130_fd_sc_hd__ha_1 _9234_ (.A(net727),
    .B(_0347_),
    .COUT(_0350_),
    .SUM(_4662_));
 sky130_fd_sc_hd__ha_1 _9235_ (.A(net727),
    .B(net344),
    .COUT(_0351_),
    .SUM(_4663_));
 sky130_fd_sc_hd__ha_1 _9236_ (.A(\reg_pc[27] ),
    .B(\decoded_imm[27] ),
    .COUT(_0352_),
    .SUM(_0353_));
 sky130_fd_sc_hd__ha_1 _9237_ (.A(\reg_pc[23] ),
    .B(\decoded_imm[23] ),
    .COUT(_0354_),
    .SUM(_0355_));
 sky130_fd_sc_hd__ha_1 _9238_ (.A(\reg_pc[5] ),
    .B(\decoded_imm[5] ),
    .COUT(_0356_),
    .SUM(_0357_));
 sky130_fd_sc_hd__ha_1 _9239_ (.A(\reg_pc[1] ),
    .B(\decoded_imm[1] ),
    .COUT(_0066_),
    .SUM(_0358_));
 sky130_fd_sc_hd__ha_1 _9240_ (.A(\count_instr[0] ),
    .B(\count_instr[1] ),
    .COUT(_0359_),
    .SUM(_0360_));
 sky130_fd_sc_hd__ha_1 _9241_ (.A(\reg_pc[6] ),
    .B(\decoded_imm[6] ),
    .COUT(_0361_),
    .SUM(_0362_));
 sky130_fd_sc_hd__ha_1 _9242_ (.A(\reg_pc[3] ),
    .B(\decoded_imm[3] ),
    .COUT(_0363_),
    .SUM(_0364_));
 sky130_fd_sc_hd__ha_1 _9243_ (.A(\decoded_imm_j[8] ),
    .B(_0365_),
    .COUT(_0366_),
    .SUM(_0367_));
 sky130_fd_sc_hd__ha_1 _9244_ (.A(_0368_),
    .B(_0369_),
    .COUT(_0370_),
    .SUM(_0371_));
 sky130_fd_sc_hd__ha_1 _9245_ (.A(net716),
    .B(_0369_),
    .COUT(_0372_),
    .SUM(_4664_));
 sky130_fd_sc_hd__ha_1 _9246_ (.A(net716),
    .B(net354),
    .COUT(_0373_),
    .SUM(_4665_));
 sky130_fd_sc_hd__ha_1 _9247_ (.A(_0374_),
    .B(_0375_),
    .COUT(_0376_),
    .SUM(_0377_));
 sky130_fd_sc_hd__ha_1 _9248_ (.A(_0374_),
    .B(net705),
    .COUT(_0378_),
    .SUM(_4666_));
 sky130_fd_sc_hd__ha_1 _9249_ (.A(net262),
    .B(net705),
    .COUT(_0379_),
    .SUM(_4667_));
 sky130_fd_sc_hd__ha_1 _9250_ (.A(net745),
    .B(_0380_),
    .COUT(_0381_),
    .SUM(_0382_));
 sky130_fd_sc_hd__ha_1 _9251_ (.A(\reg_pc[21] ),
    .B(\decoded_imm[21] ),
    .COUT(_0383_),
    .SUM(_0384_));
 sky130_fd_sc_hd__ha_1 _9252_ (.A(\reg_pc[18] ),
    .B(\decoded_imm[18] ),
    .COUT(_0385_),
    .SUM(_0386_));
 sky130_fd_sc_hd__ha_1 _9253_ (.A(net745),
    .B(_0387_),
    .COUT(_0388_),
    .SUM(_0389_));
 sky130_fd_sc_hd__ha_1 _9254_ (.A(net745),
    .B(_0390_),
    .COUT(_0391_),
    .SUM(_0392_));
 sky130_fd_sc_hd__ha_1 _9255_ (.A(net745),
    .B(_0393_),
    .COUT(_0394_),
    .SUM(_0395_));
 sky130_fd_sc_hd__ha_1 _9256_ (.A(\decoded_imm_j[18] ),
    .B(_0396_),
    .COUT(_0397_),
    .SUM(_0398_));
 sky130_fd_sc_hd__ha_1 _9257_ (.A(\decoded_imm_j[14] ),
    .B(_0399_),
    .COUT(_0400_),
    .SUM(_0401_));
 sky130_fd_sc_hd__ha_1 _9258_ (.A(\decoded_imm_j[10] ),
    .B(_0402_),
    .COUT(_0403_),
    .SUM(_0404_));
 sky130_fd_sc_hd__ha_1 _9259_ (.A(\decoded_imm_j[6] ),
    .B(_0405_),
    .COUT(_0406_),
    .SUM(_0407_));
 sky130_fd_sc_hd__ha_1 _9260_ (.A(\decoded_imm_j[2] ),
    .B(_0052_),
    .COUT(_0408_),
    .SUM(_0069_));
 sky130_fd_sc_hd__ha_1 _9261_ (.A(\reg_pc[7] ),
    .B(\decoded_imm[7] ),
    .COUT(_0409_),
    .SUM(_0410_));
 sky130_fd_sc_hd__ha_1 _9262_ (.A(_0411_),
    .B(_0412_),
    .COUT(_0413_),
    .SUM(_0414_));
 sky130_fd_sc_hd__ha_1 _9263_ (.A(net702),
    .B(_0412_),
    .COUT(_0415_),
    .SUM(_4668_));
 sky130_fd_sc_hd__ha_1 _9264_ (.A(net702),
    .B(net363),
    .COUT(_0416_),
    .SUM(_4669_));
 sky130_fd_sc_hd__ha_1 _9265_ (.A(\decoded_imm_j[17] ),
    .B(_0417_),
    .COUT(_0418_),
    .SUM(_0419_));
 sky130_fd_sc_hd__ha_1 _9266_ (.A(\decoded_imm_j[1] ),
    .B(_0420_),
    .COUT(_0051_),
    .SUM(_0421_));
 sky130_fd_sc_hd__ha_1 _9267_ (.A(net745),
    .B(_0422_),
    .COUT(_0423_),
    .SUM(_0424_));
 sky130_fd_sc_hd__ha_1 _9268_ (.A(\decoded_imm_j[13] ),
    .B(_0425_),
    .COUT(_0426_),
    .SUM(_0427_));
 sky130_fd_sc_hd__ha_1 _9269_ (.A(\decoded_imm_j[19] ),
    .B(_0428_),
    .COUT(_0429_),
    .SUM(_0430_));
 sky130_fd_sc_hd__ha_1 _9270_ (.A(net745),
    .B(_0431_),
    .COUT(_0432_),
    .SUM(_0433_));
 sky130_fd_sc_hd__ha_1 _9271_ (.A(\decoded_imm_j[7] ),
    .B(_0434_),
    .COUT(_0435_),
    .SUM(_0436_));
 sky130_fd_sc_hd__ha_1 _9272_ (.A(\reg_pc[4] ),
    .B(\decoded_imm[4] ),
    .COUT(_0437_),
    .SUM(_0438_));
 sky130_fd_sc_hd__ha_1 _9273_ (.A(\reg_pc[30] ),
    .B(\decoded_imm[30] ),
    .COUT(_0439_),
    .SUM(_0440_));
 sky130_fd_sc_hd__ha_1 _9274_ (.A(\reg_pc[24] ),
    .B(\decoded_imm[24] ),
    .COUT(_0441_),
    .SUM(_0442_));
 sky130_fd_sc_hd__ha_1 _9275_ (.A(\reg_pc[25] ),
    .B(\decoded_imm[25] ),
    .COUT(_0443_),
    .SUM(_0444_));
 sky130_fd_sc_hd__ha_1 _9276_ (.A(\reg_pc[13] ),
    .B(\decoded_imm[13] ),
    .COUT(_0445_),
    .SUM(_0446_));
 sky130_fd_sc_hd__ha_1 _9277_ (.A(\reg_pc[14] ),
    .B(\decoded_imm[14] ),
    .COUT(_0447_),
    .SUM(_0448_));
 sky130_fd_sc_hd__ha_1 _9278_ (.A(\reg_pc[17] ),
    .B(\decoded_imm[17] ),
    .COUT(_0449_),
    .SUM(_0450_));
 sky130_fd_sc_hd__ha_1 _9279_ (.A(_0451_),
    .B(_0452_),
    .COUT(_0453_),
    .SUM(_0454_));
 sky130_fd_sc_hd__ha_1 _9280_ (.A(_0451_),
    .B(net704),
    .COUT(_0455_),
    .SUM(_4670_));
 sky130_fd_sc_hd__ha_1 _9281_ (.A(net263),
    .B(net704),
    .COUT(_0456_),
    .SUM(_4671_));
 sky130_fd_sc_hd__ha_1 _9282_ (.A(\decoded_imm_j[4] ),
    .B(_0457_),
    .COUT(_0458_),
    .SUM(_0459_));
 sky130_fd_sc_hd__ha_1 _9283_ (.A(\decoded_imm_j[11] ),
    .B(_0460_),
    .COUT(_0461_),
    .SUM(_0462_));
 sky130_fd_sc_hd__ha_1 _9284_ (.A(_0463_),
    .B(_0464_),
    .COUT(_0465_),
    .SUM(_0466_));
 sky130_fd_sc_hd__ha_1 _9285_ (.A(_0463_),
    .B(net707),
    .COUT(_0467_),
    .SUM(_4672_));
 sky130_fd_sc_hd__ha_1 _9286_ (.A(net260),
    .B(net707),
    .COUT(_0468_),
    .SUM(_4673_));
 sky130_fd_sc_hd__ha_1 _9287_ (.A(_0469_),
    .B(_0470_),
    .COUT(_0471_),
    .SUM(_0472_));
 sky130_fd_sc_hd__ha_1 _9288_ (.A(_0469_),
    .B(net708),
    .COUT(_0473_),
    .SUM(_4674_));
 sky130_fd_sc_hd__ha_1 _9289_ (.A(net259),
    .B(net708),
    .COUT(_0474_),
    .SUM(_4675_));
 sky130_fd_sc_hd__ha_1 _9290_ (.A(_0475_),
    .B(_0476_),
    .COUT(_0477_),
    .SUM(_0478_));
 sky130_fd_sc_hd__ha_1 _9291_ (.A(net712),
    .B(_0476_),
    .COUT(_0479_),
    .SUM(_4676_));
 sky130_fd_sc_hd__ha_1 _9292_ (.A(net712),
    .B(net358),
    .COUT(_0480_),
    .SUM(_4677_));
 sky130_fd_sc_hd__ha_1 _9293_ (.A(net709),
    .B(_0481_),
    .COUT(_0482_),
    .SUM(_0483_));
 sky130_fd_sc_hd__ha_1 _9294_ (.A(_0484_),
    .B(_0485_),
    .COUT(_0486_),
    .SUM(\alu_add_sub[0] ));
 sky130_fd_sc_hd__ha_1 _9295_ (.A(net234),
    .B(_0485_),
    .COUT(_0056_),
    .SUM(_4678_));
 sky130_fd_sc_hd__ha_1 _9296_ (.A(net234),
    .B(net732),
    .COUT(_0060_),
    .SUM(_4679_));
 sky130_fd_sc_hd__ha_1 _9297_ (.A(_0487_),
    .B(_0481_),
    .COUT(_0488_),
    .SUM(_0489_));
 sky130_fd_sc_hd__ha_1 _9298_ (.A(net709),
    .B(net700),
    .COUT(_0490_),
    .SUM(_4680_));
 sky130_fd_sc_hd__ha_1 _9299_ (.A(_0059_),
    .B(_0055_),
    .COUT(_0491_),
    .SUM(_0102_));
 sky130_fd_sc_hd__ha_1 _9300_ (.A(_0059_),
    .B(net721),
    .COUT(_0492_),
    .SUM(_4681_));
 sky130_fd_sc_hd__ha_1 _9301_ (.A(net245),
    .B(net721),
    .COUT(_0493_),
    .SUM(_4682_));
 sky130_fd_sc_hd__ha_1 _9302_ (.A(\reg_pc[8] ),
    .B(\decoded_imm[8] ),
    .COUT(_0494_),
    .SUM(_0495_));
 sky130_fd_sc_hd__ha_1 _9303_ (.A(\reg_pc[12] ),
    .B(\decoded_imm[12] ),
    .COUT(_0496_),
    .SUM(_0497_));
 sky130_fd_sc_hd__ha_1 _9304_ (.A(_0498_),
    .B(_0499_),
    .COUT(_0500_),
    .SUM(_0501_));
 sky130_fd_sc_hd__ha_1 _9305_ (.A(_0498_),
    .B(\mem_state[1] ),
    .COUT(_0502_),
    .SUM(_4683_));
 sky130_fd_sc_hd__ha_1 _9306_ (.A(\mem_state[0] ),
    .B(_0499_),
    .COUT(_0503_),
    .SUM(_4684_));
 sky130_fd_sc_hd__ha_1 _9307_ (.A(\mem_state[0] ),
    .B(\mem_state[1] ),
    .COUT(_0504_),
    .SUM(_4685_));
 sky130_fd_sc_hd__ha_1 _9308_ (.A(\mem_state[0] ),
    .B(\mem_state[1] ),
    .COUT(_0505_),
    .SUM(_4686_));
 sky130_fd_sc_hd__ha_1 _9309_ (.A(\reg_pc[20] ),
    .B(\decoded_imm[20] ),
    .COUT(_0506_),
    .SUM(_0507_));
 sky130_fd_sc_hd__dfxtp_4 _9310_ (.D(_0529_),
    .Q(_0041_),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__dfxtp_4 _9311_ (.D(_0530_),
    .Q(_0042_),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__dfxtp_4 _9312_ (.D(_0531_),
    .Q(_0043_),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__dfxtp_2 _9313_ (.D(_0532_),
    .Q(_0044_),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__dfxtp_4 _9314_ (.D(_0533_),
    .Q(_0045_),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__dfxtp_4 _9315_ (.D(_0534_),
    .Q(_0046_),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_4 _9316_ (.D(_0535_),
    .Q(_0047_),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_4 _9317_ (.D(_0536_),
    .Q(_0048_),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_4 _9318_ (.D(_0537_),
    .Q(_0049_),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_2 _9319_ (.D(_0538_),
    .Q(_0050_),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__conb_1 _9321__1 (.LO(eoi[0]));
 sky130_fd_sc_hd__conb_1 _9322__2 (.LO(eoi[1]));
 sky130_fd_sc_hd__conb_1 _9323__3 (.LO(eoi[2]));
 sky130_fd_sc_hd__conb_1 _9324__4 (.LO(eoi[3]));
 sky130_fd_sc_hd__conb_1 _9325__5 (.LO(eoi[4]));
 sky130_fd_sc_hd__conb_1 _9326__6 (.LO(eoi[5]));
 sky130_fd_sc_hd__conb_1 _9327__7 (.LO(eoi[6]));
 sky130_fd_sc_hd__conb_1 _9328__8 (.LO(eoi[7]));
 sky130_fd_sc_hd__conb_1 _9329__9 (.LO(eoi[8]));
 sky130_fd_sc_hd__conb_1 _9330__10 (.LO(eoi[9]));
 sky130_fd_sc_hd__conb_1 _9331__11 (.LO(eoi[10]));
 sky130_fd_sc_hd__conb_1 _9332__12 (.LO(eoi[11]));
 sky130_fd_sc_hd__conb_1 _9333__13 (.LO(eoi[12]));
 sky130_fd_sc_hd__conb_1 _9334__14 (.LO(eoi[13]));
 sky130_fd_sc_hd__conb_1 _9335__15 (.LO(eoi[14]));
 sky130_fd_sc_hd__conb_1 _9336__16 (.LO(eoi[15]));
 sky130_fd_sc_hd__conb_1 _9337__17 (.LO(eoi[16]));
 sky130_fd_sc_hd__conb_1 _9338__18 (.LO(eoi[17]));
 sky130_fd_sc_hd__conb_1 _9339__19 (.LO(eoi[18]));
 sky130_fd_sc_hd__conb_1 _9340__20 (.LO(eoi[19]));
 sky130_fd_sc_hd__conb_1 _9341__21 (.LO(eoi[20]));
 sky130_fd_sc_hd__conb_1 _9342__22 (.LO(eoi[21]));
 sky130_fd_sc_hd__conb_1 _9343__23 (.LO(eoi[22]));
 sky130_fd_sc_hd__conb_1 _9344__24 (.LO(eoi[23]));
 sky130_fd_sc_hd__conb_1 _9345__25 (.LO(eoi[24]));
 sky130_fd_sc_hd__conb_1 _9346__26 (.LO(eoi[25]));
 sky130_fd_sc_hd__conb_1 _9347__27 (.LO(eoi[26]));
 sky130_fd_sc_hd__conb_1 _9348__28 (.LO(eoi[27]));
 sky130_fd_sc_hd__conb_1 _9349__29 (.LO(eoi[28]));
 sky130_fd_sc_hd__conb_1 _9350__30 (.LO(eoi[29]));
 sky130_fd_sc_hd__conb_1 _9351__31 (.LO(eoi[30]));
 sky130_fd_sc_hd__conb_1 _9352__32 (.LO(eoi[31]));
 sky130_fd_sc_hd__conb_1 _9353__33 (.LO(mem_addr[0]));
 sky130_fd_sc_hd__conb_1 _9354__34 (.LO(mem_addr[1]));
 sky130_fd_sc_hd__conb_1 _9355__35 (.LO(mem_la_addr[0]));
 sky130_fd_sc_hd__conb_1 _9356__36 (.LO(mem_la_addr[1]));
 sky130_fd_sc_hd__conb_1 _9357__37 (.LO(pcpi_insn[0]));
 sky130_fd_sc_hd__conb_1 _9358__38 (.LO(pcpi_insn[1]));
 sky130_fd_sc_hd__conb_1 _9359__39 (.LO(pcpi_insn[2]));
 sky130_fd_sc_hd__conb_1 _9360__40 (.LO(pcpi_insn[3]));
 sky130_fd_sc_hd__conb_1 _9361__41 (.LO(pcpi_insn[4]));
 sky130_fd_sc_hd__conb_1 _9362__42 (.LO(pcpi_insn[5]));
 sky130_fd_sc_hd__conb_1 _9363__43 (.LO(pcpi_insn[6]));
 sky130_fd_sc_hd__conb_1 _9364__44 (.LO(pcpi_insn[7]));
 sky130_fd_sc_hd__conb_1 _9365__45 (.LO(pcpi_insn[8]));
 sky130_fd_sc_hd__conb_1 _9366__46 (.LO(pcpi_insn[9]));
 sky130_fd_sc_hd__conb_1 _9367__47 (.LO(pcpi_insn[10]));
 sky130_fd_sc_hd__conb_1 _9368__48 (.LO(pcpi_insn[11]));
 sky130_fd_sc_hd__conb_1 _9369__49 (.LO(pcpi_insn[12]));
 sky130_fd_sc_hd__conb_1 _9370__50 (.LO(pcpi_insn[13]));
 sky130_fd_sc_hd__conb_1 _9371__51 (.LO(pcpi_insn[14]));
 sky130_fd_sc_hd__conb_1 _9372__52 (.LO(pcpi_insn[15]));
 sky130_fd_sc_hd__conb_1 _9373__53 (.LO(pcpi_insn[16]));
 sky130_fd_sc_hd__conb_1 _9374__54 (.LO(pcpi_insn[17]));
 sky130_fd_sc_hd__conb_1 _9375__55 (.LO(pcpi_insn[18]));
 sky130_fd_sc_hd__conb_1 _9376__56 (.LO(pcpi_insn[19]));
 sky130_fd_sc_hd__conb_1 _9377__57 (.LO(pcpi_insn[20]));
 sky130_fd_sc_hd__conb_1 _9378__58 (.LO(pcpi_insn[21]));
 sky130_fd_sc_hd__conb_1 _9379__59 (.LO(pcpi_insn[22]));
 sky130_fd_sc_hd__conb_1 _9380__60 (.LO(pcpi_insn[23]));
 sky130_fd_sc_hd__conb_1 _9381__61 (.LO(pcpi_insn[24]));
 sky130_fd_sc_hd__conb_1 _9382__62 (.LO(pcpi_insn[25]));
 sky130_fd_sc_hd__conb_1 _9383__63 (.LO(pcpi_insn[26]));
 sky130_fd_sc_hd__conb_1 _9384__64 (.LO(pcpi_insn[27]));
 sky130_fd_sc_hd__conb_1 _9385__65 (.LO(pcpi_insn[28]));
 sky130_fd_sc_hd__conb_1 _9386__66 (.LO(pcpi_insn[29]));
 sky130_fd_sc_hd__conb_1 _9387__67 (.LO(pcpi_insn[30]));
 sky130_fd_sc_hd__conb_1 _9388__68 (.LO(pcpi_insn[31]));
 sky130_fd_sc_hd__conb_1 _9397__69 (.LO(pcpi_valid));
 sky130_fd_sc_hd__conb_1 _9398__70 (.LO(trace_data[0]));
 sky130_fd_sc_hd__conb_1 _9399__71 (.LO(trace_data[1]));
 sky130_fd_sc_hd__conb_1 _9400__72 (.LO(trace_data[2]));
 sky130_fd_sc_hd__conb_1 _9401__73 (.LO(trace_data[3]));
 sky130_fd_sc_hd__conb_1 _9402__74 (.LO(trace_data[4]));
 sky130_fd_sc_hd__conb_1 _9403__75 (.LO(trace_data[5]));
 sky130_fd_sc_hd__conb_1 _9404__76 (.LO(trace_data[6]));
 sky130_fd_sc_hd__conb_1 _9405__77 (.LO(trace_data[7]));
 sky130_fd_sc_hd__conb_1 _9406__78 (.LO(trace_data[8]));
 sky130_fd_sc_hd__conb_1 _9407__79 (.LO(trace_data[9]));
 sky130_fd_sc_hd__conb_1 _9408__80 (.LO(trace_data[10]));
 sky130_fd_sc_hd__conb_1 _9409__81 (.LO(trace_data[11]));
 sky130_fd_sc_hd__conb_1 _9410__82 (.LO(trace_data[12]));
 sky130_fd_sc_hd__conb_1 _9411__83 (.LO(trace_data[13]));
 sky130_fd_sc_hd__conb_1 _9412__84 (.LO(trace_data[14]));
 sky130_fd_sc_hd__conb_1 _9413__85 (.LO(trace_data[15]));
 sky130_fd_sc_hd__conb_1 _9414__86 (.LO(trace_data[16]));
 sky130_fd_sc_hd__conb_1 _9415__87 (.LO(trace_data[17]));
 sky130_fd_sc_hd__conb_1 _9416__88 (.LO(trace_data[18]));
 sky130_fd_sc_hd__conb_1 _9417__89 (.LO(trace_data[19]));
 sky130_fd_sc_hd__conb_1 _9418__90 (.LO(trace_data[20]));
 sky130_fd_sc_hd__conb_1 _9419__91 (.LO(trace_data[21]));
 sky130_fd_sc_hd__conb_1 _9420__92 (.LO(trace_data[22]));
 sky130_fd_sc_hd__conb_1 _9421__93 (.LO(trace_data[23]));
 sky130_fd_sc_hd__conb_1 _9422__94 (.LO(trace_data[24]));
 sky130_fd_sc_hd__conb_1 _9423__95 (.LO(trace_data[25]));
 sky130_fd_sc_hd__conb_1 _9424__96 (.LO(trace_data[26]));
 sky130_fd_sc_hd__conb_1 _9425__97 (.LO(trace_data[27]));
 sky130_fd_sc_hd__conb_1 _9426__98 (.LO(trace_data[28]));
 sky130_fd_sc_hd__conb_1 _9427__99 (.LO(trace_data[29]));
 sky130_fd_sc_hd__conb_1 _9428__100 (.LO(trace_data[30]));
 sky130_fd_sc_hd__conb_1 _9429__101 (.LO(trace_data[31]));
 sky130_fd_sc_hd__conb_1 _9430__102 (.LO(trace_data[32]));
 sky130_fd_sc_hd__conb_1 _9431__103 (.LO(trace_data[33]));
 sky130_fd_sc_hd__conb_1 _9432__104 (.LO(trace_data[34]));
 sky130_fd_sc_hd__conb_1 _9433__105 (.LO(trace_data[35]));
 sky130_fd_sc_hd__conb_1 _9434__106 (.LO(trace_valid));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[0]$_DFF_P_  (.D(\alu_out[0] ),
    .Q(\alu_out_q[0] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[10]$_DFF_P_  (.D(\alu_out[10] ),
    .Q(\alu_out_q[10] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[11]$_DFF_P_  (.D(\alu_out[11] ),
    .Q(\alu_out_q[11] ),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[12]$_DFF_P_  (.D(\alu_out[12] ),
    .Q(\alu_out_q[12] ),
    .CLK(clknet_leaf_84_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[13]$_DFF_P_  (.D(\alu_out[13] ),
    .Q(\alu_out_q[13] ),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[14]$_DFF_P_  (.D(\alu_out[14] ),
    .Q(\alu_out_q[14] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[15]$_DFF_P_  (.D(\alu_out[15] ),
    .Q(\alu_out_q[15] ),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[16]$_DFF_P_  (.D(\alu_out[16] ),
    .Q(\alu_out_q[16] ),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[17]$_DFF_P_  (.D(\alu_out[17] ),
    .Q(\alu_out_q[17] ),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[18]$_DFF_P_  (.D(\alu_out[18] ),
    .Q(\alu_out_q[18] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[19]$_DFF_P_  (.D(\alu_out[19] ),
    .Q(\alu_out_q[19] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[1]$_DFF_P_  (.D(\alu_out[1] ),
    .Q(\alu_out_q[1] ),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[20]$_DFF_P_  (.D(\alu_out[20] ),
    .Q(\alu_out_q[20] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[21]$_DFF_P_  (.D(\alu_out[21] ),
    .Q(\alu_out_q[21] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[22]$_DFF_P_  (.D(\alu_out[22] ),
    .Q(\alu_out_q[22] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[23]$_DFF_P_  (.D(\alu_out[23] ),
    .Q(\alu_out_q[23] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[24]$_DFF_P_  (.D(\alu_out[24] ),
    .Q(\alu_out_q[24] ),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[25]$_DFF_P_  (.D(\alu_out[25] ),
    .Q(\alu_out_q[25] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[26]$_DFF_P_  (.D(\alu_out[26] ),
    .Q(\alu_out_q[26] ),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[27]$_DFF_P_  (.D(\alu_out[27] ),
    .Q(\alu_out_q[27] ),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[28]$_DFF_P_  (.D(\alu_out[28] ),
    .Q(\alu_out_q[28] ),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[29]$_DFF_P_  (.D(\alu_out[29] ),
    .Q(\alu_out_q[29] ),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[2]$_DFF_P_  (.D(\alu_out[2] ),
    .Q(\alu_out_q[2] ),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[30]$_DFF_P_  (.D(\alu_out[30] ),
    .Q(\alu_out_q[30] ),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[31]$_DFF_P_  (.D(\alu_out[31] ),
    .Q(\alu_out_q[31] ),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[3]$_DFF_P_  (.D(\alu_out[3] ),
    .Q(\alu_out_q[3] ),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[4]$_DFF_P_  (.D(\alu_out[4] ),
    .Q(\alu_out_q[4] ),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[5]$_DFF_P_  (.D(\alu_out[5] ),
    .Q(\alu_out_q[5] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[6]$_DFF_P_  (.D(\alu_out[6] ),
    .Q(\alu_out_q[6] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[7]$_DFF_P_  (.D(\alu_out[7] ),
    .Q(\alu_out_q[7] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[8]$_DFF_P_  (.D(\alu_out[8] ),
    .Q(\alu_out_q[8] ),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__dfxtp_1 \alu_out_q[9]$_DFF_P_  (.D(\alu_out[9] ),
    .Q(\alu_out_q[9] ),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .X(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_0_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_100_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_100_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_101_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_101_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_102_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_102_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_103_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_103_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_104_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_104_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_105_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_105_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_106_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_106_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_107_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_107_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_108_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_108_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_109_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_109_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_10_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_10_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_110_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_110_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_111_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_111_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_112_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_112_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_113_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_113_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_114_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_114_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_115_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_115_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_116_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_116_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_117_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_117_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_118_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_118_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_119_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_119_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_11_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_11_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_120_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_120_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_121_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_121_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_122_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_122_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_123_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_123_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_124_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_124_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_125_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_125_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_126_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_126_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_127_clk (.A(clknet_4_11_0_clk),
    .X(clknet_leaf_127_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_128_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_128_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_129_clk (.A(clknet_4_10_0_clk),
    .X(clknet_leaf_129_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_12_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_12_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_130_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_130_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_131_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_131_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_132_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_132_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_133_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_133_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_134_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_134_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_135_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_135_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_136_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_136_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_137_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_137_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_138_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_138_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_139_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_139_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_13_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_13_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_140_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_140_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_141_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_141_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_142_clk (.A(clknet_4_9_0_clk),
    .X(clknet_leaf_142_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_143_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_143_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_144_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_144_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_145_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_145_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_146_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_146_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_147_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_147_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_148_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_148_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_149_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_149_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_14_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_14_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_150_clk (.A(clknet_4_8_0_clk),
    .X(clknet_leaf_150_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_151_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_151_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_152_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_152_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_153_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_153_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_154_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_154_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_155_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_155_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_156_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_156_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_157_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_157_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_158_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_158_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_159_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_159_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_15_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_15_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_160_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_160_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_16_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_16_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_17_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_17_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_18_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_18_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_19_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_19_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_1_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_1_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_20_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_20_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_21_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_21_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_22_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_22_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_23_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_23_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_24_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_24_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_25_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_25_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_26_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_26_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_27_clk (.A(clknet_4_3_0_clk),
    .X(clknet_leaf_27_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_28_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_28_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_29_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_29_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_2_clk (.A(clknet_4_2_0_clk),
    .X(clknet_leaf_2_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_30_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_30_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_31_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_31_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_32_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_32_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_33_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_33_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_34_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_34_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_35_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_35_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_36_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_36_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_37_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_37_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_38_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_38_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_39_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_39_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_3_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_3_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_40_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_40_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_41_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_41_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_42_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_42_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_43_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_43_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_44_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_44_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_45_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_45_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_46_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_46_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_47_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_47_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_48_clk (.A(clknet_4_4_0_clk),
    .X(clknet_leaf_48_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_49_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_49_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_4_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_4_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_50_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_50_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_51_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_51_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_52_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_52_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_53_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_53_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_54_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_54_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_55_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_55_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_56_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_56_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_57_clk (.A(clknet_4_5_0_clk),
    .X(clknet_leaf_57_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_58_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_58_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_59_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_59_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_5_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_5_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_60_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_60_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_61_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_61_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_62_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_62_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_63_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_63_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_64_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_64_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_65_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_65_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_66_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_66_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_67_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_67_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_68_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_68_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_69_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_69_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_6_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_6_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_70_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_70_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_71_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_71_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_72_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_72_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_73_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_73_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_74_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_74_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_75_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_75_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_76_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_76_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_77_clk (.A(clknet_4_6_0_clk),
    .X(clknet_leaf_77_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_78_clk (.A(clknet_4_12_0_clk),
    .X(clknet_leaf_78_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_79_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_79_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_7_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_7_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_80_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_80_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_81_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_81_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_82_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_82_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_83_clk (.A(clknet_4_7_0_clk),
    .X(clknet_leaf_83_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_84_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_84_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_85_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_85_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_86_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_86_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_87_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_87_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_88_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_88_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_89_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_89_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_8_clk (.A(clknet_4_0_0_clk),
    .X(clknet_leaf_8_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_90_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_90_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_91_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_91_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_92_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_92_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_93_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_93_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_94_clk (.A(clknet_4_15_0_clk),
    .X(clknet_leaf_94_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_95_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_95_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_96_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_96_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_97_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_97_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_98_clk (.A(clknet_4_14_0_clk),
    .X(clknet_leaf_98_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_99_clk (.A(clknet_4_13_0_clk),
    .X(clknet_leaf_99_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_9_clk (.A(clknet_4_1_0_clk),
    .X(clknet_leaf_9_clk));
 sky130_fd_sc_hd__clkinv_8 clkload0 (.A(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkload1 (.A(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkinv_16 clkload10 (.A(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkinv_1 clkload100 (.A(clknet_leaf_130_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload101 (.A(clknet_leaf_131_clk));
 sky130_fd_sc_hd__clkinv_2 clkload102 (.A(clknet_leaf_132_clk));
 sky130_fd_sc_hd__clkinv_2 clkload103 (.A(clknet_leaf_133_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload104 (.A(clknet_leaf_135_clk));
 sky130_fd_sc_hd__clkinv_4 clkload105 (.A(clknet_leaf_136_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload106 (.A(clknet_leaf_148_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload107 (.A(clknet_leaf_149_clk));
 sky130_fd_sc_hd__clkinv_2 clkload108 (.A(clknet_leaf_150_clk));
 sky130_fd_sc_hd__clkinv_1 clkload109 (.A(clknet_leaf_104_clk));
 sky130_fd_sc_hd__clkinv_16 clkload11 (.A(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload110 (.A(clknet_leaf_106_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload111 (.A(clknet_leaf_137_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload112 (.A(clknet_leaf_138_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload113 (.A(clknet_leaf_139_clk));
 sky130_fd_sc_hd__clkinv_1 clkload114 (.A(clknet_leaf_140_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload115 (.A(clknet_leaf_141_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload116 (.A(clknet_leaf_121_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload117 (.A(clknet_leaf_122_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload118 (.A(clknet_leaf_123_clk));
 sky130_fd_sc_hd__clkinv_2 clkload119 (.A(clknet_leaf_125_clk));
 sky130_fd_sc_hd__clkinv_16 clkload12 (.A(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload120 (.A(clknet_leaf_126_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload121 (.A(clknet_leaf_129_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload122 (.A(clknet_leaf_114_clk));
 sky130_fd_sc_hd__clkinv_2 clkload123 (.A(clknet_leaf_115_clk));
 sky130_fd_sc_hd__clkinv_2 clkload124 (.A(clknet_leaf_116_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload125 (.A(clknet_leaf_117_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload126 (.A(clknet_leaf_118_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload127 (.A(clknet_leaf_119_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload128 (.A(clknet_leaf_120_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload129 (.A(clknet_leaf_127_clk));
 sky130_fd_sc_hd__inv_16 clkload13 (.A(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload130 (.A(clknet_leaf_78_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload131 (.A(clknet_leaf_100_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload132 (.A(clknet_leaf_102_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload133 (.A(clknet_leaf_103_clk));
 sky130_fd_sc_hd__clkinv_2 clkload134 (.A(clknet_leaf_105_clk));
 sky130_fd_sc_hd__clkinv_2 clkload135 (.A(clknet_leaf_79_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload136 (.A(clknet_leaf_80_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload137 (.A(clknet_leaf_81_clk));
 sky130_fd_sc_hd__clkinv_4 clkload138 (.A(clknet_leaf_84_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload139 (.A(clknet_leaf_85_clk));
 sky130_fd_sc_hd__clkinv_16 clkload14 (.A(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkinv_1 clkload140 (.A(clknet_leaf_99_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload141 (.A(clknet_leaf_95_clk));
 sky130_fd_sc_hd__clkinv_1 clkload142 (.A(clknet_leaf_96_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload143 (.A(clknet_leaf_97_clk));
 sky130_fd_sc_hd__bufinv_16 clkload144 (.A(clknet_leaf_98_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload145 (.A(clknet_leaf_108_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload146 (.A(clknet_leaf_109_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload147 (.A(clknet_leaf_110_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload148 (.A(clknet_leaf_112_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload149 (.A(clknet_leaf_113_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload15 (.A(clknet_leaf_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload150 (.A(clknet_leaf_87_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload151 (.A(clknet_leaf_88_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload152 (.A(clknet_leaf_89_clk));
 sky130_fd_sc_hd__clkinv_2 clkload153 (.A(clknet_leaf_90_clk));
 sky130_fd_sc_hd__clkinv_1 clkload154 (.A(clknet_leaf_91_clk));
 sky130_fd_sc_hd__clkinv_1 clkload155 (.A(clknet_leaf_92_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload156 (.A(clknet_leaf_93_clk));
 sky130_fd_sc_hd__clkinv_2 clkload16 (.A(clknet_leaf_1_clk));
 sky130_fd_sc_hd__clkinv_1 clkload17 (.A(clknet_leaf_3_clk));
 sky130_fd_sc_hd__clkinv_2 clkload18 (.A(clknet_leaf_4_clk));
 sky130_fd_sc_hd__bufinv_16 clkload19 (.A(clknet_leaf_5_clk));
 sky130_fd_sc_hd__clkinv_8 clkload2 (.A(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload20 (.A(clknet_leaf_7_clk));
 sky130_fd_sc_hd__clkinv_1 clkload21 (.A(clknet_leaf_8_clk));
 sky130_fd_sc_hd__clkinv_1 clkload22 (.A(clknet_leaf_15_clk));
 sky130_fd_sc_hd__clkinv_4 clkload23 (.A(clknet_leaf_159_clk));
 sky130_fd_sc_hd__clkinv_2 clkload24 (.A(clknet_leaf_160_clk));
 sky130_fd_sc_hd__clkinv_2 clkload25 (.A(clknet_leaf_9_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload26 (.A(clknet_leaf_10_clk));
 sky130_fd_sc_hd__clkinv_2 clkload27 (.A(clknet_leaf_11_clk));
 sky130_fd_sc_hd__clkinv_2 clkload28 (.A(clknet_leaf_12_clk));
 sky130_fd_sc_hd__bufinv_16 clkload29 (.A(clknet_leaf_13_clk));
 sky130_fd_sc_hd__inv_16 clkload3 (.A(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload30 (.A(clknet_leaf_14_clk));
 sky130_fd_sc_hd__clkinv_2 clkload31 (.A(clknet_leaf_32_clk));
 sky130_fd_sc_hd__bufinv_16 clkload32 (.A(clknet_leaf_33_clk));
 sky130_fd_sc_hd__clkinv_1 clkload33 (.A(clknet_leaf_34_clk));
 sky130_fd_sc_hd__bufinv_16 clkload34 (.A(clknet_leaf_35_clk));
 sky130_fd_sc_hd__bufinv_16 clkload35 (.A(clknet_leaf_37_clk));
 sky130_fd_sc_hd__clkinv_1 clkload36 (.A(clknet_leaf_38_clk));
 sky130_fd_sc_hd__bufinv_16 clkload37 (.A(clknet_leaf_2_clk));
 sky130_fd_sc_hd__clkinv_1 clkload38 (.A(clknet_leaf_16_clk));
 sky130_fd_sc_hd__clkinv_2 clkload39 (.A(clknet_leaf_17_clk));
 sky130_fd_sc_hd__clkinv_8 clkload4 (.A(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkinv_1 clkload40 (.A(clknet_leaf_145_clk));
 sky130_fd_sc_hd__clkinv_2 clkload41 (.A(clknet_leaf_146_clk));
 sky130_fd_sc_hd__clkinv_2 clkload42 (.A(clknet_leaf_147_clk));
 sky130_fd_sc_hd__clkinv_2 clkload43 (.A(clknet_leaf_151_clk));
 sky130_fd_sc_hd__bufinv_16 clkload44 (.A(clknet_leaf_152_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload45 (.A(clknet_leaf_154_clk));
 sky130_fd_sc_hd__clkinv_1 clkload46 (.A(clknet_leaf_155_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload47 (.A(clknet_leaf_156_clk));
 sky130_fd_sc_hd__bufinv_16 clkload48 (.A(clknet_leaf_157_clk));
 sky130_fd_sc_hd__clkinv_4 clkload49 (.A(clknet_leaf_158_clk));
 sky130_fd_sc_hd__inv_6 clkload5 (.A(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkinv_1 clkload50 (.A(clknet_leaf_18_clk));
 sky130_fd_sc_hd__clkinv_2 clkload51 (.A(clknet_leaf_20_clk));
 sky130_fd_sc_hd__clkinv_1 clkload52 (.A(clknet_leaf_21_clk));
 sky130_fd_sc_hd__clkinv_1 clkload53 (.A(clknet_leaf_22_clk));
 sky130_fd_sc_hd__clkinv_2 clkload54 (.A(clknet_leaf_23_clk));
 sky130_fd_sc_hd__clkinv_1 clkload55 (.A(clknet_leaf_24_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload56 (.A(clknet_leaf_26_clk));
 sky130_fd_sc_hd__bufinv_16 clkload57 (.A(clknet_leaf_27_clk));
 sky130_fd_sc_hd__clkinv_1 clkload58 (.A(clknet_leaf_143_clk));
 sky130_fd_sc_hd__clkinv_1 clkload59 (.A(clknet_leaf_144_clk));
 sky130_fd_sc_hd__clkbuf_16 clkload6 (.A(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload60 (.A(clknet_leaf_39_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload61 (.A(clknet_leaf_40_clk));
 sky130_fd_sc_hd__clkinv_2 clkload62 (.A(clknet_leaf_42_clk));
 sky130_fd_sc_hd__clkinv_1 clkload63 (.A(clknet_leaf_43_clk));
 sky130_fd_sc_hd__clkinv_1 clkload64 (.A(clknet_leaf_44_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload65 (.A(clknet_leaf_45_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload66 (.A(clknet_leaf_48_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload67 (.A(clknet_leaf_46_clk));
 sky130_fd_sc_hd__bufinv_16 clkload68 (.A(clknet_leaf_47_clk));
 sky130_fd_sc_hd__clkinv_1 clkload69 (.A(clknet_leaf_49_clk));
 sky130_fd_sc_hd__inv_16 clkload7 (.A(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload70 (.A(clknet_leaf_50_clk));
 sky130_fd_sc_hd__bufinv_16 clkload71 (.A(clknet_leaf_51_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload72 (.A(clknet_leaf_53_clk));
 sky130_fd_sc_hd__bufinv_16 clkload73 (.A(clknet_leaf_54_clk));
 sky130_fd_sc_hd__clkinv_2 clkload74 (.A(clknet_leaf_55_clk));
 sky130_fd_sc_hd__clkinv_1 clkload75 (.A(clknet_leaf_56_clk));
 sky130_fd_sc_hd__clkinv_1 clkload76 (.A(clknet_leaf_57_clk));
 sky130_fd_sc_hd__clkinv_2 clkload77 (.A(clknet_leaf_25_clk));
 sky130_fd_sc_hd__bufinv_16 clkload78 (.A(clknet_leaf_28_clk));
 sky130_fd_sc_hd__bufinv_16 clkload79 (.A(clknet_leaf_29_clk));
 sky130_fd_sc_hd__clkinv_16 clkload8 (.A(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload80 (.A(clknet_leaf_70_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload81 (.A(clknet_leaf_71_clk));
 sky130_fd_sc_hd__clkinv_1 clkload82 (.A(clknet_leaf_72_clk));
 sky130_fd_sc_hd__clkinv_2 clkload83 (.A(clknet_leaf_73_clk));
 sky130_fd_sc_hd__bufinv_16 clkload84 (.A(clknet_leaf_74_clk));
 sky130_fd_sc_hd__clkinv_2 clkload85 (.A(clknet_leaf_75_clk));
 sky130_fd_sc_hd__clkinv_2 clkload86 (.A(clknet_leaf_76_clk));
 sky130_fd_sc_hd__clkinv_4 clkload87 (.A(clknet_leaf_77_clk));
 sky130_fd_sc_hd__clkinv_2 clkload88 (.A(clknet_leaf_58_clk));
 sky130_fd_sc_hd__clkinv_1 clkload89 (.A(clknet_leaf_60_clk));
 sky130_fd_sc_hd__clkinv_16 clkload9 (.A(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkinv_1 clkload90 (.A(clknet_leaf_61_clk));
 sky130_fd_sc_hd__bufinv_16 clkload91 (.A(clknet_leaf_62_clk));
 sky130_fd_sc_hd__clkinv_1 clkload92 (.A(clknet_leaf_63_clk));
 sky130_fd_sc_hd__clkinv_1 clkload93 (.A(clknet_leaf_64_clk));
 sky130_fd_sc_hd__clkinv_1 clkload94 (.A(clknet_leaf_65_clk));
 sky130_fd_sc_hd__clkinv_1 clkload95 (.A(clknet_leaf_66_clk));
 sky130_fd_sc_hd__clkinv_1 clkload96 (.A(clknet_leaf_67_clk));
 sky130_fd_sc_hd__clkinv_2 clkload97 (.A(clknet_leaf_68_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload98 (.A(clknet_leaf_82_clk));
 sky130_fd_sc_hd__bufinv_16 clkload99 (.A(clknet_leaf_83_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[0]$_SDFF_PN0_  (.D(_0724_),
    .Q(\count_cycle[0] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[10]$_SDFF_PN0_  (.D(_0714_),
    .Q(\count_cycle[10] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[11]$_SDFF_PN0_  (.D(_0713_),
    .Q(\count_cycle[11] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[12]$_SDFF_PN0_  (.D(_0712_),
    .Q(\count_cycle[12] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[13]$_SDFF_PN0_  (.D(_0711_),
    .Q(\count_cycle[13] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[14]$_SDFF_PN0_  (.D(_0710_),
    .Q(\count_cycle[14] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[15]$_SDFF_PN0_  (.D(_0709_),
    .Q(\count_cycle[15] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[16]$_SDFF_PN0_  (.D(_0708_),
    .Q(\count_cycle[16] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[17]$_SDFF_PN0_  (.D(_0707_),
    .Q(\count_cycle[17] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[18]$_SDFF_PN0_  (.D(_0706_),
    .Q(\count_cycle[18] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[19]$_SDFF_PN0_  (.D(_0705_),
    .Q(\count_cycle[19] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[1]$_SDFF_PN0_  (.D(_0723_),
    .Q(\count_cycle[1] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[20]$_SDFF_PN0_  (.D(_0704_),
    .Q(\count_cycle[20] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[21]$_SDFF_PN0_  (.D(_0703_),
    .Q(\count_cycle[21] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[22]$_SDFF_PN0_  (.D(_0702_),
    .Q(\count_cycle[22] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[23]$_SDFF_PN0_  (.D(_0701_),
    .Q(\count_cycle[23] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[24]$_SDFF_PN0_  (.D(_0700_),
    .Q(\count_cycle[24] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[25]$_SDFF_PN0_  (.D(_0699_),
    .Q(\count_cycle[25] ),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[26]$_SDFF_PN0_  (.D(_0698_),
    .Q(\count_cycle[26] ),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[27]$_SDFF_PN0_  (.D(_0697_),
    .Q(\count_cycle[27] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[28]$_SDFF_PN0_  (.D(_0696_),
    .Q(\count_cycle[28] ),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[29]$_SDFF_PN0_  (.D(_0695_),
    .Q(\count_cycle[29] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[2]$_SDFF_PN0_  (.D(_0722_),
    .Q(\count_cycle[2] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[30]$_SDFF_PN0_  (.D(_0694_),
    .Q(\count_cycle[30] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[31]$_SDFF_PN0_  (.D(_0693_),
    .Q(\count_cycle[31] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[32]$_SDFF_PN0_  (.D(_0692_),
    .Q(\count_cycle[32] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[33]$_SDFF_PN0_  (.D(_0691_),
    .Q(\count_cycle[33] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[34]$_SDFF_PN0_  (.D(_0690_),
    .Q(\count_cycle[34] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[35]$_SDFF_PN0_  (.D(_0689_),
    .Q(\count_cycle[35] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[36]$_SDFF_PN0_  (.D(_0688_),
    .Q(\count_cycle[36] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[37]$_SDFF_PN0_  (.D(_0687_),
    .Q(\count_cycle[37] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[38]$_SDFF_PN0_  (.D(_0686_),
    .Q(\count_cycle[38] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[39]$_SDFF_PN0_  (.D(_0685_),
    .Q(\count_cycle[39] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[3]$_SDFF_PN0_  (.D(_0721_),
    .Q(\count_cycle[3] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[40]$_SDFF_PN0_  (.D(_0684_),
    .Q(\count_cycle[40] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[41]$_SDFF_PN0_  (.D(_0683_),
    .Q(\count_cycle[41] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[42]$_SDFF_PN0_  (.D(_0682_),
    .Q(\count_cycle[42] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[43]$_SDFF_PN0_  (.D(_0681_),
    .Q(\count_cycle[43] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[44]$_SDFF_PN0_  (.D(_0680_),
    .Q(\count_cycle[44] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[45]$_SDFF_PN0_  (.D(_0679_),
    .Q(\count_cycle[45] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[46]$_SDFF_PN0_  (.D(_0678_),
    .Q(\count_cycle[46] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[47]$_SDFF_PN0_  (.D(_0677_),
    .Q(\count_cycle[47] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[48]$_SDFF_PN0_  (.D(_0676_),
    .Q(\count_cycle[48] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[49]$_SDFF_PN0_  (.D(_0675_),
    .Q(\count_cycle[49] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[4]$_SDFF_PN0_  (.D(_0720_),
    .Q(\count_cycle[4] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[50]$_SDFF_PN0_  (.D(_0674_),
    .Q(\count_cycle[50] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[51]$_SDFF_PN0_  (.D(_0673_),
    .Q(\count_cycle[51] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[52]$_SDFF_PN0_  (.D(_0672_),
    .Q(\count_cycle[52] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[53]$_SDFF_PN0_  (.D(_0671_),
    .Q(\count_cycle[53] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[54]$_SDFF_PN0_  (.D(_0670_),
    .Q(\count_cycle[54] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[55]$_SDFF_PN0_  (.D(_0669_),
    .Q(\count_cycle[55] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[56]$_SDFF_PN0_  (.D(_0668_),
    .Q(\count_cycle[56] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[57]$_SDFF_PN0_  (.D(_0667_),
    .Q(\count_cycle[57] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[58]$_SDFF_PN0_  (.D(_0666_),
    .Q(\count_cycle[58] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[59]$_SDFF_PN0_  (.D(_0665_),
    .Q(\count_cycle[59] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[5]$_SDFF_PN0_  (.D(_0719_),
    .Q(\count_cycle[5] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[60]$_SDFF_PN0_  (.D(_0664_),
    .Q(\count_cycle[60] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[61]$_SDFF_PN0_  (.D(_0663_),
    .Q(\count_cycle[61] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[62]$_SDFF_PN0_  (.D(_0662_),
    .Q(\count_cycle[62] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[63]$_SDFF_PN0_  (.D(_0791_),
    .Q(\count_cycle[63] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[6]$_SDFF_PN0_  (.D(_0718_),
    .Q(\count_cycle[6] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[7]$_SDFF_PN0_  (.D(_0717_),
    .Q(\count_cycle[7] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[8]$_SDFF_PN0_  (.D(_0716_),
    .Q(\count_cycle[8] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_cycle[9]$_SDFF_PN0_  (.D(_0715_),
    .Q(\count_cycle[9] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[0]$_SDFFE_PN0P_  (.D(_0631_),
    .Q(\count_instr[0] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[10]$_SDFFE_PN0P_  (.D(_0621_),
    .Q(\count_instr[10] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[11]$_SDFFE_PN0P_  (.D(_0620_),
    .Q(\count_instr[11] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[12]$_SDFFE_PN0P_  (.D(_0619_),
    .Q(\count_instr[12] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[13]$_SDFFE_PN0P_  (.D(_0618_),
    .Q(\count_instr[13] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[14]$_SDFFE_PN0P_  (.D(_0617_),
    .Q(\count_instr[14] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[15]$_SDFFE_PN0P_  (.D(_0616_),
    .Q(\count_instr[15] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[16]$_SDFFE_PN0P_  (.D(_0615_),
    .Q(\count_instr[16] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[17]$_SDFFE_PN0P_  (.D(_0614_),
    .Q(\count_instr[17] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[18]$_SDFFE_PN0P_  (.D(_0613_),
    .Q(\count_instr[18] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[19]$_SDFFE_PN0P_  (.D(_0612_),
    .Q(\count_instr[19] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[1]$_SDFFE_PN0P_  (.D(_0630_),
    .Q(\count_instr[1] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[20]$_SDFFE_PN0P_  (.D(_0611_),
    .Q(\count_instr[20] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[21]$_SDFFE_PN0P_  (.D(_0610_),
    .Q(\count_instr[21] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[22]$_SDFFE_PN0P_  (.D(_0609_),
    .Q(\count_instr[22] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[23]$_SDFFE_PN0P_  (.D(_0608_),
    .Q(\count_instr[23] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[24]$_SDFFE_PN0P_  (.D(_0607_),
    .Q(\count_instr[24] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[25]$_SDFFE_PN0P_  (.D(_0606_),
    .Q(\count_instr[25] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[26]$_SDFFE_PN0P_  (.D(_0605_),
    .Q(\count_instr[26] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[27]$_SDFFE_PN0P_  (.D(_0604_),
    .Q(\count_instr[27] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[28]$_SDFFE_PN0P_  (.D(_0603_),
    .Q(\count_instr[28] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[29]$_SDFFE_PN0P_  (.D(_0602_),
    .Q(\count_instr[29] ),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[2]$_SDFFE_PN0P_  (.D(_0629_),
    .Q(\count_instr[2] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[30]$_SDFFE_PN0P_  (.D(_0601_),
    .Q(\count_instr[30] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[31]$_SDFFE_PN0P_  (.D(_0600_),
    .Q(\count_instr[31] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[32]$_SDFFE_PN0P_  (.D(_0599_),
    .Q(\count_instr[32] ),
    .CLK(clknet_leaf_125_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[33]$_SDFFE_PN0P_  (.D(_0598_),
    .Q(\count_instr[33] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[34]$_SDFFE_PN0P_  (.D(_0597_),
    .Q(\count_instr[34] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[35]$_SDFFE_PN0P_  (.D(_0596_),
    .Q(\count_instr[35] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[36]$_SDFFE_PN0P_  (.D(_0595_),
    .Q(\count_instr[36] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[37]$_SDFFE_PN0P_  (.D(_0594_),
    .Q(\count_instr[37] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[38]$_SDFFE_PN0P_  (.D(_0593_),
    .Q(\count_instr[38] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[39]$_SDFFE_PN0P_  (.D(_0592_),
    .Q(\count_instr[39] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[3]$_SDFFE_PN0P_  (.D(_0628_),
    .Q(\count_instr[3] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[40]$_SDFFE_PN0P_  (.D(_0591_),
    .Q(\count_instr[40] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[41]$_SDFFE_PN0P_  (.D(_0590_),
    .Q(\count_instr[41] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[42]$_SDFFE_PN0P_  (.D(_0589_),
    .Q(\count_instr[42] ),
    .CLK(clknet_leaf_132_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[43]$_SDFFE_PN0P_  (.D(_0588_),
    .Q(\count_instr[43] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[44]$_SDFFE_PN0P_  (.D(_0587_),
    .Q(\count_instr[44] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[45]$_SDFFE_PN0P_  (.D(_0586_),
    .Q(\count_instr[45] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[46]$_SDFFE_PN0P_  (.D(_0585_),
    .Q(\count_instr[46] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[47]$_SDFFE_PN0P_  (.D(_0584_),
    .Q(\count_instr[47] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[48]$_SDFFE_PN0P_  (.D(_0583_),
    .Q(\count_instr[48] ),
    .CLK(clknet_leaf_130_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[49]$_SDFFE_PN0P_  (.D(_0582_),
    .Q(\count_instr[49] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[4]$_SDFFE_PN0P_  (.D(_0627_),
    .Q(\count_instr[4] ),
    .CLK(clknet_leaf_128_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[50]$_SDFFE_PN0P_  (.D(_0581_),
    .Q(\count_instr[50] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[51]$_SDFFE_PN0P_  (.D(_0580_),
    .Q(\count_instr[51] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[52]$_SDFFE_PN0P_  (.D(_0579_),
    .Q(\count_instr[52] ),
    .CLK(clknet_leaf_129_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[53]$_SDFFE_PN0P_  (.D(_0578_),
    .Q(\count_instr[53] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[54]$_SDFFE_PN0P_  (.D(_0577_),
    .Q(\count_instr[54] ),
    .CLK(clknet_leaf_124_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[55]$_SDFFE_PN0P_  (.D(_0576_),
    .Q(\count_instr[55] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[56]$_SDFFE_PN0P_  (.D(_0575_),
    .Q(\count_instr[56] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[57]$_SDFFE_PN0P_  (.D(_0574_),
    .Q(\count_instr[57] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[58]$_SDFFE_PN0P_  (.D(_0573_),
    .Q(\count_instr[58] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[59]$_SDFFE_PN0P_  (.D(_0572_),
    .Q(\count_instr[59] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[5]$_SDFFE_PN0P_  (.D(_0626_),
    .Q(\count_instr[5] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[60]$_SDFFE_PN0P_  (.D(_0571_),
    .Q(\count_instr[60] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[61]$_SDFFE_PN0P_  (.D(_0570_),
    .Q(\count_instr[61] ),
    .CLK(clknet_leaf_122_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[62]$_SDFFE_PN0P_  (.D(_0569_),
    .Q(\count_instr[62] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[63]$_SDFFE_PN0P_  (.D(_0780_),
    .Q(\count_instr[63] ),
    .CLK(clknet_leaf_123_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[6]$_SDFFE_PN0P_  (.D(_0625_),
    .Q(\count_instr[6] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[7]$_SDFFE_PN0P_  (.D(_0624_),
    .Q(\count_instr[7] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[8]$_SDFFE_PN0P_  (.D(_0623_),
    .Q(\count_instr[8] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \count_instr[9]$_SDFFE_PN0P_  (.D(_0622_),
    .Q(\count_instr[9] ),
    .CLK(clknet_leaf_131_clk));
 sky130_fd_sc_hd__dfxtp_1 \cpu_state[0]$_DFF_P_  (.D(_0511_),
    .Q(\cpu_state[0] ),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dfxtp_2 \cpu_state[1]$_DFF_P_  (.D(_0512_),
    .Q(\cpu_state[1] ),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dfxtp_1 \cpu_state[2]$_DFF_P_  (.D(_0513_),
    .Q(\cpu_state[2] ),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dfxtp_1 \cpu_state[3]$_DFF_P_  (.D(_0514_),
    .Q(\cpu_state[3] ),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__dfxtp_2 \cpu_state[4]$_DFF_P_  (.D(_0515_),
    .Q(\cpu_state[4] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__dfxtp_1 \cpu_state[5]$_DFF_P_  (.D(_0516_),
    .Q(\cpu_state[5] ),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__dfxtp_1 \cpu_state[6]$_DFF_P_  (.D(_0517_),
    .Q(\cpu_state[6] ),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net106),
    .Q(\cpuregs[0][0] ),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][0]$_DFFE_PP__107  (.LO(net106));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][10]$_DFFE_PP_  (.D(net654),
    .DE(net107),
    .Q(\cpuregs[0][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][10]$_DFFE_PP__108  (.LO(net107));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][11]$_DFFE_PP_  (.D(net614),
    .DE(net108),
    .Q(\cpuregs[0][11] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][11]$_DFFE_PP__109  (.LO(net108));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][12]$_DFFE_PP_  (.D(net655),
    .DE(net109),
    .Q(\cpuregs[0][12] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][12]$_DFFE_PP__110  (.LO(net109));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][13]$_DFFE_PP_  (.D(net615),
    .DE(net110),
    .Q(\cpuregs[0][13] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][13]$_DFFE_PP__111  (.LO(net110));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][14]$_DFFE_PP_  (.D(net616),
    .DE(net111),
    .Q(\cpuregs[0][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][14]$_DFFE_PP__112  (.LO(net111));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net112),
    .Q(\cpuregs[0][15] ),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][15]$_DFFE_PP__113  (.LO(net112));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net113),
    .Q(\cpuregs[0][16] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][16]$_DFFE_PP__114  (.LO(net113));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net114),
    .Q(\cpuregs[0][17] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][17]$_DFFE_PP__115  (.LO(net114));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][18]$_DFFE_PP_  (.D(net617),
    .DE(net115),
    .Q(\cpuregs[0][18] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][18]$_DFFE_PP__116  (.LO(net115));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][19]$_DFFE_PP_  (.D(net606),
    .DE(net116),
    .Q(\cpuregs[0][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][19]$_DFFE_PP__117  (.LO(net116));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net117),
    .Q(\cpuregs[0][1] ),
    .CLK(clknet_leaf_133_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][1]$_DFFE_PP__118  (.LO(net117));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][20]$_DFFE_PP_  (.D(net610),
    .DE(net118),
    .Q(\cpuregs[0][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][20]$_DFFE_PP__119  (.LO(net118));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][21]$_DFFE_PP_  (.D(net607),
    .DE(net119),
    .Q(\cpuregs[0][21] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][21]$_DFFE_PP__120  (.LO(net119));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][22]$_DFFE_PP_  (.D(net608),
    .DE(net120),
    .Q(\cpuregs[0][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][22]$_DFFE_PP__121  (.LO(net120));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][23]$_DFFE_PP_  (.D(net603),
    .DE(net121),
    .Q(\cpuregs[0][23] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][23]$_DFFE_PP__122  (.LO(net121));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][24]$_DFFE_PP_  (.D(net600),
    .DE(net122),
    .Q(\cpuregs[0][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][24]$_DFFE_PP__123  (.LO(net122));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][25]$_DFFE_PP_  (.D(net604),
    .DE(net123),
    .Q(\cpuregs[0][25] ),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][25]$_DFFE_PP__124  (.LO(net123));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][26]$_DFFE_PP_  (.D(net605),
    .DE(net124),
    .Q(\cpuregs[0][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][26]$_DFFE_PP__125  (.LO(net124));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][27]$_DFFE_PP_  (.D(net601),
    .DE(net125),
    .Q(\cpuregs[0][27] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][27]$_DFFE_PP__126  (.LO(net125));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][28]$_DFFE_PP_  (.D(net602),
    .DE(net126),
    .Q(\cpuregs[0][28] ),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][28]$_DFFE_PP__127  (.LO(net126));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net127),
    .Q(\cpuregs[0][29] ),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][29]$_DFFE_PP__128  (.LO(net127));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][2]$_DFFE_PP_  (.D(net672),
    .DE(net128),
    .Q(\cpuregs[0][2] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][2]$_DFFE_PP__129  (.LO(net128));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net129),
    .Q(\cpuregs[0][30] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][30]$_DFFE_PP__130  (.LO(net129));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][31]$_DFFE_PP_  (.D(net598),
    .DE(net130),
    .Q(\cpuregs[0][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][31]$_DFFE_PP__131  (.LO(net130));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][3]$_DFFE_PP_  (.D(net673),
    .DE(net131),
    .Q(\cpuregs[0][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][3]$_DFFE_PP__132  (.LO(net131));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][4]$_DFFE_PP_  (.D(net659),
    .DE(net132),
    .Q(\cpuregs[0][4] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][4]$_DFFE_PP__133  (.LO(net132));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][5]$_DFFE_PP_  (.D(net674),
    .DE(net133),
    .Q(\cpuregs[0][5] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][5]$_DFFE_PP__134  (.LO(net133));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net134),
    .Q(\cpuregs[0][6] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][6]$_DFFE_PP__135  (.LO(net134));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net135),
    .Q(\cpuregs[0][7] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][7]$_DFFE_PP__136  (.LO(net135));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][8]$_DFFE_PP_  (.D(net660),
    .DE(net136),
    .Q(\cpuregs[0][8] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][8]$_DFFE_PP__137  (.LO(net136));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[0][9]$_DFFE_PP_  (.D(net613),
    .DE(net137),
    .Q(\cpuregs[0][9] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__conb_1 \cpuregs[0][9]$_DFFE_PP__138  (.LO(net137));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net635),
    .Q(\cpuregs[10][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][10]$_DFFE_PP_  (.D(net654),
    .DE(net635),
    .Q(\cpuregs[10][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][11]$_DFFE_PP_  (.D(net614),
    .DE(net635),
    .Q(\cpuregs[10][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][12]$_DFFE_PP_  (.D(net655),
    .DE(net635),
    .Q(\cpuregs[10][12] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][13]$_DFFE_PP_  (.D(net615),
    .DE(net635),
    .Q(\cpuregs[10][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][14]$_DFFE_PP_  (.D(net616),
    .DE(net635),
    .Q(\cpuregs[10][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net635),
    .Q(\cpuregs[10][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net635),
    .Q(\cpuregs[10][16] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net635),
    .Q(\cpuregs[10][17] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][18]$_DFFE_PP_  (.D(net617),
    .DE(net635),
    .Q(\cpuregs[10][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][19]$_DFFE_PP_  (.D(net606),
    .DE(net635),
    .Q(\cpuregs[10][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net635),
    .Q(\cpuregs[10][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][20]$_DFFE_PP_  (.D(net610),
    .DE(net635),
    .Q(\cpuregs[10][20] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][21]$_DFFE_PP_  (.D(net607),
    .DE(net635),
    .Q(\cpuregs[10][21] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][22]$_DFFE_PP_  (.D(net608),
    .DE(net635),
    .Q(\cpuregs[10][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][23]$_DFFE_PP_  (.D(net603),
    .DE(net635),
    .Q(\cpuregs[10][23] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][24]$_DFFE_PP_  (.D(net600),
    .DE(net635),
    .Q(\cpuregs[10][24] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][25]$_DFFE_PP_  (.D(net604),
    .DE(net635),
    .Q(\cpuregs[10][25] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][26]$_DFFE_PP_  (.D(net605),
    .DE(net635),
    .Q(\cpuregs[10][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][27]$_DFFE_PP_  (.D(net601),
    .DE(net635),
    .Q(\cpuregs[10][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][28]$_DFFE_PP_  (.D(net602),
    .DE(net635),
    .Q(\cpuregs[10][28] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net635),
    .Q(\cpuregs[10][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][2]$_DFFE_PP_  (.D(net672),
    .DE(net635),
    .Q(\cpuregs[10][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net635),
    .Q(\cpuregs[10][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][31]$_DFFE_PP_  (.D(net598),
    .DE(net635),
    .Q(\cpuregs[10][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][3]$_DFFE_PP_  (.D(net673),
    .DE(net635),
    .Q(\cpuregs[10][3] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][4]$_DFFE_PP_  (.D(net659),
    .DE(net635),
    .Q(\cpuregs[10][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][5]$_DFFE_PP_  (.D(net674),
    .DE(net635),
    .Q(\cpuregs[10][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net635),
    .Q(\cpuregs[10][6] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net635),
    .Q(\cpuregs[10][7] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][8]$_DFFE_PP_  (.D(net660),
    .DE(net635),
    .Q(\cpuregs[10][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[10][9]$_DFFE_PP_  (.D(net613),
    .DE(net635),
    .Q(\cpuregs[10][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net636),
    .Q(\cpuregs[11][0] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][10]$_DFFE_PP_  (.D(net654),
    .DE(net636),
    .Q(\cpuregs[11][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][11]$_DFFE_PP_  (.D(net614),
    .DE(net636),
    .Q(\cpuregs[11][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][12]$_DFFE_PP_  (.D(net655),
    .DE(net636),
    .Q(\cpuregs[11][12] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][13]$_DFFE_PP_  (.D(net615),
    .DE(net636),
    .Q(\cpuregs[11][13] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][14]$_DFFE_PP_  (.D(net616),
    .DE(net636),
    .Q(\cpuregs[11][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net636),
    .Q(\cpuregs[11][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net636),
    .Q(\cpuregs[11][16] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net636),
    .Q(\cpuregs[11][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][18]$_DFFE_PP_  (.D(net617),
    .DE(net636),
    .Q(\cpuregs[11][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][19]$_DFFE_PP_  (.D(net606),
    .DE(net636),
    .Q(\cpuregs[11][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net636),
    .Q(\cpuregs[11][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][20]$_DFFE_PP_  (.D(net610),
    .DE(net636),
    .Q(\cpuregs[11][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][21]$_DFFE_PP_  (.D(net607),
    .DE(net636),
    .Q(\cpuregs[11][21] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][22]$_DFFE_PP_  (.D(net608),
    .DE(net636),
    .Q(\cpuregs[11][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][23]$_DFFE_PP_  (.D(net603),
    .DE(net636),
    .Q(\cpuregs[11][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][24]$_DFFE_PP_  (.D(net600),
    .DE(net636),
    .Q(\cpuregs[11][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][25]$_DFFE_PP_  (.D(net604),
    .DE(net636),
    .Q(\cpuregs[11][25] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][26]$_DFFE_PP_  (.D(net605),
    .DE(net636),
    .Q(\cpuregs[11][26] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][27]$_DFFE_PP_  (.D(net601),
    .DE(net636),
    .Q(\cpuregs[11][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][28]$_DFFE_PP_  (.D(net602),
    .DE(net636),
    .Q(\cpuregs[11][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net636),
    .Q(\cpuregs[11][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][2]$_DFFE_PP_  (.D(net672),
    .DE(net636),
    .Q(\cpuregs[11][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net636),
    .Q(\cpuregs[11][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][31]$_DFFE_PP_  (.D(net598),
    .DE(net636),
    .Q(\cpuregs[11][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][3]$_DFFE_PP_  (.D(net673),
    .DE(net636),
    .Q(\cpuregs[11][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][4]$_DFFE_PP_  (.D(net659),
    .DE(net636),
    .Q(\cpuregs[11][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][5]$_DFFE_PP_  (.D(net674),
    .DE(net636),
    .Q(\cpuregs[11][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net636),
    .Q(\cpuregs[11][6] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net636),
    .Q(\cpuregs[11][7] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][8]$_DFFE_PP_  (.D(net660),
    .DE(net636),
    .Q(\cpuregs[11][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[11][9]$_DFFE_PP_  (.D(net613),
    .DE(net636),
    .Q(\cpuregs[11][9] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net638),
    .Q(\cpuregs[12][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][10]$_DFFE_PP_  (.D(net654),
    .DE(net638),
    .Q(\cpuregs[12][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][11]$_DFFE_PP_  (.D(net614),
    .DE(net638),
    .Q(\cpuregs[12][11] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][12]$_DFFE_PP_  (.D(net655),
    .DE(net638),
    .Q(\cpuregs[12][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][13]$_DFFE_PP_  (.D(net615),
    .DE(net638),
    .Q(\cpuregs[12][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][14]$_DFFE_PP_  (.D(net616),
    .DE(net638),
    .Q(\cpuregs[12][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net638),
    .Q(\cpuregs[12][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net638),
    .Q(\cpuregs[12][16] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net638),
    .Q(\cpuregs[12][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][18]$_DFFE_PP_  (.D(net617),
    .DE(net638),
    .Q(\cpuregs[12][18] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][19]$_DFFE_PP_  (.D(net606),
    .DE(net638),
    .Q(\cpuregs[12][19] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net638),
    .Q(\cpuregs[12][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][20]$_DFFE_PP_  (.D(net610),
    .DE(net638),
    .Q(\cpuregs[12][20] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][21]$_DFFE_PP_  (.D(net607),
    .DE(net638),
    .Q(\cpuregs[12][21] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][22]$_DFFE_PP_  (.D(net608),
    .DE(net638),
    .Q(\cpuregs[12][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][23]$_DFFE_PP_  (.D(net603),
    .DE(net638),
    .Q(\cpuregs[12][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][24]$_DFFE_PP_  (.D(net600),
    .DE(net638),
    .Q(\cpuregs[12][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][25]$_DFFE_PP_  (.D(net604),
    .DE(net638),
    .Q(\cpuregs[12][25] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][26]$_DFFE_PP_  (.D(net605),
    .DE(net638),
    .Q(\cpuregs[12][26] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][27]$_DFFE_PP_  (.D(net601),
    .DE(net638),
    .Q(\cpuregs[12][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][28]$_DFFE_PP_  (.D(net602),
    .DE(net638),
    .Q(\cpuregs[12][28] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net638),
    .Q(\cpuregs[12][29] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][2]$_DFFE_PP_  (.D(net672),
    .DE(net638),
    .Q(\cpuregs[12][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net638),
    .Q(\cpuregs[12][30] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][31]$_DFFE_PP_  (.D(net598),
    .DE(net638),
    .Q(\cpuregs[12][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][3]$_DFFE_PP_  (.D(net673),
    .DE(net638),
    .Q(\cpuregs[12][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][4]$_DFFE_PP_  (.D(net659),
    .DE(net638),
    .Q(\cpuregs[12][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][5]$_DFFE_PP_  (.D(net674),
    .DE(net638),
    .Q(\cpuregs[12][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net638),
    .Q(\cpuregs[12][6] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net638),
    .Q(\cpuregs[12][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][8]$_DFFE_PP_  (.D(net660),
    .DE(net638),
    .Q(\cpuregs[12][8] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[12][9]$_DFFE_PP_  (.D(net613),
    .DE(net638),
    .Q(\cpuregs[12][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net640),
    .Q(\cpuregs[13][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][10]$_DFFE_PP_  (.D(net654),
    .DE(net640),
    .Q(\cpuregs[13][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][11]$_DFFE_PP_  (.D(net614),
    .DE(net640),
    .Q(\cpuregs[13][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][12]$_DFFE_PP_  (.D(net655),
    .DE(net640),
    .Q(\cpuregs[13][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][13]$_DFFE_PP_  (.D(net615),
    .DE(net640),
    .Q(\cpuregs[13][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][14]$_DFFE_PP_  (.D(net616),
    .DE(net640),
    .Q(\cpuregs[13][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net640),
    .Q(\cpuregs[13][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net640),
    .Q(\cpuregs[13][16] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net640),
    .Q(\cpuregs[13][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][18]$_DFFE_PP_  (.D(net617),
    .DE(net640),
    .Q(\cpuregs[13][18] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][19]$_DFFE_PP_  (.D(net606),
    .DE(net640),
    .Q(\cpuregs[13][19] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net640),
    .Q(\cpuregs[13][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][20]$_DFFE_PP_  (.D(net610),
    .DE(net640),
    .Q(\cpuregs[13][20] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][21]$_DFFE_PP_  (.D(net607),
    .DE(net640),
    .Q(\cpuregs[13][21] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][22]$_DFFE_PP_  (.D(net608),
    .DE(net640),
    .Q(\cpuregs[13][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][23]$_DFFE_PP_  (.D(net603),
    .DE(net640),
    .Q(\cpuregs[13][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][24]$_DFFE_PP_  (.D(net600),
    .DE(net640),
    .Q(\cpuregs[13][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][25]$_DFFE_PP_  (.D(net604),
    .DE(net640),
    .Q(\cpuregs[13][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][26]$_DFFE_PP_  (.D(net605),
    .DE(net640),
    .Q(\cpuregs[13][26] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][27]$_DFFE_PP_  (.D(net601),
    .DE(net640),
    .Q(\cpuregs[13][27] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][28]$_DFFE_PP_  (.D(net602),
    .DE(net640),
    .Q(\cpuregs[13][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net640),
    .Q(\cpuregs[13][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][2]$_DFFE_PP_  (.D(net672),
    .DE(net640),
    .Q(\cpuregs[13][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net640),
    .Q(\cpuregs[13][30] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][31]$_DFFE_PP_  (.D(net598),
    .DE(net640),
    .Q(\cpuregs[13][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][3]$_DFFE_PP_  (.D(net673),
    .DE(net640),
    .Q(\cpuregs[13][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][4]$_DFFE_PP_  (.D(net659),
    .DE(net640),
    .Q(\cpuregs[13][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][5]$_DFFE_PP_  (.D(net674),
    .DE(net640),
    .Q(\cpuregs[13][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net640),
    .Q(\cpuregs[13][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net640),
    .Q(\cpuregs[13][7] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][8]$_DFFE_PP_  (.D(net660),
    .DE(net640),
    .Q(\cpuregs[13][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[13][9]$_DFFE_PP_  (.D(net613),
    .DE(net640),
    .Q(\cpuregs[13][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net641),
    .Q(\cpuregs[14][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][10]$_DFFE_PP_  (.D(net654),
    .DE(net641),
    .Q(\cpuregs[14][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][11]$_DFFE_PP_  (.D(net614),
    .DE(net641),
    .Q(\cpuregs[14][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][12]$_DFFE_PP_  (.D(net655),
    .DE(net641),
    .Q(\cpuregs[14][12] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][13]$_DFFE_PP_  (.D(net615),
    .DE(net641),
    .Q(\cpuregs[14][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][14]$_DFFE_PP_  (.D(net616),
    .DE(net641),
    .Q(\cpuregs[14][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net641),
    .Q(\cpuregs[14][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net641),
    .Q(\cpuregs[14][16] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net641),
    .Q(\cpuregs[14][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][18]$_DFFE_PP_  (.D(net617),
    .DE(net641),
    .Q(\cpuregs[14][18] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][19]$_DFFE_PP_  (.D(net606),
    .DE(net641),
    .Q(\cpuregs[14][19] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net641),
    .Q(\cpuregs[14][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][20]$_DFFE_PP_  (.D(net610),
    .DE(net641),
    .Q(\cpuregs[14][20] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][21]$_DFFE_PP_  (.D(net607),
    .DE(net641),
    .Q(\cpuregs[14][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][22]$_DFFE_PP_  (.D(net608),
    .DE(net641),
    .Q(\cpuregs[14][22] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][23]$_DFFE_PP_  (.D(net603),
    .DE(net641),
    .Q(\cpuregs[14][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][24]$_DFFE_PP_  (.D(net600),
    .DE(net641),
    .Q(\cpuregs[14][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][25]$_DFFE_PP_  (.D(net604),
    .DE(net641),
    .Q(\cpuregs[14][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][26]$_DFFE_PP_  (.D(net605),
    .DE(net641),
    .Q(\cpuregs[14][26] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][27]$_DFFE_PP_  (.D(net601),
    .DE(net641),
    .Q(\cpuregs[14][27] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][28]$_DFFE_PP_  (.D(net602),
    .DE(net641),
    .Q(\cpuregs[14][28] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net641),
    .Q(\cpuregs[14][29] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][2]$_DFFE_PP_  (.D(net672),
    .DE(net641),
    .Q(\cpuregs[14][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net641),
    .Q(\cpuregs[14][30] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][31]$_DFFE_PP_  (.D(net598),
    .DE(net641),
    .Q(\cpuregs[14][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][3]$_DFFE_PP_  (.D(net673),
    .DE(net641),
    .Q(\cpuregs[14][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][4]$_DFFE_PP_  (.D(net659),
    .DE(net641),
    .Q(\cpuregs[14][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][5]$_DFFE_PP_  (.D(net674),
    .DE(net641),
    .Q(\cpuregs[14][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net641),
    .Q(\cpuregs[14][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net641),
    .Q(\cpuregs[14][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][8]$_DFFE_PP_  (.D(net660),
    .DE(net641),
    .Q(\cpuregs[14][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[14][9]$_DFFE_PP_  (.D(net613),
    .DE(net641),
    .Q(\cpuregs[14][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net643),
    .Q(\cpuregs[15][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][10]$_DFFE_PP_  (.D(net654),
    .DE(net643),
    .Q(\cpuregs[15][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][11]$_DFFE_PP_  (.D(net614),
    .DE(net643),
    .Q(\cpuregs[15][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][12]$_DFFE_PP_  (.D(net655),
    .DE(net643),
    .Q(\cpuregs[15][12] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][13]$_DFFE_PP_  (.D(net615),
    .DE(net643),
    .Q(\cpuregs[15][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][14]$_DFFE_PP_  (.D(net616),
    .DE(net643),
    .Q(\cpuregs[15][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net643),
    .Q(\cpuregs[15][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net643),
    .Q(\cpuregs[15][16] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net643),
    .Q(\cpuregs[15][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][18]$_DFFE_PP_  (.D(net617),
    .DE(net643),
    .Q(\cpuregs[15][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][19]$_DFFE_PP_  (.D(net606),
    .DE(net643),
    .Q(\cpuregs[15][19] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net643),
    .Q(\cpuregs[15][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][20]$_DFFE_PP_  (.D(net610),
    .DE(net643),
    .Q(\cpuregs[15][20] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][21]$_DFFE_PP_  (.D(net607),
    .DE(net643),
    .Q(\cpuregs[15][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][22]$_DFFE_PP_  (.D(net608),
    .DE(net643),
    .Q(\cpuregs[15][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][23]$_DFFE_PP_  (.D(net603),
    .DE(net643),
    .Q(\cpuregs[15][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][24]$_DFFE_PP_  (.D(net600),
    .DE(net643),
    .Q(\cpuregs[15][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][25]$_DFFE_PP_  (.D(net604),
    .DE(net643),
    .Q(\cpuregs[15][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][26]$_DFFE_PP_  (.D(net605),
    .DE(net643),
    .Q(\cpuregs[15][26] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][27]$_DFFE_PP_  (.D(net601),
    .DE(net643),
    .Q(\cpuregs[15][27] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][28]$_DFFE_PP_  (.D(net602),
    .DE(net643),
    .Q(\cpuregs[15][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net643),
    .Q(\cpuregs[15][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][2]$_DFFE_PP_  (.D(net672),
    .DE(net643),
    .Q(\cpuregs[15][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net643),
    .Q(\cpuregs[15][30] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][31]$_DFFE_PP_  (.D(net598),
    .DE(net643),
    .Q(\cpuregs[15][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][3]$_DFFE_PP_  (.D(net673),
    .DE(net643),
    .Q(\cpuregs[15][3] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][4]$_DFFE_PP_  (.D(net659),
    .DE(net643),
    .Q(\cpuregs[15][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][5]$_DFFE_PP_  (.D(net674),
    .DE(net643),
    .Q(\cpuregs[15][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net643),
    .Q(\cpuregs[15][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net643),
    .Q(\cpuregs[15][7] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][8]$_DFFE_PP_  (.D(net660),
    .DE(net643),
    .Q(\cpuregs[15][8] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[15][9]$_DFFE_PP_  (.D(net613),
    .DE(net643),
    .Q(\cpuregs[15][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net646),
    .Q(\cpuregs[16][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][10]$_DFFE_PP_  (.D(net654),
    .DE(net646),
    .Q(\cpuregs[16][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][11]$_DFFE_PP_  (.D(net614),
    .DE(_0839_),
    .Q(\cpuregs[16][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][12]$_DFFE_PP_  (.D(net655),
    .DE(_0839_),
    .Q(\cpuregs[16][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][13]$_DFFE_PP_  (.D(net615),
    .DE(_0839_),
    .Q(\cpuregs[16][13] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][14]$_DFFE_PP_  (.D(net616),
    .DE(net646),
    .Q(\cpuregs[16][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net646),
    .Q(\cpuregs[16][15] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net646),
    .Q(\cpuregs[16][16] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net646),
    .Q(\cpuregs[16][17] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][18]$_DFFE_PP_  (.D(net617),
    .DE(net646),
    .Q(\cpuregs[16][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][19]$_DFFE_PP_  (.D(net606),
    .DE(net646),
    .Q(\cpuregs[16][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0839_),
    .Q(\cpuregs[16][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][20]$_DFFE_PP_  (.D(net610),
    .DE(net646),
    .Q(\cpuregs[16][20] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][21]$_DFFE_PP_  (.D(net607),
    .DE(net646),
    .Q(\cpuregs[16][21] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][22]$_DFFE_PP_  (.D(net608),
    .DE(net646),
    .Q(\cpuregs[16][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][23]$_DFFE_PP_  (.D(net603),
    .DE(net646),
    .Q(\cpuregs[16][23] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][24]$_DFFE_PP_  (.D(net600),
    .DE(net646),
    .Q(\cpuregs[16][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][25]$_DFFE_PP_  (.D(net604),
    .DE(net646),
    .Q(\cpuregs[16][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][26]$_DFFE_PP_  (.D(net605),
    .DE(net646),
    .Q(\cpuregs[16][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][27]$_DFFE_PP_  (.D(net601),
    .DE(net646),
    .Q(\cpuregs[16][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][28]$_DFFE_PP_  (.D(net602),
    .DE(net646),
    .Q(\cpuregs[16][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net646),
    .Q(\cpuregs[16][29] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][2]$_DFFE_PP_  (.D(net672),
    .DE(_0839_),
    .Q(\cpuregs[16][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0839_),
    .Q(\cpuregs[16][30] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][31]$_DFFE_PP_  (.D(net598),
    .DE(net646),
    .Q(\cpuregs[16][31] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][3]$_DFFE_PP_  (.D(net673),
    .DE(_0839_),
    .Q(\cpuregs[16][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][4]$_DFFE_PP_  (.D(net659),
    .DE(_0839_),
    .Q(\cpuregs[16][4] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][5]$_DFFE_PP_  (.D(net674),
    .DE(net646),
    .Q(\cpuregs[16][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net646),
    .Q(\cpuregs[16][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net646),
    .Q(\cpuregs[16][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][8]$_DFFE_PP_  (.D(net660),
    .DE(net646),
    .Q(\cpuregs[16][8] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[16][9]$_DFFE_PP_  (.D(net613),
    .DE(_0839_),
    .Q(\cpuregs[16][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net647),
    .Q(\cpuregs[17][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][10]$_DFFE_PP_  (.D(net654),
    .DE(net647),
    .Q(\cpuregs[17][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][11]$_DFFE_PP_  (.D(net614),
    .DE(_0840_),
    .Q(\cpuregs[17][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][12]$_DFFE_PP_  (.D(net655),
    .DE(_0840_),
    .Q(\cpuregs[17][12] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][13]$_DFFE_PP_  (.D(net615),
    .DE(_0840_),
    .Q(\cpuregs[17][13] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][14]$_DFFE_PP_  (.D(net616),
    .DE(net647),
    .Q(\cpuregs[17][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net647),
    .Q(\cpuregs[17][15] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net647),
    .Q(\cpuregs[17][16] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net647),
    .Q(\cpuregs[17][17] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][18]$_DFFE_PP_  (.D(net617),
    .DE(net647),
    .Q(\cpuregs[17][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][19]$_DFFE_PP_  (.D(net606),
    .DE(net647),
    .Q(\cpuregs[17][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0840_),
    .Q(\cpuregs[17][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][20]$_DFFE_PP_  (.D(net610),
    .DE(net647),
    .Q(\cpuregs[17][20] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][21]$_DFFE_PP_  (.D(net607),
    .DE(net647),
    .Q(\cpuregs[17][21] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][22]$_DFFE_PP_  (.D(net608),
    .DE(net647),
    .Q(\cpuregs[17][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][23]$_DFFE_PP_  (.D(net603),
    .DE(net647),
    .Q(\cpuregs[17][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][24]$_DFFE_PP_  (.D(net600),
    .DE(net647),
    .Q(\cpuregs[17][24] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][25]$_DFFE_PP_  (.D(net604),
    .DE(net647),
    .Q(\cpuregs[17][25] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][26]$_DFFE_PP_  (.D(net605),
    .DE(net647),
    .Q(\cpuregs[17][26] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][27]$_DFFE_PP_  (.D(net601),
    .DE(net647),
    .Q(\cpuregs[17][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][28]$_DFFE_PP_  (.D(net602),
    .DE(net647),
    .Q(\cpuregs[17][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net647),
    .Q(\cpuregs[17][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][2]$_DFFE_PP_  (.D(net672),
    .DE(_0840_),
    .Q(\cpuregs[17][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0840_),
    .Q(\cpuregs[17][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][31]$_DFFE_PP_  (.D(net598),
    .DE(net647),
    .Q(\cpuregs[17][31] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][3]$_DFFE_PP_  (.D(net673),
    .DE(_0840_),
    .Q(\cpuregs[17][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][4]$_DFFE_PP_  (.D(net659),
    .DE(_0840_),
    .Q(\cpuregs[17][4] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][5]$_DFFE_PP_  (.D(net674),
    .DE(net647),
    .Q(\cpuregs[17][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net647),
    .Q(\cpuregs[17][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net647),
    .Q(\cpuregs[17][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][8]$_DFFE_PP_  (.D(net660),
    .DE(net647),
    .Q(\cpuregs[17][8] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[17][9]$_DFFE_PP_  (.D(net613),
    .DE(_0840_),
    .Q(\cpuregs[17][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net648),
    .Q(\cpuregs[18][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][10]$_DFFE_PP_  (.D(net654),
    .DE(net648),
    .Q(\cpuregs[18][10] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][11]$_DFFE_PP_  (.D(net614),
    .DE(net648),
    .Q(\cpuregs[18][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][12]$_DFFE_PP_  (.D(net655),
    .DE(net648),
    .Q(\cpuregs[18][12] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][13]$_DFFE_PP_  (.D(net615),
    .DE(net648),
    .Q(\cpuregs[18][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][14]$_DFFE_PP_  (.D(net616),
    .DE(net648),
    .Q(\cpuregs[18][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net648),
    .Q(\cpuregs[18][15] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net648),
    .Q(\cpuregs[18][16] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net648),
    .Q(\cpuregs[18][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][18]$_DFFE_PP_  (.D(net617),
    .DE(net648),
    .Q(\cpuregs[18][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][19]$_DFFE_PP_  (.D(net606),
    .DE(net648),
    .Q(\cpuregs[18][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net648),
    .Q(\cpuregs[18][1] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][20]$_DFFE_PP_  (.D(net610),
    .DE(net648),
    .Q(\cpuregs[18][20] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][21]$_DFFE_PP_  (.D(net607),
    .DE(net648),
    .Q(\cpuregs[18][21] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][22]$_DFFE_PP_  (.D(net608),
    .DE(net648),
    .Q(\cpuregs[18][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][23]$_DFFE_PP_  (.D(net603),
    .DE(net648),
    .Q(\cpuregs[18][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][24]$_DFFE_PP_  (.D(net600),
    .DE(net648),
    .Q(\cpuregs[18][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][25]$_DFFE_PP_  (.D(net604),
    .DE(net648),
    .Q(\cpuregs[18][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][26]$_DFFE_PP_  (.D(net605),
    .DE(net648),
    .Q(\cpuregs[18][26] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][27]$_DFFE_PP_  (.D(net601),
    .DE(net648),
    .Q(\cpuregs[18][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][28]$_DFFE_PP_  (.D(net602),
    .DE(net648),
    .Q(\cpuregs[18][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net648),
    .Q(\cpuregs[18][29] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][2]$_DFFE_PP_  (.D(net672),
    .DE(net648),
    .Q(\cpuregs[18][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net648),
    .Q(\cpuregs[18][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][31]$_DFFE_PP_  (.D(net598),
    .DE(net648),
    .Q(\cpuregs[18][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][3]$_DFFE_PP_  (.D(net673),
    .DE(net648),
    .Q(\cpuregs[18][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][4]$_DFFE_PP_  (.D(net659),
    .DE(net648),
    .Q(\cpuregs[18][4] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][5]$_DFFE_PP_  (.D(net674),
    .DE(net648),
    .Q(\cpuregs[18][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net648),
    .Q(\cpuregs[18][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net648),
    .Q(\cpuregs[18][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][8]$_DFFE_PP_  (.D(net660),
    .DE(net648),
    .Q(\cpuregs[18][8] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[18][9]$_DFFE_PP_  (.D(net613),
    .DE(net648),
    .Q(\cpuregs[18][9] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net650),
    .Q(\cpuregs[19][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][10]$_DFFE_PP_  (.D(net654),
    .DE(net650),
    .Q(\cpuregs[19][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][11]$_DFFE_PP_  (.D(net614),
    .DE(_0842_),
    .Q(\cpuregs[19][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][12]$_DFFE_PP_  (.D(net655),
    .DE(_0842_),
    .Q(\cpuregs[19][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][13]$_DFFE_PP_  (.D(net615),
    .DE(_0842_),
    .Q(\cpuregs[19][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][14]$_DFFE_PP_  (.D(net616),
    .DE(net650),
    .Q(\cpuregs[19][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net650),
    .Q(\cpuregs[19][15] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net650),
    .Q(\cpuregs[19][16] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net650),
    .Q(\cpuregs[19][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][18]$_DFFE_PP_  (.D(net617),
    .DE(net650),
    .Q(\cpuregs[19][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][19]$_DFFE_PP_  (.D(net606),
    .DE(net650),
    .Q(\cpuregs[19][19] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0842_),
    .Q(\cpuregs[19][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][20]$_DFFE_PP_  (.D(net610),
    .DE(net650),
    .Q(\cpuregs[19][20] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][21]$_DFFE_PP_  (.D(net607),
    .DE(net650),
    .Q(\cpuregs[19][21] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][22]$_DFFE_PP_  (.D(net608),
    .DE(net650),
    .Q(\cpuregs[19][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][23]$_DFFE_PP_  (.D(net603),
    .DE(net650),
    .Q(\cpuregs[19][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][24]$_DFFE_PP_  (.D(net600),
    .DE(net650),
    .Q(\cpuregs[19][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][25]$_DFFE_PP_  (.D(net604),
    .DE(net650),
    .Q(\cpuregs[19][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][26]$_DFFE_PP_  (.D(net605),
    .DE(net650),
    .Q(\cpuregs[19][26] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][27]$_DFFE_PP_  (.D(net601),
    .DE(net650),
    .Q(\cpuregs[19][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][28]$_DFFE_PP_  (.D(net602),
    .DE(net650),
    .Q(\cpuregs[19][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net650),
    .Q(\cpuregs[19][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][2]$_DFFE_PP_  (.D(net672),
    .DE(_0842_),
    .Q(\cpuregs[19][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0842_),
    .Q(\cpuregs[19][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][31]$_DFFE_PP_  (.D(net598),
    .DE(net650),
    .Q(\cpuregs[19][31] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][3]$_DFFE_PP_  (.D(net673),
    .DE(_0842_),
    .Q(\cpuregs[19][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][4]$_DFFE_PP_  (.D(net659),
    .DE(_0842_),
    .Q(\cpuregs[19][4] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][5]$_DFFE_PP_  (.D(net674),
    .DE(net650),
    .Q(\cpuregs[19][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net650),
    .Q(\cpuregs[19][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net650),
    .Q(\cpuregs[19][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][8]$_DFFE_PP_  (.D(net660),
    .DE(net650),
    .Q(\cpuregs[19][8] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[19][9]$_DFFE_PP_  (.D(net613),
    .DE(_0842_),
    .Q(\cpuregs[19][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net621),
    .Q(\cpuregs[1][0] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][10]$_DFFE_PP_  (.D(net654),
    .DE(net621),
    .Q(\cpuregs[1][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][11]$_DFFE_PP_  (.D(net614),
    .DE(net621),
    .Q(\cpuregs[1][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][12]$_DFFE_PP_  (.D(net655),
    .DE(net621),
    .Q(\cpuregs[1][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][13]$_DFFE_PP_  (.D(net615),
    .DE(net621),
    .Q(\cpuregs[1][13] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][14]$_DFFE_PP_  (.D(net616),
    .DE(net621),
    .Q(\cpuregs[1][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net621),
    .Q(\cpuregs[1][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net621),
    .Q(\cpuregs[1][16] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net621),
    .Q(\cpuregs[1][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][18]$_DFFE_PP_  (.D(net617),
    .DE(net621),
    .Q(\cpuregs[1][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][19]$_DFFE_PP_  (.D(net606),
    .DE(net621),
    .Q(\cpuregs[1][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net621),
    .Q(\cpuregs[1][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][20]$_DFFE_PP_  (.D(net610),
    .DE(net621),
    .Q(\cpuregs[1][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][21]$_DFFE_PP_  (.D(net607),
    .DE(net621),
    .Q(\cpuregs[1][21] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][22]$_DFFE_PP_  (.D(net608),
    .DE(net621),
    .Q(\cpuregs[1][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][23]$_DFFE_PP_  (.D(net603),
    .DE(net621),
    .Q(\cpuregs[1][23] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][24]$_DFFE_PP_  (.D(net600),
    .DE(net621),
    .Q(\cpuregs[1][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][25]$_DFFE_PP_  (.D(net604),
    .DE(net621),
    .Q(\cpuregs[1][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][26]$_DFFE_PP_  (.D(net605),
    .DE(net621),
    .Q(\cpuregs[1][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][27]$_DFFE_PP_  (.D(net601),
    .DE(net621),
    .Q(\cpuregs[1][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][28]$_DFFE_PP_  (.D(net602),
    .DE(net621),
    .Q(\cpuregs[1][28] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net621),
    .Q(\cpuregs[1][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][2]$_DFFE_PP_  (.D(net672),
    .DE(net621),
    .Q(\cpuregs[1][2] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net621),
    .Q(\cpuregs[1][30] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][31]$_DFFE_PP_  (.D(net598),
    .DE(net621),
    .Q(\cpuregs[1][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][3]$_DFFE_PP_  (.D(net673),
    .DE(net621),
    .Q(\cpuregs[1][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][4]$_DFFE_PP_  (.D(net659),
    .DE(net621),
    .Q(\cpuregs[1][4] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][5]$_DFFE_PP_  (.D(net674),
    .DE(net621),
    .Q(\cpuregs[1][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net621),
    .Q(\cpuregs[1][6] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net621),
    .Q(\cpuregs[1][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][8]$_DFFE_PP_  (.D(net660),
    .DE(net621),
    .Q(\cpuregs[1][8] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[1][9]$_DFFE_PP_  (.D(net613),
    .DE(net621),
    .Q(\cpuregs[1][9] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net651),
    .Q(\cpuregs[20][0] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][10]$_DFFE_PP_  (.D(net654),
    .DE(net651),
    .Q(\cpuregs[20][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][11]$_DFFE_PP_  (.D(net614),
    .DE(net651),
    .Q(\cpuregs[20][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][12]$_DFFE_PP_  (.D(net655),
    .DE(_0844_),
    .Q(\cpuregs[20][12] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][13]$_DFFE_PP_  (.D(net615),
    .DE(net651),
    .Q(\cpuregs[20][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][14]$_DFFE_PP_  (.D(net616),
    .DE(net651),
    .Q(\cpuregs[20][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net651),
    .Q(\cpuregs[20][15] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net651),
    .Q(\cpuregs[20][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net651),
    .Q(\cpuregs[20][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][18]$_DFFE_PP_  (.D(net617),
    .DE(net651),
    .Q(\cpuregs[20][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][19]$_DFFE_PP_  (.D(net606),
    .DE(net651),
    .Q(\cpuregs[20][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0844_),
    .Q(\cpuregs[20][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][20]$_DFFE_PP_  (.D(net610),
    .DE(net651),
    .Q(\cpuregs[20][20] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][21]$_DFFE_PP_  (.D(net607),
    .DE(net651),
    .Q(\cpuregs[20][21] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][22]$_DFFE_PP_  (.D(net608),
    .DE(net651),
    .Q(\cpuregs[20][22] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][23]$_DFFE_PP_  (.D(net603),
    .DE(net651),
    .Q(\cpuregs[20][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][24]$_DFFE_PP_  (.D(net600),
    .DE(net651),
    .Q(\cpuregs[20][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][25]$_DFFE_PP_  (.D(net604),
    .DE(net651),
    .Q(\cpuregs[20][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][26]$_DFFE_PP_  (.D(net605),
    .DE(net651),
    .Q(\cpuregs[20][26] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][27]$_DFFE_PP_  (.D(net601),
    .DE(net651),
    .Q(\cpuregs[20][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][28]$_DFFE_PP_  (.D(net602),
    .DE(net651),
    .Q(\cpuregs[20][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net651),
    .Q(\cpuregs[20][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][2]$_DFFE_PP_  (.D(net672),
    .DE(_0844_),
    .Q(\cpuregs[20][2] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0844_),
    .Q(\cpuregs[20][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][31]$_DFFE_PP_  (.D(net598),
    .DE(net651),
    .Q(\cpuregs[20][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][3]$_DFFE_PP_  (.D(net673),
    .DE(_0844_),
    .Q(\cpuregs[20][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][4]$_DFFE_PP_  (.D(net659),
    .DE(_0844_),
    .Q(\cpuregs[20][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][5]$_DFFE_PP_  (.D(net674),
    .DE(net651),
    .Q(\cpuregs[20][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net651),
    .Q(\cpuregs[20][6] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net651),
    .Q(\cpuregs[20][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][8]$_DFFE_PP_  (.D(net660),
    .DE(net651),
    .Q(\cpuregs[20][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[20][9]$_DFFE_PP_  (.D(net613),
    .DE(net651),
    .Q(\cpuregs[20][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net622),
    .Q(\cpuregs[21][0] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][10]$_DFFE_PP_  (.D(net654),
    .DE(net622),
    .Q(\cpuregs[21][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][11]$_DFFE_PP_  (.D(net614),
    .DE(net622),
    .Q(\cpuregs[21][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][12]$_DFFE_PP_  (.D(net655),
    .DE(_0845_),
    .Q(\cpuregs[21][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][13]$_DFFE_PP_  (.D(net615),
    .DE(net622),
    .Q(\cpuregs[21][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][14]$_DFFE_PP_  (.D(net616),
    .DE(net622),
    .Q(\cpuregs[21][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net622),
    .Q(\cpuregs[21][15] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net622),
    .Q(\cpuregs[21][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net622),
    .Q(\cpuregs[21][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][18]$_DFFE_PP_  (.D(net617),
    .DE(net622),
    .Q(\cpuregs[21][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][19]$_DFFE_PP_  (.D(net606),
    .DE(net622),
    .Q(\cpuregs[21][19] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0845_),
    .Q(\cpuregs[21][1] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][20]$_DFFE_PP_  (.D(net610),
    .DE(net622),
    .Q(\cpuregs[21][20] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][21]$_DFFE_PP_  (.D(net607),
    .DE(net622),
    .Q(\cpuregs[21][21] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][22]$_DFFE_PP_  (.D(net608),
    .DE(net622),
    .Q(\cpuregs[21][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][23]$_DFFE_PP_  (.D(net603),
    .DE(net622),
    .Q(\cpuregs[21][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][24]$_DFFE_PP_  (.D(net600),
    .DE(net622),
    .Q(\cpuregs[21][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][25]$_DFFE_PP_  (.D(net604),
    .DE(net622),
    .Q(\cpuregs[21][25] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][26]$_DFFE_PP_  (.D(net605),
    .DE(net622),
    .Q(\cpuregs[21][26] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][27]$_DFFE_PP_  (.D(net601),
    .DE(net622),
    .Q(\cpuregs[21][27] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][28]$_DFFE_PP_  (.D(net602),
    .DE(net622),
    .Q(\cpuregs[21][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net622),
    .Q(\cpuregs[21][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][2]$_DFFE_PP_  (.D(net672),
    .DE(_0845_),
    .Q(\cpuregs[21][2] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0845_),
    .Q(\cpuregs[21][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][31]$_DFFE_PP_  (.D(net598),
    .DE(net622),
    .Q(\cpuregs[21][31] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][3]$_DFFE_PP_  (.D(net673),
    .DE(_0845_),
    .Q(\cpuregs[21][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][4]$_DFFE_PP_  (.D(net659),
    .DE(_0845_),
    .Q(\cpuregs[21][4] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][5]$_DFFE_PP_  (.D(net674),
    .DE(net622),
    .Q(\cpuregs[21][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net622),
    .Q(\cpuregs[21][6] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net622),
    .Q(\cpuregs[21][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][8]$_DFFE_PP_  (.D(net660),
    .DE(net622),
    .Q(\cpuregs[21][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[21][9]$_DFFE_PP_  (.D(net613),
    .DE(net622),
    .Q(\cpuregs[21][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net637),
    .Q(\cpuregs[22][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][10]$_DFFE_PP_  (.D(net654),
    .DE(net637),
    .Q(\cpuregs[22][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][11]$_DFFE_PP_  (.D(net614),
    .DE(net637),
    .Q(\cpuregs[22][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][12]$_DFFE_PP_  (.D(net655),
    .DE(_0846_),
    .Q(\cpuregs[22][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][13]$_DFFE_PP_  (.D(net615),
    .DE(net637),
    .Q(\cpuregs[22][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][14]$_DFFE_PP_  (.D(net616),
    .DE(net637),
    .Q(\cpuregs[22][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net637),
    .Q(\cpuregs[22][15] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net637),
    .Q(\cpuregs[22][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net637),
    .Q(\cpuregs[22][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][18]$_DFFE_PP_  (.D(net617),
    .DE(net637),
    .Q(\cpuregs[22][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][19]$_DFFE_PP_  (.D(net606),
    .DE(net637),
    .Q(\cpuregs[22][19] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0846_),
    .Q(\cpuregs[22][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][20]$_DFFE_PP_  (.D(net610),
    .DE(net637),
    .Q(\cpuregs[22][20] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][21]$_DFFE_PP_  (.D(net607),
    .DE(net637),
    .Q(\cpuregs[22][21] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][22]$_DFFE_PP_  (.D(net608),
    .DE(net637),
    .Q(\cpuregs[22][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][23]$_DFFE_PP_  (.D(net603),
    .DE(net637),
    .Q(\cpuregs[22][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][24]$_DFFE_PP_  (.D(net600),
    .DE(net637),
    .Q(\cpuregs[22][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][25]$_DFFE_PP_  (.D(net604),
    .DE(net637),
    .Q(\cpuregs[22][25] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][26]$_DFFE_PP_  (.D(net605),
    .DE(net637),
    .Q(\cpuregs[22][26] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][27]$_DFFE_PP_  (.D(net601),
    .DE(net637),
    .Q(\cpuregs[22][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][28]$_DFFE_PP_  (.D(net602),
    .DE(net637),
    .Q(\cpuregs[22][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net637),
    .Q(\cpuregs[22][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][2]$_DFFE_PP_  (.D(net672),
    .DE(_0846_),
    .Q(\cpuregs[22][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0846_),
    .Q(\cpuregs[22][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][31]$_DFFE_PP_  (.D(net598),
    .DE(net637),
    .Q(\cpuregs[22][31] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][3]$_DFFE_PP_  (.D(net673),
    .DE(_0846_),
    .Q(\cpuregs[22][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][4]$_DFFE_PP_  (.D(net659),
    .DE(_0846_),
    .Q(\cpuregs[22][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][5]$_DFFE_PP_  (.D(net674),
    .DE(net637),
    .Q(\cpuregs[22][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net637),
    .Q(\cpuregs[22][6] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net637),
    .Q(\cpuregs[22][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][8]$_DFFE_PP_  (.D(net660),
    .DE(net637),
    .Q(\cpuregs[22][8] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[22][9]$_DFFE_PP_  (.D(net613),
    .DE(net637),
    .Q(\cpuregs[22][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net642),
    .Q(\cpuregs[23][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][10]$_DFFE_PP_  (.D(net654),
    .DE(net642),
    .Q(\cpuregs[23][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][11]$_DFFE_PP_  (.D(net614),
    .DE(net642),
    .Q(\cpuregs[23][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][12]$_DFFE_PP_  (.D(net655),
    .DE(_0847_),
    .Q(\cpuregs[23][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][13]$_DFFE_PP_  (.D(net615),
    .DE(net642),
    .Q(\cpuregs[23][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][14]$_DFFE_PP_  (.D(net616),
    .DE(net642),
    .Q(\cpuregs[23][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net642),
    .Q(\cpuregs[23][15] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net642),
    .Q(\cpuregs[23][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net642),
    .Q(\cpuregs[23][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][18]$_DFFE_PP_  (.D(net617),
    .DE(net642),
    .Q(\cpuregs[23][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][19]$_DFFE_PP_  (.D(net606),
    .DE(net642),
    .Q(\cpuregs[23][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0847_),
    .Q(\cpuregs[23][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][20]$_DFFE_PP_  (.D(net610),
    .DE(net642),
    .Q(\cpuregs[23][20] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][21]$_DFFE_PP_  (.D(net607),
    .DE(net642),
    .Q(\cpuregs[23][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][22]$_DFFE_PP_  (.D(net608),
    .DE(net642),
    .Q(\cpuregs[23][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][23]$_DFFE_PP_  (.D(net603),
    .DE(net642),
    .Q(\cpuregs[23][23] ),
    .CLK(clknet_leaf_55_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][24]$_DFFE_PP_  (.D(net600),
    .DE(net642),
    .Q(\cpuregs[23][24] ),
    .CLK(clknet_leaf_59_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][25]$_DFFE_PP_  (.D(net604),
    .DE(net642),
    .Q(\cpuregs[23][25] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][26]$_DFFE_PP_  (.D(net605),
    .DE(net642),
    .Q(\cpuregs[23][26] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][27]$_DFFE_PP_  (.D(net601),
    .DE(net642),
    .Q(\cpuregs[23][27] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][28]$_DFFE_PP_  (.D(net602),
    .DE(net642),
    .Q(\cpuregs[23][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net642),
    .Q(\cpuregs[23][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][2]$_DFFE_PP_  (.D(net672),
    .DE(_0847_),
    .Q(\cpuregs[23][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0847_),
    .Q(\cpuregs[23][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][31]$_DFFE_PP_  (.D(net598),
    .DE(net642),
    .Q(\cpuregs[23][31] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][3]$_DFFE_PP_  (.D(net673),
    .DE(_0847_),
    .Q(\cpuregs[23][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][4]$_DFFE_PP_  (.D(net659),
    .DE(_0847_),
    .Q(\cpuregs[23][4] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][5]$_DFFE_PP_  (.D(net674),
    .DE(net642),
    .Q(\cpuregs[23][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net642),
    .Q(\cpuregs[23][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net642),
    .Q(\cpuregs[23][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][8]$_DFFE_PP_  (.D(net660),
    .DE(net642),
    .Q(\cpuregs[23][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[23][9]$_DFFE_PP_  (.D(net613),
    .DE(net642),
    .Q(\cpuregs[23][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net649),
    .Q(\cpuregs[24][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][10]$_DFFE_PP_  (.D(net654),
    .DE(net649),
    .Q(\cpuregs[24][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][11]$_DFFE_PP_  (.D(net614),
    .DE(net649),
    .Q(\cpuregs[24][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][12]$_DFFE_PP_  (.D(net655),
    .DE(net649),
    .Q(\cpuregs[24][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][13]$_DFFE_PP_  (.D(net615),
    .DE(net649),
    .Q(\cpuregs[24][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][14]$_DFFE_PP_  (.D(net616),
    .DE(net649),
    .Q(\cpuregs[24][14] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net649),
    .Q(\cpuregs[24][15] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net649),
    .Q(\cpuregs[24][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net649),
    .Q(\cpuregs[24][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][18]$_DFFE_PP_  (.D(net617),
    .DE(net649),
    .Q(\cpuregs[24][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][19]$_DFFE_PP_  (.D(net606),
    .DE(net649),
    .Q(\cpuregs[24][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0848_),
    .Q(\cpuregs[24][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][20]$_DFFE_PP_  (.D(net610),
    .DE(net649),
    .Q(\cpuregs[24][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][21]$_DFFE_PP_  (.D(net607),
    .DE(net649),
    .Q(\cpuregs[24][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][22]$_DFFE_PP_  (.D(net608),
    .DE(net649),
    .Q(\cpuregs[24][22] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][23]$_DFFE_PP_  (.D(net603),
    .DE(net649),
    .Q(\cpuregs[24][23] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][24]$_DFFE_PP_  (.D(net600),
    .DE(net649),
    .Q(\cpuregs[24][24] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][25]$_DFFE_PP_  (.D(net604),
    .DE(net649),
    .Q(\cpuregs[24][25] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][26]$_DFFE_PP_  (.D(net605),
    .DE(net649),
    .Q(\cpuregs[24][26] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][27]$_DFFE_PP_  (.D(net601),
    .DE(net649),
    .Q(\cpuregs[24][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][28]$_DFFE_PP_  (.D(net602),
    .DE(net649),
    .Q(\cpuregs[24][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net649),
    .Q(\cpuregs[24][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][2]$_DFFE_PP_  (.D(net672),
    .DE(net649),
    .Q(\cpuregs[24][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net649),
    .Q(\cpuregs[24][30] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][31]$_DFFE_PP_  (.D(net598),
    .DE(net649),
    .Q(\cpuregs[24][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][3]$_DFFE_PP_  (.D(net673),
    .DE(net649),
    .Q(\cpuregs[24][3] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][4]$_DFFE_PP_  (.D(net659),
    .DE(net649),
    .Q(\cpuregs[24][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][5]$_DFFE_PP_  (.D(net674),
    .DE(net649),
    .Q(\cpuregs[24][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net649),
    .Q(\cpuregs[24][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net649),
    .Q(\cpuregs[24][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][8]$_DFFE_PP_  (.D(net660),
    .DE(net649),
    .Q(\cpuregs[24][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[24][9]$_DFFE_PP_  (.D(net613),
    .DE(net649),
    .Q(\cpuregs[24][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net644),
    .Q(\cpuregs[25][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][10]$_DFFE_PP_  (.D(net654),
    .DE(net644),
    .Q(\cpuregs[25][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][11]$_DFFE_PP_  (.D(net614),
    .DE(net644),
    .Q(\cpuregs[25][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][12]$_DFFE_PP_  (.D(net655),
    .DE(net644),
    .Q(\cpuregs[25][12] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][13]$_DFFE_PP_  (.D(net615),
    .DE(net644),
    .Q(\cpuregs[25][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][14]$_DFFE_PP_  (.D(net616),
    .DE(net644),
    .Q(\cpuregs[25][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net644),
    .Q(\cpuregs[25][15] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net644),
    .Q(\cpuregs[25][16] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net644),
    .Q(\cpuregs[25][17] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][18]$_DFFE_PP_  (.D(net617),
    .DE(net644),
    .Q(\cpuregs[25][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][19]$_DFFE_PP_  (.D(net606),
    .DE(net644),
    .Q(\cpuregs[25][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0849_),
    .Q(\cpuregs[25][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][20]$_DFFE_PP_  (.D(net610),
    .DE(net644),
    .Q(\cpuregs[25][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][21]$_DFFE_PP_  (.D(net607),
    .DE(net644),
    .Q(\cpuregs[25][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][22]$_DFFE_PP_  (.D(net608),
    .DE(net644),
    .Q(\cpuregs[25][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][23]$_DFFE_PP_  (.D(net603),
    .DE(net644),
    .Q(\cpuregs[25][23] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][24]$_DFFE_PP_  (.D(net600),
    .DE(net644),
    .Q(\cpuregs[25][24] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][25]$_DFFE_PP_  (.D(net604),
    .DE(net644),
    .Q(\cpuregs[25][25] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][26]$_DFFE_PP_  (.D(net605),
    .DE(net644),
    .Q(\cpuregs[25][26] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][27]$_DFFE_PP_  (.D(net601),
    .DE(net644),
    .Q(\cpuregs[25][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][28]$_DFFE_PP_  (.D(net602),
    .DE(net644),
    .Q(\cpuregs[25][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net644),
    .Q(\cpuregs[25][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][2]$_DFFE_PP_  (.D(net672),
    .DE(net644),
    .Q(\cpuregs[25][2] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net644),
    .Q(\cpuregs[25][30] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][31]$_DFFE_PP_  (.D(net598),
    .DE(net644),
    .Q(\cpuregs[25][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][3]$_DFFE_PP_  (.D(net673),
    .DE(net644),
    .Q(\cpuregs[25][3] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][4]$_DFFE_PP_  (.D(net659),
    .DE(net644),
    .Q(\cpuregs[25][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][5]$_DFFE_PP_  (.D(net674),
    .DE(net644),
    .Q(\cpuregs[25][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net644),
    .Q(\cpuregs[25][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net644),
    .Q(\cpuregs[25][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][8]$_DFFE_PP_  (.D(net660),
    .DE(net644),
    .Q(\cpuregs[25][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[25][9]$_DFFE_PP_  (.D(net613),
    .DE(net644),
    .Q(\cpuregs[25][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net639),
    .Q(\cpuregs[26][0] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][10]$_DFFE_PP_  (.D(net654),
    .DE(net639),
    .Q(\cpuregs[26][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][11]$_DFFE_PP_  (.D(net614),
    .DE(net639),
    .Q(\cpuregs[26][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][12]$_DFFE_PP_  (.D(net655),
    .DE(net639),
    .Q(\cpuregs[26][12] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][13]$_DFFE_PP_  (.D(net615),
    .DE(net639),
    .Q(\cpuregs[26][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][14]$_DFFE_PP_  (.D(net616),
    .DE(net639),
    .Q(\cpuregs[26][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net639),
    .Q(\cpuregs[26][15] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net639),
    .Q(\cpuregs[26][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net639),
    .Q(\cpuregs[26][17] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][18]$_DFFE_PP_  (.D(net617),
    .DE(net639),
    .Q(\cpuregs[26][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][19]$_DFFE_PP_  (.D(net606),
    .DE(net639),
    .Q(\cpuregs[26][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net639),
    .Q(\cpuregs[26][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][20]$_DFFE_PP_  (.D(net610),
    .DE(net639),
    .Q(\cpuregs[26][20] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][21]$_DFFE_PP_  (.D(net607),
    .DE(net639),
    .Q(\cpuregs[26][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][22]$_DFFE_PP_  (.D(net608),
    .DE(net639),
    .Q(\cpuregs[26][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][23]$_DFFE_PP_  (.D(net603),
    .DE(net639),
    .Q(\cpuregs[26][23] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][24]$_DFFE_PP_  (.D(net600),
    .DE(net639),
    .Q(\cpuregs[26][24] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][25]$_DFFE_PP_  (.D(net604),
    .DE(net639),
    .Q(\cpuregs[26][25] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][26]$_DFFE_PP_  (.D(net605),
    .DE(net639),
    .Q(\cpuregs[26][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][27]$_DFFE_PP_  (.D(net601),
    .DE(net639),
    .Q(\cpuregs[26][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][28]$_DFFE_PP_  (.D(net602),
    .DE(net639),
    .Q(\cpuregs[26][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net639),
    .Q(\cpuregs[26][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][2]$_DFFE_PP_  (.D(net672),
    .DE(net639),
    .Q(\cpuregs[26][2] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net639),
    .Q(\cpuregs[26][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][31]$_DFFE_PP_  (.D(net598),
    .DE(net639),
    .Q(\cpuregs[26][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][3]$_DFFE_PP_  (.D(net673),
    .DE(net639),
    .Q(\cpuregs[26][3] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][4]$_DFFE_PP_  (.D(net659),
    .DE(net639),
    .Q(\cpuregs[26][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][5]$_DFFE_PP_  (.D(net674),
    .DE(net639),
    .Q(\cpuregs[26][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net639),
    .Q(\cpuregs[26][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net639),
    .Q(\cpuregs[26][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][8]$_DFFE_PP_  (.D(net660),
    .DE(net639),
    .Q(\cpuregs[26][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[26][9]$_DFFE_PP_  (.D(net613),
    .DE(net639),
    .Q(\cpuregs[26][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net634),
    .Q(\cpuregs[27][0] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][10]$_DFFE_PP_  (.D(net654),
    .DE(net634),
    .Q(\cpuregs[27][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][11]$_DFFE_PP_  (.D(net614),
    .DE(net634),
    .Q(\cpuregs[27][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][12]$_DFFE_PP_  (.D(net655),
    .DE(net634),
    .Q(\cpuregs[27][12] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][13]$_DFFE_PP_  (.D(net615),
    .DE(net634),
    .Q(\cpuregs[27][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][14]$_DFFE_PP_  (.D(net616),
    .DE(net634),
    .Q(\cpuregs[27][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net634),
    .Q(\cpuregs[27][15] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net634),
    .Q(\cpuregs[27][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net634),
    .Q(\cpuregs[27][17] ),
    .CLK(clknet_leaf_25_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][18]$_DFFE_PP_  (.D(net617),
    .DE(net634),
    .Q(\cpuregs[27][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][19]$_DFFE_PP_  (.D(net606),
    .DE(net634),
    .Q(\cpuregs[27][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net634),
    .Q(\cpuregs[27][1] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][20]$_DFFE_PP_  (.D(net610),
    .DE(net634),
    .Q(\cpuregs[27][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][21]$_DFFE_PP_  (.D(net607),
    .DE(net634),
    .Q(\cpuregs[27][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][22]$_DFFE_PP_  (.D(net608),
    .DE(net634),
    .Q(\cpuregs[27][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][23]$_DFFE_PP_  (.D(net603),
    .DE(net634),
    .Q(\cpuregs[27][23] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][24]$_DFFE_PP_  (.D(net600),
    .DE(net634),
    .Q(\cpuregs[27][24] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][25]$_DFFE_PP_  (.D(net604),
    .DE(net634),
    .Q(\cpuregs[27][25] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][26]$_DFFE_PP_  (.D(net605),
    .DE(net634),
    .Q(\cpuregs[27][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][27]$_DFFE_PP_  (.D(net601),
    .DE(net634),
    .Q(\cpuregs[27][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][28]$_DFFE_PP_  (.D(net602),
    .DE(net634),
    .Q(\cpuregs[27][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net634),
    .Q(\cpuregs[27][29] ),
    .CLK(clknet_leaf_71_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][2]$_DFFE_PP_  (.D(net672),
    .DE(net634),
    .Q(\cpuregs[27][2] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net634),
    .Q(\cpuregs[27][30] ),
    .CLK(clknet_leaf_146_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][31]$_DFFE_PP_  (.D(net598),
    .DE(net634),
    .Q(\cpuregs[27][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][3]$_DFFE_PP_  (.D(net673),
    .DE(net634),
    .Q(\cpuregs[27][3] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][4]$_DFFE_PP_  (.D(net659),
    .DE(net634),
    .Q(\cpuregs[27][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][5]$_DFFE_PP_  (.D(net674),
    .DE(net634),
    .Q(\cpuregs[27][5] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net634),
    .Q(\cpuregs[27][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net634),
    .Q(\cpuregs[27][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][8]$_DFFE_PP_  (.D(net660),
    .DE(net634),
    .Q(\cpuregs[27][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[27][9]$_DFFE_PP_  (.D(net613),
    .DE(net634),
    .Q(\cpuregs[27][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net629),
    .Q(\cpuregs[28][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][10]$_DFFE_PP_  (.D(net654),
    .DE(net629),
    .Q(\cpuregs[28][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][11]$_DFFE_PP_  (.D(net614),
    .DE(net629),
    .Q(\cpuregs[28][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][12]$_DFFE_PP_  (.D(net655),
    .DE(net629),
    .Q(\cpuregs[28][12] ),
    .CLK(clknet_leaf_2_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][13]$_DFFE_PP_  (.D(net615),
    .DE(net629),
    .Q(\cpuregs[28][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][14]$_DFFE_PP_  (.D(net616),
    .DE(net629),
    .Q(\cpuregs[28][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net629),
    .Q(\cpuregs[28][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net629),
    .Q(\cpuregs[28][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net629),
    .Q(\cpuregs[28][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][18]$_DFFE_PP_  (.D(net617),
    .DE(net629),
    .Q(\cpuregs[28][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][19]$_DFFE_PP_  (.D(net606),
    .DE(net629),
    .Q(\cpuregs[28][19] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0852_),
    .Q(\cpuregs[28][1] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][20]$_DFFE_PP_  (.D(net610),
    .DE(net629),
    .Q(\cpuregs[28][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][21]$_DFFE_PP_  (.D(net607),
    .DE(net629),
    .Q(\cpuregs[28][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][22]$_DFFE_PP_  (.D(net608),
    .DE(net629),
    .Q(\cpuregs[28][22] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][23]$_DFFE_PP_  (.D(net603),
    .DE(net629),
    .Q(\cpuregs[28][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][24]$_DFFE_PP_  (.D(net600),
    .DE(net629),
    .Q(\cpuregs[28][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][25]$_DFFE_PP_  (.D(net604),
    .DE(net629),
    .Q(\cpuregs[28][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][26]$_DFFE_PP_  (.D(net605),
    .DE(net629),
    .Q(\cpuregs[28][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][27]$_DFFE_PP_  (.D(net601),
    .DE(net629),
    .Q(\cpuregs[28][27] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][28]$_DFFE_PP_  (.D(net602),
    .DE(net629),
    .Q(\cpuregs[28][28] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net629),
    .Q(\cpuregs[28][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][2]$_DFFE_PP_  (.D(net672),
    .DE(net629),
    .Q(\cpuregs[28][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net629),
    .Q(\cpuregs[28][30] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][31]$_DFFE_PP_  (.D(net598),
    .DE(net629),
    .Q(\cpuregs[28][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][3]$_DFFE_PP_  (.D(net673),
    .DE(net629),
    .Q(\cpuregs[28][3] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][4]$_DFFE_PP_  (.D(net659),
    .DE(net629),
    .Q(\cpuregs[28][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][5]$_DFFE_PP_  (.D(net674),
    .DE(net629),
    .Q(\cpuregs[28][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net629),
    .Q(\cpuregs[28][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net629),
    .Q(\cpuregs[28][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][8]$_DFFE_PP_  (.D(net660),
    .DE(net629),
    .Q(\cpuregs[28][8] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[28][9]$_DFFE_PP_  (.D(net613),
    .DE(net629),
    .Q(\cpuregs[28][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net625),
    .Q(\cpuregs[29][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][10]$_DFFE_PP_  (.D(net654),
    .DE(net625),
    .Q(\cpuregs[29][10] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][11]$_DFFE_PP_  (.D(net614),
    .DE(net625),
    .Q(\cpuregs[29][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][12]$_DFFE_PP_  (.D(net655),
    .DE(net625),
    .Q(\cpuregs[29][12] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][13]$_DFFE_PP_  (.D(net615),
    .DE(net625),
    .Q(\cpuregs[29][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][14]$_DFFE_PP_  (.D(net616),
    .DE(net625),
    .Q(\cpuregs[29][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net625),
    .Q(\cpuregs[29][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net625),
    .Q(\cpuregs[29][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net625),
    .Q(\cpuregs[29][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][18]$_DFFE_PP_  (.D(net617),
    .DE(net625),
    .Q(\cpuregs[29][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][19]$_DFFE_PP_  (.D(net606),
    .DE(net625),
    .Q(\cpuregs[29][19] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0853_),
    .Q(\cpuregs[29][1] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][20]$_DFFE_PP_  (.D(net610),
    .DE(net625),
    .Q(\cpuregs[29][20] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][21]$_DFFE_PP_  (.D(net607),
    .DE(net625),
    .Q(\cpuregs[29][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][22]$_DFFE_PP_  (.D(net608),
    .DE(net625),
    .Q(\cpuregs[29][22] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][23]$_DFFE_PP_  (.D(net603),
    .DE(net625),
    .Q(\cpuregs[29][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][24]$_DFFE_PP_  (.D(net600),
    .DE(net625),
    .Q(\cpuregs[29][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][25]$_DFFE_PP_  (.D(net604),
    .DE(net625),
    .Q(\cpuregs[29][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][26]$_DFFE_PP_  (.D(net605),
    .DE(net625),
    .Q(\cpuregs[29][26] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][27]$_DFFE_PP_  (.D(net601),
    .DE(net625),
    .Q(\cpuregs[29][27] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][28]$_DFFE_PP_  (.D(net602),
    .DE(net625),
    .Q(\cpuregs[29][28] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net625),
    .Q(\cpuregs[29][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][2]$_DFFE_PP_  (.D(net672),
    .DE(net625),
    .Q(\cpuregs[29][2] ),
    .CLK(clknet_leaf_5_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net625),
    .Q(\cpuregs[29][30] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][31]$_DFFE_PP_  (.D(net598),
    .DE(net625),
    .Q(\cpuregs[29][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][3]$_DFFE_PP_  (.D(net673),
    .DE(net625),
    .Q(\cpuregs[29][3] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][4]$_DFFE_PP_  (.D(net659),
    .DE(net625),
    .Q(\cpuregs[29][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][5]$_DFFE_PP_  (.D(net674),
    .DE(net625),
    .Q(\cpuregs[29][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net625),
    .Q(\cpuregs[29][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net625),
    .Q(\cpuregs[29][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][8]$_DFFE_PP_  (.D(net660),
    .DE(net625),
    .Q(\cpuregs[29][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[29][9]$_DFFE_PP_  (.D(net613),
    .DE(net625),
    .Q(\cpuregs[29][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net624),
    .Q(\cpuregs[2][0] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][10]$_DFFE_PP_  (.D(net654),
    .DE(net624),
    .Q(\cpuregs[2][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][11]$_DFFE_PP_  (.D(net614),
    .DE(net624),
    .Q(\cpuregs[2][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][12]$_DFFE_PP_  (.D(net655),
    .DE(net624),
    .Q(\cpuregs[2][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][13]$_DFFE_PP_  (.D(net615),
    .DE(net624),
    .Q(\cpuregs[2][13] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][14]$_DFFE_PP_  (.D(net616),
    .DE(net624),
    .Q(\cpuregs[2][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net624),
    .Q(\cpuregs[2][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net624),
    .Q(\cpuregs[2][16] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net624),
    .Q(\cpuregs[2][17] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][18]$_DFFE_PP_  (.D(net617),
    .DE(net624),
    .Q(\cpuregs[2][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][19]$_DFFE_PP_  (.D(net606),
    .DE(net624),
    .Q(\cpuregs[2][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net624),
    .Q(\cpuregs[2][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][20]$_DFFE_PP_  (.D(net610),
    .DE(net624),
    .Q(\cpuregs[2][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][21]$_DFFE_PP_  (.D(net607),
    .DE(net624),
    .Q(\cpuregs[2][21] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][22]$_DFFE_PP_  (.D(net608),
    .DE(net624),
    .Q(\cpuregs[2][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][23]$_DFFE_PP_  (.D(net603),
    .DE(net624),
    .Q(\cpuregs[2][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][24]$_DFFE_PP_  (.D(net600),
    .DE(net624),
    .Q(\cpuregs[2][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][25]$_DFFE_PP_  (.D(net604),
    .DE(net624),
    .Q(\cpuregs[2][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][26]$_DFFE_PP_  (.D(net605),
    .DE(net624),
    .Q(\cpuregs[2][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][27]$_DFFE_PP_  (.D(net601),
    .DE(net624),
    .Q(\cpuregs[2][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][28]$_DFFE_PP_  (.D(net602),
    .DE(net624),
    .Q(\cpuregs[2][28] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net624),
    .Q(\cpuregs[2][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][2]$_DFFE_PP_  (.D(net672),
    .DE(net624),
    .Q(\cpuregs[2][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net624),
    .Q(\cpuregs[2][30] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][31]$_DFFE_PP_  (.D(net598),
    .DE(net624),
    .Q(\cpuregs[2][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][3]$_DFFE_PP_  (.D(net673),
    .DE(net624),
    .Q(\cpuregs[2][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][4]$_DFFE_PP_  (.D(net659),
    .DE(net624),
    .Q(\cpuregs[2][4] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][5]$_DFFE_PP_  (.D(net674),
    .DE(net624),
    .Q(\cpuregs[2][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net624),
    .Q(\cpuregs[2][6] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net624),
    .Q(\cpuregs[2][7] ),
    .CLK(clknet_leaf_50_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][8]$_DFFE_PP_  (.D(net660),
    .DE(net624),
    .Q(\cpuregs[2][8] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[2][9]$_DFFE_PP_  (.D(net613),
    .DE(net624),
    .Q(\cpuregs[2][9] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net623),
    .Q(\cpuregs[30][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][10]$_DFFE_PP_  (.D(net654),
    .DE(net623),
    .Q(\cpuregs[30][10] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][11]$_DFFE_PP_  (.D(net614),
    .DE(net623),
    .Q(\cpuregs[30][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][12]$_DFFE_PP_  (.D(net655),
    .DE(net623),
    .Q(\cpuregs[30][12] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][13]$_DFFE_PP_  (.D(net615),
    .DE(net623),
    .Q(\cpuregs[30][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][14]$_DFFE_PP_  (.D(net616),
    .DE(net623),
    .Q(\cpuregs[30][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net623),
    .Q(\cpuregs[30][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net623),
    .Q(\cpuregs[30][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net623),
    .Q(\cpuregs[30][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][18]$_DFFE_PP_  (.D(net617),
    .DE(net623),
    .Q(\cpuregs[30][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][19]$_DFFE_PP_  (.D(net606),
    .DE(net623),
    .Q(\cpuregs[30][19] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0855_),
    .Q(\cpuregs[30][1] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][20]$_DFFE_PP_  (.D(net610),
    .DE(net623),
    .Q(\cpuregs[30][20] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][21]$_DFFE_PP_  (.D(net607),
    .DE(net623),
    .Q(\cpuregs[30][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][22]$_DFFE_PP_  (.D(net608),
    .DE(net623),
    .Q(\cpuregs[30][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][23]$_DFFE_PP_  (.D(net603),
    .DE(net623),
    .Q(\cpuregs[30][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][24]$_DFFE_PP_  (.D(net600),
    .DE(net623),
    .Q(\cpuregs[30][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][25]$_DFFE_PP_  (.D(net604),
    .DE(net623),
    .Q(\cpuregs[30][25] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][26]$_DFFE_PP_  (.D(net605),
    .DE(net623),
    .Q(\cpuregs[30][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][27]$_DFFE_PP_  (.D(net601),
    .DE(net623),
    .Q(\cpuregs[30][27] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][28]$_DFFE_PP_  (.D(net602),
    .DE(net623),
    .Q(\cpuregs[30][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net623),
    .Q(\cpuregs[30][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][2]$_DFFE_PP_  (.D(net672),
    .DE(net623),
    .Q(\cpuregs[30][2] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net623),
    .Q(\cpuregs[30][30] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][31]$_DFFE_PP_  (.D(net598),
    .DE(net623),
    .Q(\cpuregs[30][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][3]$_DFFE_PP_  (.D(net673),
    .DE(net623),
    .Q(\cpuregs[30][3] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][4]$_DFFE_PP_  (.D(net659),
    .DE(net623),
    .Q(\cpuregs[30][4] ),
    .CLK(clknet_leaf_145_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][5]$_DFFE_PP_  (.D(net674),
    .DE(net623),
    .Q(\cpuregs[30][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net623),
    .Q(\cpuregs[30][6] ),
    .CLK(clknet_leaf_41_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net623),
    .Q(\cpuregs[30][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][8]$_DFFE_PP_  (.D(net660),
    .DE(net623),
    .Q(\cpuregs[30][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[30][9]$_DFFE_PP_  (.D(net613),
    .DE(net623),
    .Q(\cpuregs[30][9] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net645),
    .Q(\cpuregs[31][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][10]$_DFFE_PP_  (.D(net654),
    .DE(net645),
    .Q(\cpuregs[31][10] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][11]$_DFFE_PP_  (.D(net614),
    .DE(net645),
    .Q(\cpuregs[31][11] ),
    .CLK(clknet_leaf_9_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][12]$_DFFE_PP_  (.D(net655),
    .DE(net645),
    .Q(\cpuregs[31][12] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][13]$_DFFE_PP_  (.D(net615),
    .DE(net645),
    .Q(\cpuregs[31][13] ),
    .CLK(clknet_leaf_6_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][14]$_DFFE_PP_  (.D(net616),
    .DE(net645),
    .Q(\cpuregs[31][14] ),
    .CLK(clknet_leaf_38_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net645),
    .Q(\cpuregs[31][15] ),
    .CLK(clknet_leaf_76_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net645),
    .Q(\cpuregs[31][16] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net645),
    .Q(\cpuregs[31][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][18]$_DFFE_PP_  (.D(net617),
    .DE(net645),
    .Q(\cpuregs[31][18] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][19]$_DFFE_PP_  (.D(net606),
    .DE(net645),
    .Q(\cpuregs[31][19] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0856_),
    .Q(\cpuregs[31][1] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][20]$_DFFE_PP_  (.D(net610),
    .DE(net645),
    .Q(\cpuregs[31][20] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][21]$_DFFE_PP_  (.D(net607),
    .DE(net645),
    .Q(\cpuregs[31][21] ),
    .CLK(clknet_leaf_40_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][22]$_DFFE_PP_  (.D(net608),
    .DE(net645),
    .Q(\cpuregs[31][22] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][23]$_DFFE_PP_  (.D(net603),
    .DE(net645),
    .Q(\cpuregs[31][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][24]$_DFFE_PP_  (.D(net600),
    .DE(net645),
    .Q(\cpuregs[31][24] ),
    .CLK(clknet_leaf_58_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][25]$_DFFE_PP_  (.D(net604),
    .DE(net645),
    .Q(\cpuregs[31][25] ),
    .CLK(clknet_leaf_65_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][26]$_DFFE_PP_  (.D(net605),
    .DE(net645),
    .Q(\cpuregs[31][26] ),
    .CLK(clknet_leaf_68_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][27]$_DFFE_PP_  (.D(net601),
    .DE(net645),
    .Q(\cpuregs[31][27] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][28]$_DFFE_PP_  (.D(net602),
    .DE(net645),
    .Q(\cpuregs[31][28] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net645),
    .Q(\cpuregs[31][29] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][2]$_DFFE_PP_  (.D(net672),
    .DE(net645),
    .Q(\cpuregs[31][2] ),
    .CLK(clknet_leaf_0_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net645),
    .Q(\cpuregs[31][30] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][31]$_DFFE_PP_  (.D(net598),
    .DE(net645),
    .Q(\cpuregs[31][31] ),
    .CLK(clknet_leaf_144_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][3]$_DFFE_PP_  (.D(net673),
    .DE(net645),
    .Q(\cpuregs[31][3] ),
    .CLK(clknet_leaf_16_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][4]$_DFFE_PP_  (.D(net659),
    .DE(net645),
    .Q(\cpuregs[31][4] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][5]$_DFFE_PP_  (.D(net674),
    .DE(net645),
    .Q(\cpuregs[31][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net645),
    .Q(\cpuregs[31][6] ),
    .CLK(clknet_leaf_48_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net645),
    .Q(\cpuregs[31][7] ),
    .CLK(clknet_leaf_49_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][8]$_DFFE_PP_  (.D(net660),
    .DE(net645),
    .Q(\cpuregs[31][8] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[31][9]$_DFFE_PP_  (.D(net613),
    .DE(net645),
    .Q(\cpuregs[31][9] ),
    .CLK(clknet_leaf_160_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net626),
    .Q(\cpuregs[3][0] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][10]$_DFFE_PP_  (.D(net654),
    .DE(net626),
    .Q(\cpuregs[3][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][11]$_DFFE_PP_  (.D(net614),
    .DE(net626),
    .Q(\cpuregs[3][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][12]$_DFFE_PP_  (.D(net655),
    .DE(net626),
    .Q(\cpuregs[3][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][13]$_DFFE_PP_  (.D(net615),
    .DE(net626),
    .Q(\cpuregs[3][13] ),
    .CLK(clknet_leaf_15_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][14]$_DFFE_PP_  (.D(net616),
    .DE(net626),
    .Q(\cpuregs[3][14] ),
    .CLK(clknet_leaf_35_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net626),
    .Q(\cpuregs[3][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net626),
    .Q(\cpuregs[3][16] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net626),
    .Q(\cpuregs[3][17] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][18]$_DFFE_PP_  (.D(net617),
    .DE(net626),
    .Q(\cpuregs[3][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][19]$_DFFE_PP_  (.D(net606),
    .DE(net626),
    .Q(\cpuregs[3][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net626),
    .Q(\cpuregs[3][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][20]$_DFFE_PP_  (.D(net610),
    .DE(net626),
    .Q(\cpuregs[3][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][21]$_DFFE_PP_  (.D(net607),
    .DE(net626),
    .Q(\cpuregs[3][21] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][22]$_DFFE_PP_  (.D(net608),
    .DE(net626),
    .Q(\cpuregs[3][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][23]$_DFFE_PP_  (.D(net603),
    .DE(net626),
    .Q(\cpuregs[3][23] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][24]$_DFFE_PP_  (.D(net600),
    .DE(net626),
    .Q(\cpuregs[3][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][25]$_DFFE_PP_  (.D(net604),
    .DE(net626),
    .Q(\cpuregs[3][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][26]$_DFFE_PP_  (.D(net605),
    .DE(net626),
    .Q(\cpuregs[3][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][27]$_DFFE_PP_  (.D(net601),
    .DE(net626),
    .Q(\cpuregs[3][27] ),
    .CLK(clknet_leaf_70_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][28]$_DFFE_PP_  (.D(net602),
    .DE(net626),
    .Q(\cpuregs[3][28] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net626),
    .Q(\cpuregs[3][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][2]$_DFFE_PP_  (.D(net672),
    .DE(net626),
    .Q(\cpuregs[3][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net626),
    .Q(\cpuregs[3][30] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][31]$_DFFE_PP_  (.D(net598),
    .DE(net626),
    .Q(\cpuregs[3][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][3]$_DFFE_PP_  (.D(net673),
    .DE(net626),
    .Q(\cpuregs[3][3] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][4]$_DFFE_PP_  (.D(net659),
    .DE(net626),
    .Q(\cpuregs[3][4] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][5]$_DFFE_PP_  (.D(net674),
    .DE(net626),
    .Q(\cpuregs[3][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net626),
    .Q(\cpuregs[3][6] ),
    .CLK(clknet_leaf_47_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net626),
    .Q(\cpuregs[3][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][8]$_DFFE_PP_  (.D(net660),
    .DE(net626),
    .Q(\cpuregs[3][8] ),
    .CLK(clknet_leaf_28_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[3][9]$_DFFE_PP_  (.D(net613),
    .DE(net626),
    .Q(\cpuregs[3][9] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net627),
    .Q(\cpuregs[4][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][10]$_DFFE_PP_  (.D(net654),
    .DE(net627),
    .Q(\cpuregs[4][10] ),
    .CLK(clknet_leaf_19_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][11]$_DFFE_PP_  (.D(net614),
    .DE(net627),
    .Q(\cpuregs[4][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][12]$_DFFE_PP_  (.D(net655),
    .DE(net627),
    .Q(\cpuregs[4][12] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][13]$_DFFE_PP_  (.D(net615),
    .DE(net627),
    .Q(\cpuregs[4][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][14]$_DFFE_PP_  (.D(net616),
    .DE(net627),
    .Q(\cpuregs[4][14] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net627),
    .Q(\cpuregs[4][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net627),
    .Q(\cpuregs[4][16] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net627),
    .Q(\cpuregs[4][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][18]$_DFFE_PP_  (.D(net617),
    .DE(net627),
    .Q(\cpuregs[4][18] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][19]$_DFFE_PP_  (.D(net606),
    .DE(net627),
    .Q(\cpuregs[4][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net627),
    .Q(\cpuregs[4][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][20]$_DFFE_PP_  (.D(net610),
    .DE(net627),
    .Q(\cpuregs[4][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][21]$_DFFE_PP_  (.D(net607),
    .DE(net627),
    .Q(\cpuregs[4][21] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][22]$_DFFE_PP_  (.D(net608),
    .DE(net627),
    .Q(\cpuregs[4][22] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][23]$_DFFE_PP_  (.D(net603),
    .DE(net627),
    .Q(\cpuregs[4][23] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][24]$_DFFE_PP_  (.D(net600),
    .DE(net627),
    .Q(\cpuregs[4][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][25]$_DFFE_PP_  (.D(net604),
    .DE(net627),
    .Q(\cpuregs[4][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][26]$_DFFE_PP_  (.D(net605),
    .DE(net627),
    .Q(\cpuregs[4][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][27]$_DFFE_PP_  (.D(net601),
    .DE(net627),
    .Q(\cpuregs[4][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][28]$_DFFE_PP_  (.D(net602),
    .DE(net627),
    .Q(\cpuregs[4][28] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net627),
    .Q(\cpuregs[4][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][2]$_DFFE_PP_  (.D(net672),
    .DE(net627),
    .Q(\cpuregs[4][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net627),
    .Q(\cpuregs[4][30] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][31]$_DFFE_PP_  (.D(net598),
    .DE(net627),
    .Q(\cpuregs[4][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][3]$_DFFE_PP_  (.D(net673),
    .DE(net627),
    .Q(\cpuregs[4][3] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][4]$_DFFE_PP_  (.D(net659),
    .DE(net627),
    .Q(\cpuregs[4][4] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][5]$_DFFE_PP_  (.D(net674),
    .DE(net627),
    .Q(\cpuregs[4][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net627),
    .Q(\cpuregs[4][6] ),
    .CLK(clknet_leaf_45_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net627),
    .Q(\cpuregs[4][7] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][8]$_DFFE_PP_  (.D(net660),
    .DE(net627),
    .Q(\cpuregs[4][8] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[4][9]$_DFFE_PP_  (.D(net613),
    .DE(net627),
    .Q(\cpuregs[4][9] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net628),
    .Q(\cpuregs[5][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][10]$_DFFE_PP_  (.D(net654),
    .DE(net628),
    .Q(\cpuregs[5][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][11]$_DFFE_PP_  (.D(net614),
    .DE(net628),
    .Q(\cpuregs[5][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][12]$_DFFE_PP_  (.D(net655),
    .DE(net628),
    .Q(\cpuregs[5][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][13]$_DFFE_PP_  (.D(net615),
    .DE(net628),
    .Q(\cpuregs[5][13] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][14]$_DFFE_PP_  (.D(net616),
    .DE(net628),
    .Q(\cpuregs[5][14] ),
    .CLK(clknet_leaf_32_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net628),
    .Q(\cpuregs[5][15] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net628),
    .Q(\cpuregs[5][16] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net628),
    .Q(\cpuregs[5][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][18]$_DFFE_PP_  (.D(net617),
    .DE(net628),
    .Q(\cpuregs[5][18] ),
    .CLK(clknet_leaf_34_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][19]$_DFFE_PP_  (.D(net606),
    .DE(net628),
    .Q(\cpuregs[5][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net628),
    .Q(\cpuregs[5][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][20]$_DFFE_PP_  (.D(net610),
    .DE(net628),
    .Q(\cpuregs[5][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][21]$_DFFE_PP_  (.D(net607),
    .DE(net628),
    .Q(\cpuregs[5][21] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][22]$_DFFE_PP_  (.D(net608),
    .DE(net628),
    .Q(\cpuregs[5][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][23]$_DFFE_PP_  (.D(net603),
    .DE(net628),
    .Q(\cpuregs[5][23] ),
    .CLK(clknet_leaf_54_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][24]$_DFFE_PP_  (.D(net600),
    .DE(net628),
    .Q(\cpuregs[5][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][25]$_DFFE_PP_  (.D(net604),
    .DE(net628),
    .Q(\cpuregs[5][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][26]$_DFFE_PP_  (.D(net605),
    .DE(net628),
    .Q(\cpuregs[5][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][27]$_DFFE_PP_  (.D(net601),
    .DE(net628),
    .Q(\cpuregs[5][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][28]$_DFFE_PP_  (.D(net602),
    .DE(net628),
    .Q(\cpuregs[5][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net628),
    .Q(\cpuregs[5][29] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][2]$_DFFE_PP_  (.D(net672),
    .DE(net628),
    .Q(\cpuregs[5][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net628),
    .Q(\cpuregs[5][30] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][31]$_DFFE_PP_  (.D(net598),
    .DE(net628),
    .Q(\cpuregs[5][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][3]$_DFFE_PP_  (.D(net673),
    .DE(net628),
    .Q(\cpuregs[5][3] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][4]$_DFFE_PP_  (.D(net659),
    .DE(net628),
    .Q(\cpuregs[5][4] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][5]$_DFFE_PP_  (.D(net674),
    .DE(net628),
    .Q(\cpuregs[5][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net628),
    .Q(\cpuregs[5][6] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net628),
    .Q(\cpuregs[5][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][8]$_DFFE_PP_  (.D(net660),
    .DE(net628),
    .Q(\cpuregs[5][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[5][9]$_DFFE_PP_  (.D(net613),
    .DE(net628),
    .Q(\cpuregs[5][9] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net630),
    .Q(\cpuregs[6][0] ),
    .CLK(clknet_leaf_22_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][10]$_DFFE_PP_  (.D(net654),
    .DE(net630),
    .Q(\cpuregs[6][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][11]$_DFFE_PP_  (.D(net614),
    .DE(net630),
    .Q(\cpuregs[6][11] ),
    .CLK(clknet_leaf_8_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][12]$_DFFE_PP_  (.D(net655),
    .DE(net630),
    .Q(\cpuregs[6][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][13]$_DFFE_PP_  (.D(net615),
    .DE(net630),
    .Q(\cpuregs[6][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][14]$_DFFE_PP_  (.D(net616),
    .DE(net630),
    .Q(\cpuregs[6][14] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net630),
    .Q(\cpuregs[6][15] ),
    .CLK(clknet_leaf_72_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net630),
    .Q(\cpuregs[6][16] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net630),
    .Q(\cpuregs[6][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][18]$_DFFE_PP_  (.D(net617),
    .DE(net630),
    .Q(\cpuregs[6][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][19]$_DFFE_PP_  (.D(net606),
    .DE(net630),
    .Q(\cpuregs[6][19] ),
    .CLK(clknet_leaf_26_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net630),
    .Q(\cpuregs[6][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][20]$_DFFE_PP_  (.D(net610),
    .DE(net630),
    .Q(\cpuregs[6][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][21]$_DFFE_PP_  (.D(net607),
    .DE(net630),
    .Q(\cpuregs[6][21] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][22]$_DFFE_PP_  (.D(net608),
    .DE(net630),
    .Q(\cpuregs[6][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][23]$_DFFE_PP_  (.D(net603),
    .DE(net630),
    .Q(\cpuregs[6][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][24]$_DFFE_PP_  (.D(net600),
    .DE(net630),
    .Q(\cpuregs[6][24] ),
    .CLK(clknet_leaf_61_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][25]$_DFFE_PP_  (.D(net604),
    .DE(net630),
    .Q(\cpuregs[6][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][26]$_DFFE_PP_  (.D(net605),
    .DE(net630),
    .Q(\cpuregs[6][26] ),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][27]$_DFFE_PP_  (.D(net601),
    .DE(net630),
    .Q(\cpuregs[6][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][28]$_DFFE_PP_  (.D(net602),
    .DE(net630),
    .Q(\cpuregs[6][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net630),
    .Q(\cpuregs[6][29] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][2]$_DFFE_PP_  (.D(net672),
    .DE(net630),
    .Q(\cpuregs[6][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net630),
    .Q(\cpuregs[6][30] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][31]$_DFFE_PP_  (.D(net598),
    .DE(net630),
    .Q(\cpuregs[6][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][3]$_DFFE_PP_  (.D(net673),
    .DE(net630),
    .Q(\cpuregs[6][3] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][4]$_DFFE_PP_  (.D(net659),
    .DE(net630),
    .Q(\cpuregs[6][4] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][5]$_DFFE_PP_  (.D(net674),
    .DE(net630),
    .Q(\cpuregs[6][5] ),
    .CLK(clknet_leaf_37_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net630),
    .Q(\cpuregs[6][6] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net630),
    .Q(\cpuregs[6][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][8]$_DFFE_PP_  (.D(net660),
    .DE(net630),
    .Q(\cpuregs[6][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[6][9]$_DFFE_PP_  (.D(net613),
    .DE(net630),
    .Q(\cpuregs[6][9] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net631),
    .Q(\cpuregs[7][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][10]$_DFFE_PP_  (.D(net654),
    .DE(net631),
    .Q(\cpuregs[7][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][11]$_DFFE_PP_  (.D(net614),
    .DE(net631),
    .Q(\cpuregs[7][11] ),
    .CLK(clknet_leaf_10_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][12]$_DFFE_PP_  (.D(net655),
    .DE(net631),
    .Q(\cpuregs[7][12] ),
    .CLK(clknet_leaf_157_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][13]$_DFFE_PP_  (.D(net615),
    .DE(net631),
    .Q(\cpuregs[7][13] ),
    .CLK(clknet_leaf_7_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][14]$_DFFE_PP_  (.D(net616),
    .DE(net631),
    .Q(\cpuregs[7][14] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net631),
    .Q(\cpuregs[7][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net631),
    .Q(\cpuregs[7][16] ),
    .CLK(clknet_leaf_29_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net631),
    .Q(\cpuregs[7][17] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][18]$_DFFE_PP_  (.D(net617),
    .DE(net631),
    .Q(\cpuregs[7][18] ),
    .CLK(clknet_leaf_13_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][19]$_DFFE_PP_  (.D(net606),
    .DE(net631),
    .Q(\cpuregs[7][19] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(net631),
    .Q(\cpuregs[7][1] ),
    .CLK(clknet_leaf_150_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][20]$_DFFE_PP_  (.D(net610),
    .DE(net631),
    .Q(\cpuregs[7][20] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][21]$_DFFE_PP_  (.D(net607),
    .DE(net631),
    .Q(\cpuregs[7][21] ),
    .CLK(clknet_leaf_39_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][22]$_DFFE_PP_  (.D(net608),
    .DE(net631),
    .Q(\cpuregs[7][22] ),
    .CLK(clknet_leaf_52_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][23]$_DFFE_PP_  (.D(net603),
    .DE(net631),
    .Q(\cpuregs[7][23] ),
    .CLK(clknet_leaf_53_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][24]$_DFFE_PP_  (.D(net600),
    .DE(net631),
    .Q(\cpuregs[7][24] ),
    .CLK(clknet_leaf_60_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][25]$_DFFE_PP_  (.D(net604),
    .DE(net631),
    .Q(\cpuregs[7][25] ),
    .CLK(clknet_leaf_64_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][26]$_DFFE_PP_  (.D(net605),
    .DE(net631),
    .Q(\cpuregs[7][26] ),
    .CLK(clknet_leaf_62_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][27]$_DFFE_PP_  (.D(net601),
    .DE(net631),
    .Q(\cpuregs[7][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][28]$_DFFE_PP_  (.D(net602),
    .DE(net631),
    .Q(\cpuregs[7][28] ),
    .CLK(clknet_leaf_67_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net631),
    .Q(\cpuregs[7][29] ),
    .CLK(clknet_leaf_73_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][2]$_DFFE_PP_  (.D(net672),
    .DE(net631),
    .Q(\cpuregs[7][2] ),
    .CLK(clknet_leaf_159_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(net631),
    .Q(\cpuregs[7][30] ),
    .CLK(clknet_leaf_151_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][31]$_DFFE_PP_  (.D(net598),
    .DE(net631),
    .Q(\cpuregs[7][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][3]$_DFFE_PP_  (.D(net673),
    .DE(net631),
    .Q(\cpuregs[7][3] ),
    .CLK(clknet_leaf_158_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][4]$_DFFE_PP_  (.D(net659),
    .DE(net631),
    .Q(\cpuregs[7][4] ),
    .CLK(clknet_leaf_152_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][5]$_DFFE_PP_  (.D(net674),
    .DE(net631),
    .Q(\cpuregs[7][5] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net631),
    .Q(\cpuregs[7][6] ),
    .CLK(clknet_leaf_44_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net631),
    .Q(\cpuregs[7][7] ),
    .CLK(clknet_leaf_51_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][8]$_DFFE_PP_  (.D(net660),
    .DE(net631),
    .Q(\cpuregs[7][8] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[7][9]$_DFFE_PP_  (.D(net613),
    .DE(net631),
    .Q(\cpuregs[7][9] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net632),
    .Q(\cpuregs[8][0] ),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][10]$_DFFE_PP_  (.D(net654),
    .DE(net632),
    .Q(\cpuregs[8][10] ),
    .CLK(clknet_leaf_18_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][11]$_DFFE_PP_  (.D(net614),
    .DE(net632),
    .Q(\cpuregs[8][11] ),
    .CLK(clknet_leaf_12_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][12]$_DFFE_PP_  (.D(net655),
    .DE(_0862_),
    .Q(\cpuregs[8][12] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][13]$_DFFE_PP_  (.D(net615),
    .DE(net632),
    .Q(\cpuregs[8][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][14]$_DFFE_PP_  (.D(net616),
    .DE(net632),
    .Q(\cpuregs[8][14] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net632),
    .Q(\cpuregs[8][15] ),
    .CLK(clknet_leaf_77_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net632),
    .Q(\cpuregs[8][16] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net632),
    .Q(\cpuregs[8][17] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][18]$_DFFE_PP_  (.D(net617),
    .DE(net632),
    .Q(\cpuregs[8][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][19]$_DFFE_PP_  (.D(net606),
    .DE(net632),
    .Q(\cpuregs[8][19] ),
    .CLK(clknet_leaf_21_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0862_),
    .Q(\cpuregs[8][1] ),
    .CLK(clknet_leaf_149_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][20]$_DFFE_PP_  (.D(net610),
    .DE(net632),
    .Q(\cpuregs[8][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][21]$_DFFE_PP_  (.D(net607),
    .DE(net632),
    .Q(\cpuregs[8][21] ),
    .CLK(clknet_leaf_31_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][22]$_DFFE_PP_  (.D(net608),
    .DE(net632),
    .Q(\cpuregs[8][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][23]$_DFFE_PP_  (.D(net603),
    .DE(net632),
    .Q(\cpuregs[8][23] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][24]$_DFFE_PP_  (.D(net600),
    .DE(net632),
    .Q(\cpuregs[8][24] ),
    .CLK(clknet_leaf_69_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][25]$_DFFE_PP_  (.D(net604),
    .DE(net632),
    .Q(\cpuregs[8][25] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][26]$_DFFE_PP_  (.D(net605),
    .DE(net632),
    .Q(\cpuregs[8][26] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][27]$_DFFE_PP_  (.D(net601),
    .DE(net632),
    .Q(\cpuregs[8][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][28]$_DFFE_PP_  (.D(net602),
    .DE(net632),
    .Q(\cpuregs[8][28] ),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net632),
    .Q(\cpuregs[8][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][2]$_DFFE_PP_  (.D(net672),
    .DE(_0862_),
    .Q(\cpuregs[8][2] ),
    .CLK(clknet_leaf_155_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0862_),
    .Q(\cpuregs[8][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][31]$_DFFE_PP_  (.D(net598),
    .DE(_0862_),
    .Q(\cpuregs[8][31] ),
    .CLK(clknet_leaf_143_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][3]$_DFFE_PP_  (.D(net673),
    .DE(_0862_),
    .Q(\cpuregs[8][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][4]$_DFFE_PP_  (.D(net659),
    .DE(_0862_),
    .Q(\cpuregs[8][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][5]$_DFFE_PP_  (.D(net674),
    .DE(net632),
    .Q(\cpuregs[8][5] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net632),
    .Q(\cpuregs[8][6] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net632),
    .Q(\cpuregs[8][7] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][8]$_DFFE_PP_  (.D(net660),
    .DE(net632),
    .Q(\cpuregs[8][8] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[8][9]$_DFFE_PP_  (.D(net613),
    .DE(net632),
    .Q(\cpuregs[8][9] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][0]$_DFFE_PP_  (.D(\cpuregs_wrdata[0] ),
    .DE(net633),
    .Q(\cpuregs[9][0] ),
    .CLK(clknet_leaf_23_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][10]$_DFFE_PP_  (.D(net654),
    .DE(net633),
    .Q(\cpuregs[9][10] ),
    .CLK(clknet_leaf_17_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][11]$_DFFE_PP_  (.D(net614),
    .DE(net633),
    .Q(\cpuregs[9][11] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][12]$_DFFE_PP_  (.D(net655),
    .DE(_0863_),
    .Q(\cpuregs[9][12] ),
    .CLK(clknet_leaf_156_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][13]$_DFFE_PP_  (.D(net615),
    .DE(net633),
    .Q(\cpuregs[9][13] ),
    .CLK(clknet_leaf_4_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][14]$_DFFE_PP_  (.D(net616),
    .DE(net633),
    .Q(\cpuregs[9][14] ),
    .CLK(clknet_leaf_36_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][15]$_DFFE_PP_  (.D(\cpuregs_wrdata[15] ),
    .DE(net633),
    .Q(\cpuregs[9][15] ),
    .CLK(clknet_leaf_75_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][16]$_DFFE_PP_  (.D(\cpuregs_wrdata[16] ),
    .DE(net633),
    .Q(\cpuregs[9][16] ),
    .CLK(clknet_leaf_33_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][17]$_DFFE_PP_  (.D(\cpuregs_wrdata[17] ),
    .DE(net633),
    .Q(\cpuregs[9][17] ),
    .CLK(clknet_leaf_24_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][18]$_DFFE_PP_  (.D(net617),
    .DE(net633),
    .Q(\cpuregs[9][18] ),
    .CLK(clknet_leaf_14_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][19]$_DFFE_PP_  (.D(net606),
    .DE(net633),
    .Q(\cpuregs[9][19] ),
    .CLK(clknet_leaf_20_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][1]$_DFFE_PP_  (.D(\cpuregs_wrdata[1] ),
    .DE(_0863_),
    .Q(\cpuregs[9][1] ),
    .CLK(clknet_leaf_148_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][20]$_DFFE_PP_  (.D(net610),
    .DE(net633),
    .Q(\cpuregs[9][20] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][21]$_DFFE_PP_  (.D(net607),
    .DE(net633),
    .Q(\cpuregs[9][21] ),
    .CLK(clknet_leaf_43_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][22]$_DFFE_PP_  (.D(net608),
    .DE(net633),
    .Q(\cpuregs[9][22] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][23]$_DFFE_PP_  (.D(net603),
    .DE(net633),
    .Q(\cpuregs[9][23] ),
    .CLK(clknet_leaf_56_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][24]$_DFFE_PP_  (.D(net600),
    .DE(net633),
    .Q(\cpuregs[9][24] ),
    .CLK(clknet_leaf_57_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][25]$_DFFE_PP_  (.D(net604),
    .DE(net633),
    .Q(\cpuregs[9][25] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][26]$_DFFE_PP_  (.D(net605),
    .DE(net633),
    .Q(\cpuregs[9][26] ),
    .CLK(clknet_leaf_66_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][27]$_DFFE_PP_  (.D(net601),
    .DE(net633),
    .Q(\cpuregs[9][27] ),
    .CLK(clknet_leaf_30_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][28]$_DFFE_PP_  (.D(net602),
    .DE(net633),
    .Q(\cpuregs[9][28] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][29]$_DFFE_PP_  (.D(\cpuregs_wrdata[29] ),
    .DE(net633),
    .Q(\cpuregs[9][29] ),
    .CLK(clknet_leaf_74_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][2]$_DFFE_PP_  (.D(net672),
    .DE(_0863_),
    .Q(\cpuregs[9][2] ),
    .CLK(clknet_leaf_1_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][30]$_DFFE_PP_  (.D(\cpuregs_wrdata[30] ),
    .DE(_0863_),
    .Q(\cpuregs[9][30] ),
    .CLK(clknet_leaf_147_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][31]$_DFFE_PP_  (.D(net598),
    .DE(net633),
    .Q(\cpuregs[9][31] ),
    .CLK(clknet_leaf_142_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][3]$_DFFE_PP_  (.D(net673),
    .DE(_0863_),
    .Q(\cpuregs[9][3] ),
    .CLK(clknet_leaf_154_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][4]$_DFFE_PP_  (.D(net659),
    .DE(_0863_),
    .Q(\cpuregs[9][4] ),
    .CLK(clknet_leaf_153_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][5]$_DFFE_PP_  (.D(net674),
    .DE(net633),
    .Q(\cpuregs[9][5] ),
    .CLK(clknet_leaf_11_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][6]$_DFFE_PP_  (.D(\cpuregs_wrdata[6] ),
    .DE(net633),
    .Q(\cpuregs[9][6] ),
    .CLK(clknet_leaf_42_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][7]$_DFFE_PP_  (.D(\cpuregs_wrdata[7] ),
    .DE(net633),
    .Q(\cpuregs[9][7] ),
    .CLK(clknet_leaf_46_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][8]$_DFFE_PP_  (.D(net660),
    .DE(net633),
    .Q(\cpuregs[9][8] ),
    .CLK(clknet_leaf_27_clk));
 sky130_fd_sc_hd__edfxtp_1 \cpuregs[9][9]$_DFFE_PP_  (.D(net613),
    .DE(_0863_),
    .Q(\cpuregs[9][9] ),
    .CLK(clknet_leaf_3_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[0]$_DFFE_PP_  (.D(_4628_),
    .DE(_0812_),
    .Q(\decoded_imm[0] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[10]$_SDFFCE_PN0P_  (.D(_0559_),
    .DE(net680),
    .Q(\decoded_imm[10] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[11]$_SDFFCE_PN0P_  (.D(_0558_),
    .DE(_0812_),
    .Q(\decoded_imm[11] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[12]$_SDFFCE_PN0P_  (.D(_0557_),
    .DE(net680),
    .Q(\decoded_imm[12] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[13]$_SDFFCE_PN0P_  (.D(_0556_),
    .DE(net680),
    .Q(\decoded_imm[13] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[14]$_SDFFCE_PN0P_  (.D(_0555_),
    .DE(net680),
    .Q(\decoded_imm[14] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[15]$_SDFFCE_PN0P_  (.D(_0554_),
    .DE(net680),
    .Q(\decoded_imm[15] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[16]$_SDFFCE_PN0P_  (.D(_0553_),
    .DE(net680),
    .Q(\decoded_imm[16] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[17]$_SDFFCE_PN0P_  (.D(_0552_),
    .DE(net680),
    .Q(\decoded_imm[17] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[18]$_SDFFCE_PN0P_  (.D(_0551_),
    .DE(net680),
    .Q(\decoded_imm[18] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[19]$_SDFFCE_PN0P_  (.D(_0550_),
    .DE(net680),
    .Q(\decoded_imm[19] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[1]$_SDFFCE_PN0P_  (.D(_0568_),
    .DE(_0812_),
    .Q(\decoded_imm[1] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[20]$_SDFFCE_PN0P_  (.D(_0549_),
    .DE(net680),
    .Q(\decoded_imm[20] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[21]$_SDFFCE_PN0P_  (.D(_0548_),
    .DE(net680),
    .Q(\decoded_imm[21] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[22]$_SDFFCE_PN0P_  (.D(_0547_),
    .DE(net680),
    .Q(\decoded_imm[22] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[23]$_SDFFCE_PN0P_  (.D(_0546_),
    .DE(net680),
    .Q(\decoded_imm[23] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[24]$_SDFFCE_PN0P_  (.D(_0545_),
    .DE(net680),
    .Q(\decoded_imm[24] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[25]$_SDFFCE_PN0P_  (.D(_0544_),
    .DE(net680),
    .Q(\decoded_imm[25] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[26]$_SDFFCE_PN0P_  (.D(_0543_),
    .DE(net680),
    .Q(\decoded_imm[26] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[27]$_SDFFCE_PN0P_  (.D(_0542_),
    .DE(net680),
    .Q(\decoded_imm[27] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[28]$_SDFFCE_PN0P_  (.D(_0541_),
    .DE(net680),
    .Q(\decoded_imm[28] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[29]$_SDFFCE_PN0P_  (.D(_0540_),
    .DE(net680),
    .Q(\decoded_imm[29] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[2]$_SDFFCE_PN0P_  (.D(_0567_),
    .DE(_0812_),
    .Q(\decoded_imm[2] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[30]$_SDFFCE_PN0P_  (.D(_0539_),
    .DE(net680),
    .Q(\decoded_imm[30] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[31]$_SDFFCE_PN0P_  (.D(_0801_),
    .DE(net680),
    .Q(\decoded_imm[31] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[3]$_SDFFCE_PN0P_  (.D(_0566_),
    .DE(_0812_),
    .Q(\decoded_imm[3] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[4]$_SDFFCE_PN0P_  (.D(_0565_),
    .DE(_0812_),
    .Q(\decoded_imm[4] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[5]$_SDFFCE_PN0P_  (.D(_0564_),
    .DE(net680),
    .Q(\decoded_imm[5] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[6]$_SDFFCE_PN0P_  (.D(_0563_),
    .DE(net680),
    .Q(\decoded_imm[6] ),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[7]$_SDFFCE_PN0P_  (.D(_0562_),
    .DE(net680),
    .Q(\decoded_imm[7] ),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[8]$_SDFFCE_PN0P_  (.D(_0561_),
    .DE(net680),
    .Q(\decoded_imm[8] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm[9]$_SDFFCE_PN0P_  (.D(_0560_),
    .DE(net680),
    .Q(\decoded_imm[9] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[10]$_DFFE_PP_  (.D(\mem_rdata_latched[30] ),
    .DE(net611),
    .Q(\decoded_imm_j[10] ),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[12]$_DFFE_PP_  (.D(\mem_rdata_latched[12] ),
    .DE(net611),
    .Q(\decoded_imm_j[12] ),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[13]$_DFFE_PP_  (.D(\mem_rdata_latched[13] ),
    .DE(net611),
    .Q(\decoded_imm_j[13] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[14]$_DFFE_PP_  (.D(\mem_rdata_latched[14] ),
    .DE(net611),
    .Q(\decoded_imm_j[14] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[19]$_DFFE_PP_  (.D(\mem_rdata_latched[19] ),
    .DE(net611),
    .Q(\decoded_imm_j[19] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[20]$_DFFE_PP_  (.D(\mem_rdata_latched[31] ),
    .DE(net611),
    .Q(\decoded_imm_j[20] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[4]$_DFFE_PP_  (.D(\mem_rdata_latched[24] ),
    .DE(net611),
    .Q(\decoded_imm_j[4] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[5]$_DFFE_PP_  (.D(\mem_rdata_latched[25] ),
    .DE(net611),
    .Q(\decoded_imm_j[5] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[6]$_DFFE_PP_  (.D(\mem_rdata_latched[26] ),
    .DE(net611),
    .Q(\decoded_imm_j[6] ),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[7]$_DFFE_PP_  (.D(\mem_rdata_latched[27] ),
    .DE(net611),
    .Q(\decoded_imm_j[7] ),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[8]$_DFFE_PP_  (.D(\mem_rdata_latched[28] ),
    .DE(net611),
    .Q(\decoded_imm_j[8] ),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_imm_j[9]$_DFFE_PP_  (.D(\mem_rdata_latched[29] ),
    .DE(net611),
    .Q(\decoded_imm_j[9] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rd[0]$_DFFE_PP_  (.D(\mem_rdata_latched[7] ),
    .DE(net611),
    .Q(\decoded_rd[0] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rd[1]$_DFFE_PP_  (.D(\mem_rdata_latched[8] ),
    .DE(net611),
    .Q(\decoded_rd[1] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rd[2]$_DFFE_PP_  (.D(\mem_rdata_latched[9] ),
    .DE(net611),
    .Q(\decoded_rd[2] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rd[3]$_DFFE_PP_  (.D(\mem_rdata_latched[10] ),
    .DE(net611),
    .Q(\decoded_rd[3] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rd[4]$_DFFE_PP_  (.D(\mem_rdata_latched[11] ),
    .DE(net611),
    .Q(\decoded_rd[4] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs1[0]$_DFFE_PP_  (.D(\mem_rdata_latched[15] ),
    .DE(net611),
    .Q(\decoded_imm_j[15] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs1[1]$_DFFE_PP_  (.D(\mem_rdata_latched[16] ),
    .DE(net611),
    .Q(\decoded_imm_j[16] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs1[2]$_DFFE_PP_  (.D(\mem_rdata_latched[17] ),
    .DE(net611),
    .Q(\decoded_imm_j[17] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs1[3]$_DFFE_PP_  (.D(\mem_rdata_latched[18] ),
    .DE(net611),
    .Q(\decoded_imm_j[18] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs2[0]$_DFFE_PP_  (.D(\mem_rdata_latched[20] ),
    .DE(net611),
    .Q(\decoded_imm_j[11] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs2[1]$_DFFE_PP_  (.D(\mem_rdata_latched[21] ),
    .DE(net611),
    .Q(\decoded_imm_j[1] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs2[2]$_DFFE_PP_  (.D(\mem_rdata_latched[22] ),
    .DE(net611),
    .Q(\decoded_imm_j[2] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \decoded_rs2[3]$_DFFE_PP_  (.D(\mem_rdata_latched[23] ),
    .DE(net611),
    .Q(\decoded_imm_j[3] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__dfxtp_1 \decoder_pseudo_trigger$_SDFF_PN0_  (.D(_0784_),
    .Q(decoder_pseudo_trigger),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dfxtp_2 \decoder_trigger$_DFF_P_  (.D(_0000_),
    .Q(decoder_trigger),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold786 (.A(resetn),
    .X(net777));
 sky130_fd_sc_hd__dlygate4sd3_1 hold787 (.A(mem_rdata[1]),
    .X(net778));
 sky130_fd_sc_hd__dlygate4sd3_1 hold788 (.A(mem_rdata[4]),
    .X(net779));
 sky130_fd_sc_hd__dlygate4sd3_1 hold789 (.A(mem_rdata[0]),
    .X(net780));
 sky130_fd_sc_hd__dlygate4sd3_1 hold790 (.A(mem_rdata[3]),
    .X(net781));
 sky130_fd_sc_hd__dlygate4sd3_1 hold791 (.A(mem_rdata[2]),
    .X(net782));
 sky130_fd_sc_hd__dlygate4sd3_1 hold792 (.A(mem_rdata[6]),
    .X(net783));
 sky130_fd_sc_hd__dlygate4sd3_1 hold793 (.A(mem_ready),
    .X(net784));
 sky130_fd_sc_hd__dlygate4sd3_1 hold794 (.A(mem_rdata[5]),
    .X(net785));
 sky130_fd_sc_hd__dlygate4sd3_1 hold795 (.A(mem_rdata[14]),
    .X(net786));
 sky130_fd_sc_hd__dlygate4sd3_1 hold796 (.A(mem_rdata[12]),
    .X(net787));
 sky130_fd_sc_hd__dlygate4sd3_1 hold797 (.A(mem_rdata[13]),
    .X(net788));
 sky130_fd_sc_hd__dlygate4sd3_1 hold798 (.A(mem_rdata[7]),
    .X(net789));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input139 (.A(net780),
    .X(net138));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input140 (.A(mem_rdata[10]),
    .X(net139));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input141 (.A(mem_rdata[11]),
    .X(net140));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input142 (.A(net787),
    .X(net141));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input143 (.A(net788),
    .X(net142));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input144 (.A(net786),
    .X(net143));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input145 (.A(mem_rdata[15]),
    .X(net144));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input146 (.A(mem_rdata[16]),
    .X(net145));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input147 (.A(mem_rdata[17]),
    .X(net146));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input148 (.A(mem_rdata[18]),
    .X(net147));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input149 (.A(mem_rdata[19]),
    .X(net148));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input150 (.A(net778),
    .X(net149));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input151 (.A(mem_rdata[20]),
    .X(net150));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input152 (.A(mem_rdata[21]),
    .X(net151));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input153 (.A(mem_rdata[22]),
    .X(net152));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input154 (.A(mem_rdata[23]),
    .X(net153));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input155 (.A(mem_rdata[24]),
    .X(net154));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input156 (.A(mem_rdata[25]),
    .X(net155));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input157 (.A(mem_rdata[26]),
    .X(net156));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input158 (.A(mem_rdata[27]),
    .X(net157));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input159 (.A(mem_rdata[28]),
    .X(net158));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input160 (.A(mem_rdata[29]),
    .X(net159));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input161 (.A(net782),
    .X(net160));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input162 (.A(mem_rdata[30]),
    .X(net161));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input163 (.A(mem_rdata[31]),
    .X(net162));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input164 (.A(net781),
    .X(net163));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input165 (.A(net779),
    .X(net164));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input166 (.A(net785),
    .X(net165));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input167 (.A(net783),
    .X(net166));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input168 (.A(net789),
    .X(net167));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input169 (.A(mem_rdata[8]),
    .X(net168));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input170 (.A(mem_rdata[9]),
    .X(net169));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input171 (.A(net784),
    .X(net170));
 sky130_fd_sc_hd__buf_4 input172 (.A(net777),
    .X(net171));
 sky130_fd_sc_hd__dfxtp_1 \instr_add$_SDFFE_PN0P_  (.D(_0763_),
    .Q(instr_add),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_addi$_SDFFE_PN0P_  (.D(_0770_),
    .Q(instr_addi),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_and$_SDFFE_PN0P_  (.D(_0799_),
    .Q(instr_and),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_andi$_SDFFE_PN0P_  (.D(_0765_),
    .Q(instr_andi),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_auipc$_DFFE_PP_  (.D(_0806_),
    .DE(net611),
    .Q(instr_auipc),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_beq$_SDFFE_PN0P_  (.D(_0789_),
    .Q(instr_beq),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_bge$_SDFFE_PN0P_  (.D(_0773_),
    .Q(instr_bge),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_bgeu$_SDFFE_PN0P_  (.D(_0771_),
    .Q(instr_bgeu),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_blt$_SDFFE_PN0P_  (.D(_0774_),
    .Q(instr_blt),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_bltu$_SDFFE_PN0P_  (.D(_0772_),
    .Q(instr_bltu),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_bne$_SDFFE_PN0P_  (.D(_0775_),
    .Q(instr_bne),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_fence$_SDFFE_PN0P_  (.D(_0792_),
    .Q(instr_fence),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_jal$_DFFE_PP_  (.D(_0807_),
    .DE(net611),
    .Q(instr_jal),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_jalr$_DFFE_PP_  (.D(_0831_),
    .DE(net611),
    .Q(instr_jalr),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lb$_DFFE_PP_  (.D(_0813_),
    .DE(net680),
    .Q(instr_lb),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lbu$_DFFE_PP_  (.D(_0816_),
    .DE(net680),
    .Q(instr_lbu),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lh$_DFFE_PP_  (.D(_0814_),
    .DE(net680),
    .Q(instr_lh),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lhu$_DFFE_PP_  (.D(_0817_),
    .DE(net680),
    .Q(instr_lhu),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lui$_DFFE_PP_  (.D(_0805_),
    .DE(net611),
    .Q(instr_lui),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_lw$_DFFE_PP_  (.D(_0815_),
    .DE(net680),
    .Q(instr_lw),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_or$_SDFFE_PN0P_  (.D(_0802_),
    .Q(instr_or),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_ori$_SDFFE_PN0P_  (.D(_0766_),
    .Q(instr_ori),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_rdcycle$_DFFE_PP_  (.D(_0824_),
    .DE(_0812_),
    .Q(instr_rdcycle),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_rdcycleh$_DFFE_PP_  (.D(_0825_),
    .DE(_0812_),
    .Q(instr_rdcycleh),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_rdinstr$_DFFE_PP_  (.D(_0826_),
    .DE(_0812_),
    .Q(instr_rdinstr),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_rdinstrh$_DFFE_PP_  (.D(_0827_),
    .DE(_0812_),
    .Q(instr_rdinstrh),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_sb$_DFFE_PP_  (.D(_0818_),
    .DE(_0812_),
    .Q(instr_sb),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_sh$_DFFE_PP_  (.D(_0819_),
    .DE(_0812_),
    .Q(instr_sh),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_sll$_SDFFE_PN0P_  (.D(_0761_),
    .Q(instr_sll),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_slli$_DFFE_PP_  (.D(_0821_),
    .DE(net680),
    .Q(instr_slli),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_slt$_SDFFE_PN0P_  (.D(_0760_),
    .Q(instr_slt),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_slti$_SDFFE_PN0P_  (.D(_0769_),
    .Q(instr_slti),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_sltiu$_SDFFE_PN0P_  (.D(_0768_),
    .Q(instr_sltiu),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_sltu$_SDFFE_PN0P_  (.D(_0800_),
    .Q(instr_sltu),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_sra$_SDFFE_PN0P_  (.D(_0803_),
    .Q(instr_sra),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_srai$_DFFE_PP_  (.D(_0823_),
    .DE(net680),
    .Q(instr_srai),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_srl$_SDFFE_PN0P_  (.D(_0804_),
    .Q(instr_srl),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_srli$_DFFE_PP_  (.D(_0822_),
    .DE(net680),
    .Q(instr_srli),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__dfxtp_2 \instr_sub$_SDFFE_PN0P_  (.D(_0762_),
    .Q(instr_sub),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \instr_sw$_DFFE_PP_  (.D(_0820_),
    .DE(net680),
    .Q(instr_sw),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_xor$_SDFFE_PN0P_  (.D(_0793_),
    .Q(instr_xor),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \instr_xori$_SDFFE_PN0P_  (.D(_0767_),
    .Q(instr_xori),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_alu_reg_imm$_DFFE_PP_  (.D(_0810_),
    .DE(net611),
    .Q(is_alu_reg_imm),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_alu_reg_reg$_DFFE_PP_  (.D(_0811_),
    .DE(net611),
    .Q(is_alu_reg_reg),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__dfxtp_1 \is_beq_bne_blt_bge_bltu_bgeu$_SDFFE_PN0P_  (.D(_0796_),
    .Q(is_beq_bne_blt_bge_bltu_bgeu),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__dfxtp_1 \is_compare$_SDFF_PP0_  (.D(_0798_),
    .Q(is_compare),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_jalr_addi_slti_sltiu_xori_ori_andi$_DFFE_PP_  (.D(_0832_),
    .DE(_0812_),
    .Q(is_jalr_addi_slti_sltiu_xori_ori_andi),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_lb_lh_lw_lbu_lhu$_DFFE_PP_  (.D(_0808_),
    .DE(net611),
    .Q(is_lb_lh_lw_lbu_lhu),
    .CLK(clknet_leaf_121_clk));
 sky130_fd_sc_hd__dfxtp_1 \is_lui_auipc_jal$_DFF_P_  (.D(_0001_),
    .Q(is_lui_auipc_jal),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_sb_sh_sw$_DFFE_PP_  (.D(_0809_),
    .DE(net611),
    .Q(is_sb_sh_sw),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_sll_srl_sra$_DFFE_PP_  (.D(_0829_),
    .DE(_0812_),
    .Q(is_sll_srl_sra),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__edfxtp_1 \is_slli_srli_srai$_DFFE_PP_  (.D(_0828_),
    .DE(_0812_),
    .Q(is_slli_srli_srai),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__dfxtp_1 \is_slti_blt_slt$_DFF_P_  (.D(_0002_),
    .Q(is_slti_blt_slt),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \is_sltiu_bltu_sltu$_DFF_P_  (.D(_0003_),
    .Q(is_sltiu_bltu_sltu),
    .CLK(clknet_leaf_96_clk));
 sky130_fd_sc_hd__dfxtp_1 \latched_branch$_SDFFE_PN0P_  (.D(_0781_),
    .Q(latched_branch),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__dfxtp_1 \latched_is_lb$_SDFFE_PN0P_  (.D(_0778_),
    .Q(latched_is_lb),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__dfxtp_1 \latched_is_lh$_SDFFE_PN0P_  (.D(_0779_),
    .Q(latched_is_lh),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \latched_rd[0]$_SDFFCE_PN0P_  (.D(_0759_),
    .DE(net662),
    .Q(\latched_rd[0] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \latched_rd[1]$_SDFFCE_PN0P_  (.D(_0758_),
    .DE(net662),
    .Q(\latched_rd[1] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__edfxtp_1 \latched_rd[2]$_SDFFCE_PN0P_  (.D(_0757_),
    .DE(net662),
    .Q(\latched_rd[2] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__edfxtp_1 \latched_rd[3]$_SDFFCE_PN0P_  (.D(_0756_),
    .DE(net662),
    .Q(\latched_rd[3] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__edfxtp_1 \latched_rd[4]$_SDFFCE_PN0P_  (.D(_0777_),
    .DE(net662),
    .Q(\latched_rd[4] ),
    .CLK(clknet_leaf_134_clk));
 sky130_fd_sc_hd__dfxtp_2 \latched_stalu$_SDFFE_PN0P_  (.D(_0782_),
    .Q(latched_stalu),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__dfxtp_1 \latched_store$_SDFFE_PN0P_  (.D(_0783_),
    .Q(latched_store),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[10]$_DFFE_PP_  (.D(net203),
    .DE(net619),
    .Q(net172),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[11]$_DFFE_PP_  (.D(net665),
    .DE(net619),
    .Q(net173),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[12]$_DFFE_PP_  (.D(net666),
    .DE(net619),
    .Q(net174),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[13]$_DFFE_PP_  (.D(net667),
    .DE(net619),
    .Q(net175),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[14]$_DFFE_PP_  (.D(net207),
    .DE(net619),
    .Q(net176),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[15]$_DFFE_PP_  (.D(net208),
    .DE(net619),
    .Q(net177),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[16]$_DFFE_PP_  (.D(net209),
    .DE(net619),
    .Q(net178),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[17]$_DFFE_PP_  (.D(net210),
    .DE(net619),
    .Q(net179),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[18]$_DFFE_PP_  (.D(net211),
    .DE(net619),
    .Q(net180),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[19]$_DFFE_PP_  (.D(net212),
    .DE(net619),
    .Q(net181),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[20]$_DFFE_PP_  (.D(net213),
    .DE(net619),
    .Q(net182),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[21]$_DFFE_PP_  (.D(net214),
    .DE(net619),
    .Q(net183),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[22]$_DFFE_PP_  (.D(net215),
    .DE(net619),
    .Q(net184),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[23]$_DFFE_PP_  (.D(net216),
    .DE(net619),
    .Q(net185),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[24]$_DFFE_PP_  (.D(net217),
    .DE(net619),
    .Q(net186),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[25]$_DFFE_PP_  (.D(net218),
    .DE(net619),
    .Q(net187),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[26]$_DFFE_PP_  (.D(net219),
    .DE(net619),
    .Q(net188),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[27]$_DFFE_PP_  (.D(net220),
    .DE(net619),
    .Q(net189),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[28]$_DFFE_PP_  (.D(net221),
    .DE(net619),
    .Q(net190),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[29]$_DFFE_PP_  (.D(net222),
    .DE(net619),
    .Q(net191),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[2]$_DFFE_PP_  (.D(net223),
    .DE(net619),
    .Q(net192),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[30]$_DFFE_PP_  (.D(net224),
    .DE(net619),
    .Q(net193),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[31]$_DFFE_PP_  (.D(net225),
    .DE(net619),
    .Q(net194),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[3]$_DFFE_PP_  (.D(net226),
    .DE(net619),
    .Q(net195),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[4]$_DFFE_PP_  (.D(net227),
    .DE(net619),
    .Q(net196),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[5]$_DFFE_PP_  (.D(net228),
    .DE(net619),
    .Q(net197),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[6]$_DFFE_PP_  (.D(net229),
    .DE(net619),
    .Q(net198),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[7]$_DFFE_PP_  (.D(net664),
    .DE(net619),
    .Q(net199),
    .CLK(clknet_leaf_95_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[8]$_DFFE_PP_  (.D(net231),
    .DE(net619),
    .Q(net200),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_addr[9]$_DFFE_PP_  (.D(net232),
    .DE(net619),
    .Q(net201),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_do_prefetch$_SDFFE_PP0P_  (.D(_0788_),
    .Q(mem_do_prefetch),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_do_rdata$_SDFFE_PP1P_  (.D(_0786_),
    .Q(mem_do_rdata),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_do_rinst$_SDFFE_PP1P_  (.D(_0787_),
    .Q(mem_do_rinst),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_do_wdata$_SDFFE_PP1P_  (.D(_0785_),
    .Q(mem_do_wdata),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_instr$_SDFFCE_PP0P_  (.D(_0764_),
    .DE(_0524_),
    .Q(net202),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[0]$_DFFE_PP_  (.D(net138),
    .DE(_3278_),
    .Q(\mem_rdata_q[0] ),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[10]$_DFFE_PP_  (.D(net139),
    .DE(net677),
    .Q(\mem_rdata_q[10] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[11]$_DFFE_PP_  (.D(net140),
    .DE(net677),
    .Q(\mem_rdata_q[11] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[12]$_DFFE_PP_  (.D(net141),
    .DE(_3278_),
    .Q(\mem_rdata_q[12] ),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[13]$_DFFE_PP_  (.D(net142),
    .DE(_3278_),
    .Q(\mem_rdata_q[13] ),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[14]$_DFFE_PP_  (.D(net143),
    .DE(_3278_),
    .Q(\mem_rdata_q[14] ),
    .CLK(clknet_leaf_111_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[15]$_DFFE_PP_  (.D(net144),
    .DE(net677),
    .Q(\mem_rdata_q[15] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[16]$_DFFE_PP_  (.D(net145),
    .DE(net677),
    .Q(\mem_rdata_q[16] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[17]$_DFFE_PP_  (.D(net146),
    .DE(net677),
    .Q(\mem_rdata_q[17] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[18]$_DFFE_PP_  (.D(net147),
    .DE(net677),
    .Q(\mem_rdata_q[18] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[19]$_DFFE_PP_  (.D(net148),
    .DE(net677),
    .Q(\mem_rdata_q[19] ),
    .CLK(clknet_leaf_109_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[1]$_DFFE_PP_  (.D(net149),
    .DE(_3278_),
    .Q(\mem_rdata_q[1] ),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[20]$_DFFE_PP_  (.D(net150),
    .DE(net677),
    .Q(\mem_rdata_q[20] ),
    .CLK(clknet_leaf_126_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[21]$_DFFE_PP_  (.D(net151),
    .DE(net677),
    .Q(\mem_rdata_q[21] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[22]$_DFFE_PP_  (.D(net152),
    .DE(net677),
    .Q(\mem_rdata_q[22] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[23]$_DFFE_PP_  (.D(net153),
    .DE(net677),
    .Q(\mem_rdata_q[23] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[24]$_DFFE_PP_  (.D(net154),
    .DE(net677),
    .Q(\mem_rdata_q[24] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[25]$_DFFE_PP_  (.D(net155),
    .DE(net677),
    .Q(\mem_rdata_q[25] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[26]$_DFFE_PP_  (.D(net156),
    .DE(net677),
    .Q(\mem_rdata_q[26] ),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[27]$_DFFE_PP_  (.D(net157),
    .DE(net677),
    .Q(\mem_rdata_q[27] ),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[28]$_DFFE_PP_  (.D(net158),
    .DE(net677),
    .Q(\mem_rdata_q[28] ),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[29]$_DFFE_PP_  (.D(net159),
    .DE(net677),
    .Q(\mem_rdata_q[29] ),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[2]$_DFFE_PP_  (.D(net160),
    .DE(_3278_),
    .Q(\mem_rdata_q[2] ),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[30]$_DFFE_PP_  (.D(net161),
    .DE(_3278_),
    .Q(\mem_rdata_q[30] ),
    .CLK(clknet_leaf_110_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[31]$_DFFE_PP_  (.D(net162),
    .DE(net677),
    .Q(\mem_rdata_q[31] ),
    .CLK(clknet_leaf_118_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[3]$_DFFE_PP_  (.D(net163),
    .DE(_3278_),
    .Q(\mem_rdata_q[3] ),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[4]$_DFFE_PP_  (.D(net164),
    .DE(_3278_),
    .Q(\mem_rdata_q[4] ),
    .CLK(clknet_leaf_119_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[5]$_DFFE_PP_  (.D(net165),
    .DE(_3278_),
    .Q(\mem_rdata_q[5] ),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[6]$_DFFE_PP_  (.D(net166),
    .DE(_3278_),
    .Q(\mem_rdata_q[6] ),
    .CLK(clknet_leaf_120_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[7]$_DFFE_PP_  (.D(net167),
    .DE(net677),
    .Q(\mem_rdata_q[7] ),
    .CLK(clknet_leaf_117_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[8]$_DFFE_PP_  (.D(net168),
    .DE(net677),
    .Q(\mem_rdata_q[8] ),
    .CLK(clknet_leaf_127_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_rdata_q[9]$_DFFE_PP_  (.D(net169),
    .DE(net677),
    .Q(\mem_rdata_q[9] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_state[0]$_SDFFCE_PP0P_  (.D(_0755_),
    .DE(_0519_),
    .Q(\mem_state[0] ),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_state[1]$_SDFFCE_PP0P_  (.D(_0794_),
    .DE(_0519_),
    .Q(\mem_state[1] ),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_valid$_SDFFCE_PP0P_  (.D(_0795_),
    .DE(_0522_),
    .Q(net271),
    .CLK(clknet_leaf_115_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[0]$_DFFE_PP_  (.D(net234),
    .DE(net656),
    .Q(net272),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[10]$_DFFE_PP_  (.D(net235),
    .DE(net656),
    .Q(net273),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[11]$_DFFE_PP_  (.D(net236),
    .DE(net656),
    .Q(net274),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[12]$_DFFE_PP_  (.D(net237),
    .DE(net656),
    .Q(net275),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[13]$_DFFE_PP_  (.D(net238),
    .DE(net656),
    .Q(net276),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[14]$_DFFE_PP_  (.D(net239),
    .DE(net656),
    .Q(net277),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[15]$_DFFE_PP_  (.D(net240),
    .DE(net656),
    .Q(net278),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[16]$_DFFE_PP_  (.D(net241),
    .DE(net656),
    .Q(net279),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[17]$_DFFE_PP_  (.D(net242),
    .DE(net656),
    .Q(net280),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[18]$_DFFE_PP_  (.D(net243),
    .DE(net656),
    .Q(net281),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[19]$_DFFE_PP_  (.D(net244),
    .DE(net656),
    .Q(net282),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[1]$_DFFE_PP_  (.D(net245),
    .DE(net656),
    .Q(net283),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[20]$_DFFE_PP_  (.D(net246),
    .DE(net656),
    .Q(net284),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[21]$_DFFE_PP_  (.D(net247),
    .DE(net656),
    .Q(net285),
    .CLK(clknet_leaf_84_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[22]$_DFFE_PP_  (.D(net248),
    .DE(net656),
    .Q(net286),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[23]$_DFFE_PP_  (.D(net249),
    .DE(net656),
    .Q(net287),
    .CLK(clknet_leaf_84_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[24]$_DFFE_PP_  (.D(net250),
    .DE(net656),
    .Q(net288),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[25]$_DFFE_PP_  (.D(net251),
    .DE(net656),
    .Q(net289),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[26]$_DFFE_PP_  (.D(net252),
    .DE(net656),
    .Q(net290),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[27]$_DFFE_PP_  (.D(net253),
    .DE(net656),
    .Q(net291),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[28]$_DFFE_PP_  (.D(net254),
    .DE(net656),
    .Q(net292),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[29]$_DFFE_PP_  (.D(net255),
    .DE(net656),
    .Q(net293),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[2]$_DFFE_PP_  (.D(net256),
    .DE(net656),
    .Q(net294),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[30]$_DFFE_PP_  (.D(net257),
    .DE(net656),
    .Q(net295),
    .CLK(clknet_leaf_88_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[31]$_DFFE_PP_  (.D(net258),
    .DE(net656),
    .Q(net296),
    .CLK(clknet_leaf_89_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[3]$_DFFE_PP_  (.D(net259),
    .DE(net656),
    .Q(net297),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[4]$_DFFE_PP_  (.D(net260),
    .DE(net656),
    .Q(net298),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[5]$_DFFE_PP_  (.D(net261),
    .DE(net656),
    .Q(net299),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[6]$_DFFE_PP_  (.D(net262),
    .DE(net656),
    .Q(net300),
    .CLK(clknet_leaf_84_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[7]$_DFFE_PP_  (.D(net263),
    .DE(net656),
    .Q(net301),
    .CLK(clknet_leaf_63_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[8]$_DFFE_PP_  (.D(net264),
    .DE(net656),
    .Q(net302),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wdata[9]$_DFFE_PP_  (.D(net265),
    .DE(net656),
    .Q(net303),
    .CLK(clknet_leaf_87_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_wordsize[0]$_DFF_P_  (.D(_0508_),
    .Q(\mem_wordsize[0] ),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_wordsize[1]$_DFF_P_  (.D(_0509_),
    .Q(\mem_wordsize[1] ),
    .CLK(clknet_leaf_113_clk));
 sky130_fd_sc_hd__dfxtp_1 \mem_wordsize[2]$_DFF_P_  (.D(_0510_),
    .Q(\mem_wordsize[2] ),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wstrb[0]$_DFFE_PN_  (.D(_4629_),
    .DE(_0528_),
    .Q(net304),
    .CLK(clknet_leaf_114_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wstrb[1]$_DFFE_PN_  (.D(_4630_),
    .DE(_0528_),
    .Q(net305),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wstrb[2]$_DFFE_PN_  (.D(_4631_),
    .DE(_0528_),
    .Q(net306),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__edfxtp_1 \mem_wstrb[3]$_DFFE_PN_  (.D(_4632_),
    .DE(_0528_),
    .Q(net307),
    .CLK(clknet_leaf_112_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output173 (.A(net172),
    .X(mem_addr[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output174 (.A(net173),
    .X(mem_addr[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output175 (.A(net174),
    .X(mem_addr[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output176 (.A(net175),
    .X(mem_addr[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output177 (.A(net176),
    .X(mem_addr[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output178 (.A(net177),
    .X(mem_addr[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output179 (.A(net178),
    .X(mem_addr[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output180 (.A(net179),
    .X(mem_addr[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output181 (.A(net180),
    .X(mem_addr[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output182 (.A(net181),
    .X(mem_addr[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output183 (.A(net182),
    .X(mem_addr[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output184 (.A(net183),
    .X(mem_addr[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output185 (.A(net184),
    .X(mem_addr[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output186 (.A(net185),
    .X(mem_addr[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output187 (.A(net186),
    .X(mem_addr[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output188 (.A(net187),
    .X(mem_addr[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output189 (.A(net188),
    .X(mem_addr[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output190 (.A(net189),
    .X(mem_addr[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output191 (.A(net190),
    .X(mem_addr[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output192 (.A(net191),
    .X(mem_addr[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output193 (.A(net192),
    .X(mem_addr[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output194 (.A(net193),
    .X(mem_addr[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output195 (.A(net194),
    .X(mem_addr[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output196 (.A(net195),
    .X(mem_addr[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output197 (.A(net196),
    .X(mem_addr[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output198 (.A(net197),
    .X(mem_addr[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output199 (.A(net198),
    .X(mem_addr[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output200 (.A(net199),
    .X(mem_addr[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output201 (.A(net200),
    .X(mem_addr[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output202 (.A(net201),
    .X(mem_addr[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output203 (.A(net202),
    .X(mem_instr));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output204 (.A(net203),
    .X(mem_la_addr[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output205 (.A(net665),
    .X(mem_la_addr[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output206 (.A(net666),
    .X(mem_la_addr[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output207 (.A(net667),
    .X(mem_la_addr[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output208 (.A(net207),
    .X(mem_la_addr[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output209 (.A(net208),
    .X(mem_la_addr[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output210 (.A(net209),
    .X(mem_la_addr[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output211 (.A(net210),
    .X(mem_la_addr[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output212 (.A(net211),
    .X(mem_la_addr[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output213 (.A(net212),
    .X(mem_la_addr[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output214 (.A(net213),
    .X(mem_la_addr[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output215 (.A(net214),
    .X(mem_la_addr[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output216 (.A(net215),
    .X(mem_la_addr[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output217 (.A(net216),
    .X(mem_la_addr[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output218 (.A(net217),
    .X(mem_la_addr[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output219 (.A(net218),
    .X(mem_la_addr[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output220 (.A(net219),
    .X(mem_la_addr[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output221 (.A(net220),
    .X(mem_la_addr[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output222 (.A(net221),
    .X(mem_la_addr[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output223 (.A(net222),
    .X(mem_la_addr[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output224 (.A(net223),
    .X(mem_la_addr[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output225 (.A(net224),
    .X(mem_la_addr[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output226 (.A(net225),
    .X(mem_la_addr[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output227 (.A(net226),
    .X(mem_la_addr[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output228 (.A(net227),
    .X(mem_la_addr[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output229 (.A(net228),
    .X(mem_la_addr[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output230 (.A(net229),
    .X(mem_la_addr[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output231 (.A(net664),
    .X(mem_la_addr[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output232 (.A(net231),
    .X(mem_la_addr[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output233 (.A(net232),
    .X(mem_la_addr[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output234 (.A(net233),
    .X(mem_la_read));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output235 (.A(net234),
    .X(mem_la_wdata[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output236 (.A(net235),
    .X(mem_la_wdata[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output237 (.A(net236),
    .X(mem_la_wdata[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output238 (.A(net237),
    .X(mem_la_wdata[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output239 (.A(net238),
    .X(mem_la_wdata[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output240 (.A(net239),
    .X(mem_la_wdata[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output241 (.A(net240),
    .X(mem_la_wdata[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output242 (.A(net241),
    .X(mem_la_wdata[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output243 (.A(net242),
    .X(mem_la_wdata[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output244 (.A(net243),
    .X(mem_la_wdata[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output245 (.A(net244),
    .X(mem_la_wdata[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output246 (.A(net245),
    .X(mem_la_wdata[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output247 (.A(net246),
    .X(mem_la_wdata[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output248 (.A(net247),
    .X(mem_la_wdata[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output249 (.A(net248),
    .X(mem_la_wdata[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output250 (.A(net249),
    .X(mem_la_wdata[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output251 (.A(net250),
    .X(mem_la_wdata[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output252 (.A(net251),
    .X(mem_la_wdata[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output253 (.A(net252),
    .X(mem_la_wdata[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output254 (.A(net253),
    .X(mem_la_wdata[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output255 (.A(net254),
    .X(mem_la_wdata[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output256 (.A(net255),
    .X(mem_la_wdata[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output257 (.A(net256),
    .X(mem_la_wdata[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output258 (.A(net257),
    .X(mem_la_wdata[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output259 (.A(net258),
    .X(mem_la_wdata[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output260 (.A(net259),
    .X(mem_la_wdata[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output261 (.A(net260),
    .X(mem_la_wdata[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output262 (.A(net261),
    .X(mem_la_wdata[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output263 (.A(net262),
    .X(mem_la_wdata[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output264 (.A(net263),
    .X(mem_la_wdata[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output265 (.A(net264),
    .X(mem_la_wdata[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output266 (.A(net265),
    .X(mem_la_wdata[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output267 (.A(net266),
    .X(mem_la_write));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output268 (.A(net267),
    .X(mem_la_wstrb[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output269 (.A(net268),
    .X(mem_la_wstrb[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output270 (.A(net269),
    .X(mem_la_wstrb[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output271 (.A(net270),
    .X(mem_la_wstrb[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output272 (.A(net271),
    .X(mem_valid));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output273 (.A(net272),
    .X(mem_wdata[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output274 (.A(net273),
    .X(mem_wdata[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output275 (.A(net274),
    .X(mem_wdata[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output276 (.A(net275),
    .X(mem_wdata[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output277 (.A(net276),
    .X(mem_wdata[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output278 (.A(net277),
    .X(mem_wdata[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output279 (.A(net278),
    .X(mem_wdata[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output280 (.A(net279),
    .X(mem_wdata[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output281 (.A(net280),
    .X(mem_wdata[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output282 (.A(net281),
    .X(mem_wdata[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output283 (.A(net282),
    .X(mem_wdata[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output284 (.A(net283),
    .X(mem_wdata[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output285 (.A(net284),
    .X(mem_wdata[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output286 (.A(net285),
    .X(mem_wdata[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output287 (.A(net286),
    .X(mem_wdata[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output288 (.A(net287),
    .X(mem_wdata[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output289 (.A(net288),
    .X(mem_wdata[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output290 (.A(net289),
    .X(mem_wdata[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output291 (.A(net290),
    .X(mem_wdata[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output292 (.A(net291),
    .X(mem_wdata[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output293 (.A(net292),
    .X(mem_wdata[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output294 (.A(net293),
    .X(mem_wdata[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output295 (.A(net294),
    .X(mem_wdata[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output296 (.A(net295),
    .X(mem_wdata[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output297 (.A(net296),
    .X(mem_wdata[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output298 (.A(net297),
    .X(mem_wdata[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output299 (.A(net298),
    .X(mem_wdata[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output300 (.A(net299),
    .X(mem_wdata[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output301 (.A(net300),
    .X(mem_wdata[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output302 (.A(net301),
    .X(mem_wdata[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output303 (.A(net302),
    .X(mem_wdata[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output304 (.A(net303),
    .X(mem_wdata[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output305 (.A(net304),
    .X(mem_wstrb[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output306 (.A(net305),
    .X(mem_wstrb[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output307 (.A(net306),
    .X(mem_wstrb[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output308 (.A(net307),
    .X(mem_wstrb[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output309 (.A(net308),
    .X(pcpi_rs1[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output310 (.A(net731),
    .X(pcpi_rs1[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output311 (.A(net730),
    .X(pcpi_rs1[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output312 (.A(net729),
    .X(pcpi_rs1[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output313 (.A(net728),
    .X(pcpi_rs1[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output314 (.A(net727),
    .X(pcpi_rs1[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output315 (.A(net726),
    .X(pcpi_rs1[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output316 (.A(net725),
    .X(pcpi_rs1[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output317 (.A(net724),
    .X(pcpi_rs1[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output318 (.A(net723),
    .X(pcpi_rs1[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output319 (.A(net722),
    .X(pcpi_rs1[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output320 (.A(net721),
    .X(pcpi_rs1[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output321 (.A(net720),
    .X(pcpi_rs1[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output322 (.A(net719),
    .X(pcpi_rs1[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output323 (.A(net718),
    .X(pcpi_rs1[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output324 (.A(net717),
    .X(pcpi_rs1[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output325 (.A(net716),
    .X(pcpi_rs1[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output326 (.A(net715),
    .X(pcpi_rs1[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output327 (.A(net714),
    .X(pcpi_rs1[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output328 (.A(net713),
    .X(pcpi_rs1[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output329 (.A(net712),
    .X(pcpi_rs1[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output330 (.A(net329),
    .X(pcpi_rs1[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output331 (.A(net711),
    .X(pcpi_rs1[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output332 (.A(net710),
    .X(pcpi_rs1[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output333 (.A(net709),
    .X(pcpi_rs1[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output334 (.A(net708),
    .X(pcpi_rs1[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output335 (.A(net707),
    .X(pcpi_rs1[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output336 (.A(net706),
    .X(pcpi_rs1[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output337 (.A(net705),
    .X(pcpi_rs1[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output338 (.A(net704),
    .X(pcpi_rs1[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output339 (.A(net703),
    .X(pcpi_rs1[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output340 (.A(net702),
    .X(pcpi_rs1[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output341 (.A(net234),
    .X(pcpi_rs2[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output342 (.A(net340),
    .X(pcpi_rs2[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output343 (.A(net341),
    .X(pcpi_rs2[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output344 (.A(net342),
    .X(pcpi_rs2[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output345 (.A(net343),
    .X(pcpi_rs2[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output346 (.A(net344),
    .X(pcpi_rs2[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output347 (.A(net345),
    .X(pcpi_rs2[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output348 (.A(net346),
    .X(pcpi_rs2[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output349 (.A(net347),
    .X(pcpi_rs2[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output350 (.A(net348),
    .X(pcpi_rs2[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output351 (.A(net349),
    .X(pcpi_rs2[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output352 (.A(net245),
    .X(pcpi_rs2[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output353 (.A(net350),
    .X(pcpi_rs2[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output354 (.A(net351),
    .X(pcpi_rs2[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output355 (.A(net352),
    .X(pcpi_rs2[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output356 (.A(net353),
    .X(pcpi_rs2[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output357 (.A(net354),
    .X(pcpi_rs2[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output358 (.A(net355),
    .X(pcpi_rs2[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output359 (.A(net356),
    .X(pcpi_rs2[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output360 (.A(net357),
    .X(pcpi_rs2[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output361 (.A(net358),
    .X(pcpi_rs2[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output362 (.A(net359),
    .X(pcpi_rs2[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output363 (.A(net256),
    .X(pcpi_rs2[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output364 (.A(net701),
    .X(pcpi_rs2[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output365 (.A(net700),
    .X(pcpi_rs2[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output366 (.A(net259),
    .X(pcpi_rs2[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output367 (.A(net260),
    .X(pcpi_rs2[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output368 (.A(net261),
    .X(pcpi_rs2[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output369 (.A(net262),
    .X(pcpi_rs2[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output370 (.A(net263),
    .X(pcpi_rs2[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output371 (.A(net362),
    .X(pcpi_rs2[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output372 (.A(net363),
    .X(pcpi_rs2[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output373 (.A(net364),
    .X(trap));
 sky130_fd_sc_hd__buf_4 place607 (.A(\cpuregs_wrdata[31] ),
    .X(net598));
 sky130_fd_sc_hd__buf_4 place608 (.A(_0527_),
    .X(net599));
 sky130_fd_sc_hd__buf_4 place609 (.A(\cpuregs_wrdata[24] ),
    .X(net600));
 sky130_fd_sc_hd__buf_4 place610 (.A(\cpuregs_wrdata[27] ),
    .X(net601));
 sky130_fd_sc_hd__buf_4 place611 (.A(\cpuregs_wrdata[28] ),
    .X(net602));
 sky130_fd_sc_hd__buf_4 place612 (.A(\cpuregs_wrdata[23] ),
    .X(net603));
 sky130_fd_sc_hd__buf_4 place613 (.A(\cpuregs_wrdata[25] ),
    .X(net604));
 sky130_fd_sc_hd__buf_4 place614 (.A(\cpuregs_wrdata[26] ),
    .X(net605));
 sky130_fd_sc_hd__buf_4 place615 (.A(\cpuregs_wrdata[19] ),
    .X(net606));
 sky130_fd_sc_hd__buf_4 place616 (.A(\cpuregs_wrdata[21] ),
    .X(net607));
 sky130_fd_sc_hd__buf_4 place617 (.A(\cpuregs_wrdata[22] ),
    .X(net608));
 sky130_fd_sc_hd__buf_4 place618 (.A(_1079_),
    .X(net609));
 sky130_fd_sc_hd__buf_4 place619 (.A(\cpuregs_wrdata[20] ),
    .X(net610));
 sky130_fd_sc_hd__buf_4 place620 (.A(_0830_),
    .X(net611));
 sky130_fd_sc_hd__buf_4 place621 (.A(_3712_),
    .X(net612));
 sky130_fd_sc_hd__buf_4 place622 (.A(\cpuregs_wrdata[9] ),
    .X(net613));
 sky130_fd_sc_hd__buf_4 place623 (.A(\cpuregs_wrdata[11] ),
    .X(net614));
 sky130_fd_sc_hd__buf_4 place624 (.A(\cpuregs_wrdata[13] ),
    .X(net615));
 sky130_fd_sc_hd__buf_4 place625 (.A(\cpuregs_wrdata[14] ),
    .X(net616));
 sky130_fd_sc_hd__buf_4 place626 (.A(\cpuregs_wrdata[18] ),
    .X(net617));
 sky130_fd_sc_hd__buf_4 place627 (.A(_0871_),
    .X(net618));
 sky130_fd_sc_hd__buf_4 place628 (.A(_0521_),
    .X(net619));
 sky130_fd_sc_hd__buf_4 place629 (.A(_4347_),
    .X(net620));
 sky130_fd_sc_hd__buf_4 place630 (.A(_0843_),
    .X(net621));
 sky130_fd_sc_hd__buf_4 place631 (.A(_0845_),
    .X(net622));
 sky130_fd_sc_hd__buf_4 place632 (.A(_0855_),
    .X(net623));
 sky130_fd_sc_hd__buf_4 place633 (.A(_0854_),
    .X(net624));
 sky130_fd_sc_hd__buf_4 place634 (.A(_0853_),
    .X(net625));
 sky130_fd_sc_hd__buf_4 place635 (.A(_0857_),
    .X(net626));
 sky130_fd_sc_hd__buf_4 place636 (.A(_0858_),
    .X(net627));
 sky130_fd_sc_hd__buf_4 place637 (.A(_0859_),
    .X(net628));
 sky130_fd_sc_hd__buf_4 place638 (.A(_0852_),
    .X(net629));
 sky130_fd_sc_hd__buf_4 place639 (.A(_0860_),
    .X(net630));
 sky130_fd_sc_hd__buf_4 place640 (.A(_0861_),
    .X(net631));
 sky130_fd_sc_hd__buf_4 place641 (.A(_0862_),
    .X(net632));
 sky130_fd_sc_hd__buf_4 place642 (.A(_0863_),
    .X(net633));
 sky130_fd_sc_hd__buf_4 place643 (.A(_0851_),
    .X(net634));
 sky130_fd_sc_hd__buf_4 place644 (.A(_0833_),
    .X(net635));
 sky130_fd_sc_hd__buf_4 place645 (.A(_0834_),
    .X(net636));
 sky130_fd_sc_hd__buf_4 place646 (.A(_0846_),
    .X(net637));
 sky130_fd_sc_hd__buf_4 place647 (.A(_0835_),
    .X(net638));
 sky130_fd_sc_hd__buf_4 place648 (.A(_0850_),
    .X(net639));
 sky130_fd_sc_hd__buf_4 place649 (.A(_0836_),
    .X(net640));
 sky130_fd_sc_hd__buf_4 place650 (.A(_0837_),
    .X(net641));
 sky130_fd_sc_hd__buf_4 place651 (.A(_0847_),
    .X(net642));
 sky130_fd_sc_hd__buf_4 place652 (.A(_0838_),
    .X(net643));
 sky130_fd_sc_hd__buf_4 place653 (.A(_0849_),
    .X(net644));
 sky130_fd_sc_hd__buf_4 place654 (.A(_0856_),
    .X(net645));
 sky130_fd_sc_hd__buf_4 place655 (.A(_0839_),
    .X(net646));
 sky130_fd_sc_hd__buf_4 place656 (.A(_0840_),
    .X(net647));
 sky130_fd_sc_hd__buf_4 place657 (.A(_0841_),
    .X(net648));
 sky130_fd_sc_hd__buf_4 place658 (.A(_0848_),
    .X(net649));
 sky130_fd_sc_hd__buf_4 place659 (.A(_0842_),
    .X(net650));
 sky130_fd_sc_hd__buf_4 place660 (.A(_0844_),
    .X(net651));
 sky130_fd_sc_hd__buf_4 place661 (.A(_4575_),
    .X(net652));
 sky130_fd_sc_hd__buf_4 place662 (.A(_4586_),
    .X(net653));
 sky130_fd_sc_hd__buf_4 place663 (.A(\cpuregs_wrdata[10] ),
    .X(net654));
 sky130_fd_sc_hd__buf_4 place664 (.A(\cpuregs_wrdata[12] ),
    .X(net655));
 sky130_fd_sc_hd__buf_4 place665 (.A(_0520_),
    .X(net656));
 sky130_fd_sc_hd__buf_4 place666 (.A(_1680_),
    .X(net657));
 sky130_fd_sc_hd__buf_4 place667 (.A(_1675_),
    .X(net658));
 sky130_fd_sc_hd__buf_4 place668 (.A(\cpuregs_wrdata[4] ),
    .X(net659));
 sky130_fd_sc_hd__buf_4 place669 (.A(\cpuregs_wrdata[8] ),
    .X(net660));
 sky130_fd_sc_hd__buf_4 place670 (.A(_0869_),
    .X(net661));
 sky130_fd_sc_hd__buf_4 place671 (.A(_0525_),
    .X(net662));
 sky130_fd_sc_hd__buf_4 place672 (.A(_4265_),
    .X(net663));
 sky130_fd_sc_hd__buf_4 place673 (.A(net230),
    .X(net664));
 sky130_fd_sc_hd__buf_4 place674 (.A(net204),
    .X(net665));
 sky130_fd_sc_hd__buf_4 place675 (.A(net205),
    .X(net666));
 sky130_fd_sc_hd__buf_4 place676 (.A(net206),
    .X(net667));
 sky130_fd_sc_hd__buf_4 place677 (.A(_2421_),
    .X(net668));
 sky130_fd_sc_hd__buf_4 place678 (.A(_2273_),
    .X(net669));
 sky130_fd_sc_hd__buf_4 place679 (.A(_2257_),
    .X(net670));
 sky130_fd_sc_hd__buf_4 place680 (.A(_1671_),
    .X(net671));
 sky130_fd_sc_hd__buf_4 place681 (.A(\cpuregs_wrdata[2] ),
    .X(net672));
 sky130_fd_sc_hd__buf_4 place682 (.A(\cpuregs_wrdata[3] ),
    .X(net673));
 sky130_fd_sc_hd__buf_4 place683 (.A(\cpuregs_wrdata[5] ),
    .X(net674));
 sky130_fd_sc_hd__buf_4 place684 (.A(_1019_),
    .X(net675));
 sky130_fd_sc_hd__buf_4 place685 (.A(_3780_),
    .X(net676));
 sky130_fd_sc_hd__buf_4 place686 (.A(_3278_),
    .X(net677));
 sky130_fd_sc_hd__buf_4 place687 (.A(_2864_),
    .X(net678));
 sky130_fd_sc_hd__buf_4 place688 (.A(_1099_),
    .X(net679));
 sky130_fd_sc_hd__buf_4 place689 (.A(_0812_),
    .X(net680));
 sky130_fd_sc_hd__buf_4 place690 (.A(_4247_),
    .X(net681));
 sky130_fd_sc_hd__buf_4 place691 (.A(_3771_),
    .X(net682));
 sky130_fd_sc_hd__buf_4 place692 (.A(_3721_),
    .X(net683));
 sky130_fd_sc_hd__buf_4 place693 (.A(_3652_),
    .X(net684));
 sky130_fd_sc_hd__buf_4 place694 (.A(_2936_),
    .X(net685));
 sky130_fd_sc_hd__buf_4 place695 (.A(_2933_),
    .X(net686));
 sky130_fd_sc_hd__buf_4 place696 (.A(_2423_),
    .X(net687));
 sky130_fd_sc_hd__buf_4 place697 (.A(_1724_),
    .X(net688));
 sky130_fd_sc_hd__buf_4 place698 (.A(_1667_),
    .X(net689));
 sky130_fd_sc_hd__buf_4 place699 (.A(_1656_),
    .X(net690));
 sky130_fd_sc_hd__buf_4 place700 (.A(_1617_),
    .X(net691));
 sky130_fd_sc_hd__buf_4 place701 (.A(_1541_),
    .X(net692));
 sky130_fd_sc_hd__buf_4 place702 (.A(_1504_),
    .X(net693));
 sky130_fd_sc_hd__buf_4 place703 (.A(_1023_),
    .X(net694));
 sky130_fd_sc_hd__buf_4 place704 (.A(_1002_),
    .X(net695));
 sky130_fd_sc_hd__buf_4 place705 (.A(_0978_),
    .X(net696));
 sky130_fd_sc_hd__buf_4 place706 (.A(_0875_),
    .X(net697));
 sky130_fd_sc_hd__buf_4 place707 (.A(_0865_),
    .X(net698));
 sky130_fd_sc_hd__buf_4 place708 (.A(_0864_),
    .X(net699));
 sky130_fd_sc_hd__buf_4 place709 (.A(net361),
    .X(net700));
 sky130_fd_sc_hd__buf_4 place710 (.A(net360),
    .X(net701));
 sky130_fd_sc_hd__buf_4 place711 (.A(net339),
    .X(net702));
 sky130_fd_sc_hd__buf_4 place712 (.A(net338),
    .X(net703));
 sky130_fd_sc_hd__buf_4 place713 (.A(net337),
    .X(net704));
 sky130_fd_sc_hd__buf_4 place714 (.A(net336),
    .X(net705));
 sky130_fd_sc_hd__buf_4 place715 (.A(net335),
    .X(net706));
 sky130_fd_sc_hd__buf_4 place716 (.A(net334),
    .X(net707));
 sky130_fd_sc_hd__buf_4 place717 (.A(net333),
    .X(net708));
 sky130_fd_sc_hd__buf_4 place718 (.A(net332),
    .X(net709));
 sky130_fd_sc_hd__buf_4 place719 (.A(net331),
    .X(net710));
 sky130_fd_sc_hd__buf_4 place720 (.A(net330),
    .X(net711));
 sky130_fd_sc_hd__buf_4 place721 (.A(net328),
    .X(net712));
 sky130_fd_sc_hd__buf_4 place722 (.A(net327),
    .X(net713));
 sky130_fd_sc_hd__buf_4 place723 (.A(net326),
    .X(net714));
 sky130_fd_sc_hd__buf_4 place724 (.A(net325),
    .X(net715));
 sky130_fd_sc_hd__buf_4 place725 (.A(net324),
    .X(net716));
 sky130_fd_sc_hd__buf_4 place726 (.A(net323),
    .X(net717));
 sky130_fd_sc_hd__buf_4 place727 (.A(net322),
    .X(net718));
 sky130_fd_sc_hd__buf_4 place728 (.A(net321),
    .X(net719));
 sky130_fd_sc_hd__buf_4 place729 (.A(net320),
    .X(net720));
 sky130_fd_sc_hd__buf_4 place730 (.A(net319),
    .X(net721));
 sky130_fd_sc_hd__buf_4 place731 (.A(net318),
    .X(net722));
 sky130_fd_sc_hd__buf_4 place732 (.A(net317),
    .X(net723));
 sky130_fd_sc_hd__buf_4 place733 (.A(net316),
    .X(net724));
 sky130_fd_sc_hd__buf_4 place734 (.A(net315),
    .X(net725));
 sky130_fd_sc_hd__buf_4 place735 (.A(net314),
    .X(net726));
 sky130_fd_sc_hd__buf_4 place736 (.A(net313),
    .X(net727));
 sky130_fd_sc_hd__buf_4 place737 (.A(net312),
    .X(net728));
 sky130_fd_sc_hd__buf_4 place738 (.A(net311),
    .X(net729));
 sky130_fd_sc_hd__buf_4 place739 (.A(net310),
    .X(net730));
 sky130_fd_sc_hd__buf_4 place740 (.A(net309),
    .X(net731));
 sky130_fd_sc_hd__buf_4 place741 (.A(net308),
    .X(net732));
 sky130_fd_sc_hd__buf_4 place742 (.A(\mem_wordsize[2] ),
    .X(net733));
 sky130_fd_sc_hd__buf_4 place743 (.A(\mem_wordsize[1] ),
    .X(net734));
 sky130_fd_sc_hd__buf_4 place744 (.A(\mem_rdata_q[27] ),
    .X(net735));
 sky130_fd_sc_hd__buf_4 place745 (.A(latched_store),
    .X(net736));
 sky130_fd_sc_hd__buf_4 place746 (.A(latched_stalu),
    .X(net737));
 sky130_fd_sc_hd__buf_4 place747 (.A(latched_branch),
    .X(net738));
 sky130_fd_sc_hd__buf_4 place748 (.A(instr_sub),
    .X(net739));
 sky130_fd_sc_hd__buf_4 place749 (.A(instr_rdinstrh),
    .X(net740));
 sky130_fd_sc_hd__buf_4 place750 (.A(instr_rdinstr),
    .X(net741));
 sky130_fd_sc_hd__buf_4 place751 (.A(instr_rdcycleh),
    .X(net742));
 sky130_fd_sc_hd__buf_4 place752 (.A(instr_jal),
    .X(net743));
 sky130_fd_sc_hd__buf_4 place753 (.A(decoder_trigger),
    .X(net744));
 sky130_fd_sc_hd__buf_4 place754 (.A(\decoded_imm_j[20] ),
    .X(net745));
 sky130_fd_sc_hd__buf_4 place755 (.A(net747),
    .X(net746));
 sky130_fd_sc_hd__buf_4 place756 (.A(\cpu_state[4] ),
    .X(net747));
 sky130_fd_sc_hd__buf_4 place757 (.A(\cpu_state[3] ),
    .X(net748));
 sky130_fd_sc_hd__buf_4 place758 (.A(\cpu_state[2] ),
    .X(net749));
 sky130_fd_sc_hd__buf_4 place759 (.A(\cpu_state[1] ),
    .X(net750));
 sky130_fd_sc_hd__buf_4 place760 (.A(_0050_),
    .X(net751));
 sky130_fd_sc_hd__buf_4 place761 (.A(_0049_),
    .X(net752));
 sky130_fd_sc_hd__buf_4 place762 (.A(net754),
    .X(net753));
 sky130_fd_sc_hd__buf_4 place763 (.A(_0048_),
    .X(net754));
 sky130_fd_sc_hd__buf_4 place764 (.A(net756),
    .X(net755));
 sky130_fd_sc_hd__buf_4 place765 (.A(net757),
    .X(net756));
 sky130_fd_sc_hd__buf_12 place766 (.A(_0047_),
    .X(net757));
 sky130_fd_sc_hd__buf_4 place767 (.A(net760),
    .X(net758));
 sky130_fd_sc_hd__buf_4 place768 (.A(net760),
    .X(net759));
 sky130_fd_sc_hd__buf_4 place769 (.A(_0046_),
    .X(net760));
 sky130_fd_sc_hd__buf_12 place770 (.A(net762),
    .X(net761));
 sky130_fd_sc_hd__buf_4 place771 (.A(_0046_),
    .X(net762));
 sky130_fd_sc_hd__buf_4 place772 (.A(_0045_),
    .X(net763));
 sky130_fd_sc_hd__buf_4 place773 (.A(_0044_),
    .X(net764));
 sky130_fd_sc_hd__buf_4 place774 (.A(net766),
    .X(net765));
 sky130_fd_sc_hd__buf_4 place775 (.A(_0043_),
    .X(net766));
 sky130_fd_sc_hd__buf_4 place776 (.A(net768),
    .X(net767));
 sky130_fd_sc_hd__buf_12 place777 (.A(net769),
    .X(net768));
 sky130_fd_sc_hd__buf_4 place778 (.A(_0042_),
    .X(net769));
 sky130_fd_sc_hd__buf_12 place779 (.A(net771),
    .X(net770));
 sky130_fd_sc_hd__buf_4 place780 (.A(_0041_),
    .X(net771));
 sky130_fd_sc_hd__buf_4 place781 (.A(net773),
    .X(net772));
 sky130_fd_sc_hd__buf_4 place782 (.A(net774),
    .X(net773));
 sky130_fd_sc_hd__buf_4 place783 (.A(_0041_),
    .X(net774));
 sky130_fd_sc_hd__buf_4 place784 (.A(net171),
    .X(net775));
 sky130_fd_sc_hd__buf_4 place785 (.A(net171),
    .X(net776));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[10]$_SDFFE_PN0P_  (.D(_0652_),
    .Q(\reg_next_pc[10] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[11]$_SDFFE_PN0P_  (.D(_0651_),
    .Q(\reg_next_pc[11] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[12]$_SDFFE_PN0P_  (.D(_0650_),
    .Q(\reg_next_pc[12] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[13]$_SDFFE_PN0P_  (.D(_0649_),
    .Q(\reg_next_pc[13] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[14]$_SDFFE_PN0P_  (.D(_0648_),
    .Q(\reg_next_pc[14] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[15]$_SDFFE_PN0P_  (.D(_0647_),
    .Q(\reg_next_pc[15] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[16]$_SDFFE_PN0P_  (.D(_0646_),
    .Q(\reg_next_pc[16] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[17]$_SDFFE_PN0P_  (.D(_0645_),
    .Q(\reg_next_pc[17] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[18]$_SDFFE_PN0P_  (.D(_0644_),
    .Q(\reg_next_pc[18] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[19]$_SDFFE_PN0P_  (.D(_0643_),
    .Q(\reg_next_pc[19] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[1]$_SDFFE_PN0P_  (.D(_0661_),
    .Q(\reg_next_pc[1] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[20]$_SDFFE_PN0P_  (.D(_0642_),
    .Q(\reg_next_pc[20] ),
    .CLK(clknet_leaf_98_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[21]$_SDFFE_PN0P_  (.D(_0641_),
    .Q(\reg_next_pc[21] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[22]$_SDFFE_PN0P_  (.D(_0640_),
    .Q(\reg_next_pc[22] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[23]$_SDFFE_PN0P_  (.D(_0639_),
    .Q(\reg_next_pc[23] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[24]$_SDFFE_PN0P_  (.D(_0638_),
    .Q(\reg_next_pc[24] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[25]$_SDFFE_PN0P_  (.D(_0637_),
    .Q(\reg_next_pc[25] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[26]$_SDFFE_PN0P_  (.D(_0636_),
    .Q(\reg_next_pc[26] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[27]$_SDFFE_PN0P_  (.D(_0635_),
    .Q(\reg_next_pc[27] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[28]$_SDFFE_PN0P_  (.D(_0634_),
    .Q(\reg_next_pc[28] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[29]$_SDFFE_PN0P_  (.D(_0633_),
    .Q(\reg_next_pc[29] ),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[2]$_SDFFE_PN0P_  (.D(_0660_),
    .Q(\reg_next_pc[2] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[30]$_SDFFE_PN0P_  (.D(_0632_),
    .Q(\reg_next_pc[30] ),
    .CLK(clknet_leaf_93_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[31]$_SDFFE_PN0P_  (.D(_0797_),
    .Q(\reg_next_pc[31] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[3]$_SDFFE_PN0P_  (.D(_0659_),
    .Q(\reg_next_pc[3] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[4]$_SDFFE_PN0P_  (.D(_0658_),
    .Q(\reg_next_pc[4] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[5]$_SDFFE_PN0P_  (.D(_0657_),
    .Q(\reg_next_pc[5] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[6]$_SDFFE_PN0P_  (.D(_0656_),
    .Q(\reg_next_pc[6] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[7]$_SDFFE_PN0P_  (.D(_0655_),
    .Q(\reg_next_pc[7] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[8]$_SDFFE_PN0P_  (.D(_0654_),
    .Q(\reg_next_pc[8] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_next_pc[9]$_SDFFE_PN0P_  (.D(_0653_),
    .Q(\reg_next_pc[9] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[0]$_DFFE_PP_  (.D(_4596_),
    .DE(_0527_),
    .Q(net308),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[10]$_DFFE_PP_  (.D(_4597_),
    .DE(_0527_),
    .Q(net309),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[11]$_DFFE_PP_  (.D(_4598_),
    .DE(_0527_),
    .Q(net310),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[12]$_DFFE_PP_  (.D(_4599_),
    .DE(_0527_),
    .Q(net311),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[13]$_DFFE_PP_  (.D(_4600_),
    .DE(_0527_),
    .Q(net312),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[14]$_DFFE_PP_  (.D(_4601_),
    .DE(net599),
    .Q(net313),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[15]$_DFFE_PP_  (.D(_4602_),
    .DE(net599),
    .Q(net314),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[16]$_DFFE_PP_  (.D(_4603_),
    .DE(net599),
    .Q(net315),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[17]$_DFFE_PP_  (.D(_4604_),
    .DE(net599),
    .Q(net316),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[18]$_DFFE_PP_  (.D(_4605_),
    .DE(net599),
    .Q(net317),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[19]$_DFFE_PP_  (.D(_4606_),
    .DE(net599),
    .Q(net318),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[1]$_DFFE_PP_  (.D(_4607_),
    .DE(_0527_),
    .Q(net319),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[20]$_DFFE_PP_  (.D(_4608_),
    .DE(net599),
    .Q(net320),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[21]$_DFFE_PP_  (.D(_4609_),
    .DE(net599),
    .Q(net321),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[22]$_DFFE_PP_  (.D(_4610_),
    .DE(net599),
    .Q(net322),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[23]$_DFFE_PP_  (.D(_4611_),
    .DE(net599),
    .Q(net323),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[24]$_DFFE_PP_  (.D(_4612_),
    .DE(net599),
    .Q(net324),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[25]$_DFFE_PP_  (.D(_4613_),
    .DE(net599),
    .Q(net325),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[26]$_DFFE_PP_  (.D(_4614_),
    .DE(net599),
    .Q(net326),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[27]$_DFFE_PP_  (.D(_4615_),
    .DE(net599),
    .Q(net327),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[28]$_DFFE_PP_  (.D(_4616_),
    .DE(net599),
    .Q(net328),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[29]$_DFFE_PP_  (.D(_4617_),
    .DE(net599),
    .Q(net329),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[2]$_DFFE_PP_  (.D(_4618_),
    .DE(_0527_),
    .Q(net330),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[30]$_DFFE_PP_  (.D(_4619_),
    .DE(net599),
    .Q(net331),
    .CLK(clknet_leaf_90_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[31]$_DFFE_PP_  (.D(_4620_),
    .DE(_0526_),
    .Q(net332),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[3]$_DFFE_PP_  (.D(_4621_),
    .DE(_0527_),
    .Q(net333),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[4]$_DFFE_PP_  (.D(_4622_),
    .DE(_0527_),
    .Q(net334),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[5]$_DFFE_PP_  (.D(_4623_),
    .DE(_0527_),
    .Q(net335),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[6]$_DFFE_PP_  (.D(_4624_),
    .DE(_0527_),
    .Q(net336),
    .CLK(clknet_leaf_139_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[7]$_DFFE_PP_  (.D(_4625_),
    .DE(_0527_),
    .Q(net337),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[8]$_DFFE_PP_  (.D(_4626_),
    .DE(_0527_),
    .Q(net338),
    .CLK(clknet_leaf_141_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op1[9]$_DFFE_PP_  (.D(_4627_),
    .DE(_0527_),
    .Q(net339),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[0]$_DFFE_PP_  (.D(_4564_),
    .DE(_0523_),
    .Q(net234),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[10]$_DFFE_PP_  (.D(_4565_),
    .DE(_0523_),
    .Q(net340),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[11]$_DFFE_PP_  (.D(_4566_),
    .DE(_0523_),
    .Q(net341),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[12]$_DFFE_PP_  (.D(_4567_),
    .DE(_0523_),
    .Q(net342),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[13]$_DFFE_PP_  (.D(_4568_),
    .DE(_0523_),
    .Q(net343),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[14]$_DFFE_PP_  (.D(_4569_),
    .DE(_0523_),
    .Q(net344),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[15]$_DFFE_PP_  (.D(_4570_),
    .DE(_0523_),
    .Q(net345),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[16]$_DFFE_PP_  (.D(_4571_),
    .DE(_0523_),
    .Q(net346),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[17]$_DFFE_PP_  (.D(_4572_),
    .DE(_0523_),
    .Q(net347),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[18]$_DFFE_PP_  (.D(_4573_),
    .DE(_0523_),
    .Q(net348),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[19]$_DFFE_PP_  (.D(_4574_),
    .DE(_0523_),
    .Q(net349),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[1]$_DFFE_PP_  (.D(net652),
    .DE(_0523_),
    .Q(net245),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[20]$_DFFE_PP_  (.D(_4576_),
    .DE(_0523_),
    .Q(net350),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[21]$_DFFE_PP_  (.D(_4577_),
    .DE(_0523_),
    .Q(net351),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[22]$_DFFE_PP_  (.D(_4578_),
    .DE(_0523_),
    .Q(net352),
    .CLK(clknet_leaf_84_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[23]$_DFFE_PP_  (.D(_4579_),
    .DE(_0523_),
    .Q(net353),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[24]$_DFFE_PP_  (.D(_4580_),
    .DE(_0523_),
    .Q(net354),
    .CLK(clknet_leaf_85_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[25]$_DFFE_PP_  (.D(_4581_),
    .DE(_0523_),
    .Q(net355),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[26]$_DFFE_PP_  (.D(_4582_),
    .DE(_0523_),
    .Q(net356),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[27]$_DFFE_PP_  (.D(_4583_),
    .DE(_0523_),
    .Q(net357),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[28]$_DFFE_PP_  (.D(_4584_),
    .DE(_0523_),
    .Q(net358),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[29]$_DFFE_PP_  (.D(_4585_),
    .DE(_0523_),
    .Q(net359),
    .CLK(clknet_leaf_86_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[2]$_DFFE_PP_  (.D(net653),
    .DE(_0523_),
    .Q(net256),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[30]$_DFFE_PP_  (.D(_4587_),
    .DE(_0523_),
    .Q(net360),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[31]$_DFFE_PP_  (.D(_4588_),
    .DE(_0523_),
    .Q(net361),
    .CLK(clknet_leaf_108_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[3]$_DFFE_PP_  (.D(_4589_),
    .DE(_0523_),
    .Q(net259),
    .CLK(clknet_leaf_81_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[4]$_DFFE_PP_  (.D(_4590_),
    .DE(_0523_),
    .Q(net260),
    .CLK(clknet_leaf_80_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[5]$_DFFE_PP_  (.D(_4591_),
    .DE(_0523_),
    .Q(net261),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[6]$_DFFE_PP_  (.D(_4592_),
    .DE(_0523_),
    .Q(net262),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[7]$_DFFE_PP_  (.D(_4593_),
    .DE(_0523_),
    .Q(net263),
    .CLK(clknet_leaf_82_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[8]$_DFFE_PP_  (.D(_4594_),
    .DE(_0523_),
    .Q(net362),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_op2[9]$_DFFE_PP_  (.D(_4595_),
    .DE(_0523_),
    .Q(net363),
    .CLK(clknet_leaf_83_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[0]$_DFF_P_  (.D(_0004_),
    .Q(\reg_out[0] ),
    .CLK(clknet_leaf_116_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[10]$_DFF_P_  (.D(_0005_),
    .Q(\reg_out[10] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[11]$_DFF_P_  (.D(_0006_),
    .Q(\reg_out[11] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[12]$_DFF_P_  (.D(_0007_),
    .Q(\reg_out[12] ),
    .CLK(clknet_leaf_105_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[13]$_DFF_P_  (.D(_0008_),
    .Q(\reg_out[13] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[14]$_DFF_P_  (.D(_0009_),
    .Q(\reg_out[14] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[15]$_DFF_P_  (.D(_0010_),
    .Q(\reg_out[15] ),
    .CLK(clknet_leaf_101_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[16]$_DFF_P_  (.D(_0011_),
    .Q(\reg_out[16] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[17]$_DFF_P_  (.D(_0012_),
    .Q(\reg_out[17] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[18]$_DFF_P_  (.D(_0013_),
    .Q(\reg_out[18] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[19]$_DFF_P_  (.D(_0014_),
    .Q(\reg_out[19] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[1]$_DFF_P_  (.D(_0015_),
    .Q(\reg_out[1] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[20]$_DFF_P_  (.D(_0016_),
    .Q(\reg_out[20] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[21]$_DFF_P_  (.D(_0017_),
    .Q(\reg_out[21] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[22]$_DFF_P_  (.D(_0018_),
    .Q(\reg_out[22] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[23]$_DFF_P_  (.D(_0019_),
    .Q(\reg_out[23] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[24]$_DFF_P_  (.D(_0020_),
    .Q(\reg_out[24] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[25]$_DFF_P_  (.D(_0021_),
    .Q(\reg_out[25] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[26]$_DFF_P_  (.D(_0022_),
    .Q(\reg_out[26] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[27]$_DFF_P_  (.D(_0023_),
    .Q(\reg_out[27] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[28]$_DFF_P_  (.D(_0024_),
    .Q(\reg_out[28] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[29]$_DFF_P_  (.D(_0025_),
    .Q(\reg_out[29] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[2]$_DFF_P_  (.D(_0026_),
    .Q(\reg_out[2] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[30]$_DFF_P_  (.D(_0027_),
    .Q(\reg_out[30] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[31]$_DFF_P_  (.D(_0028_),
    .Q(\reg_out[31] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[3]$_DFF_P_  (.D(_0029_),
    .Q(\reg_out[3] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[4]$_DFF_P_  (.D(_0030_),
    .Q(\reg_out[4] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[5]$_DFF_P_  (.D(_0031_),
    .Q(\reg_out[5] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[6]$_DFF_P_  (.D(_0032_),
    .Q(\reg_out[6] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[7]$_DFF_P_  (.D(_0033_),
    .Q(\reg_out[7] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[8]$_DFF_P_  (.D(_0034_),
    .Q(\reg_out[8] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_out[9]$_DFF_P_  (.D(_0035_),
    .Q(\reg_out[9] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[10]$_SDFFE_PN0P_  (.D(_0745_),
    .Q(\reg_pc[10] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[11]$_SDFFE_PN0P_  (.D(_0744_),
    .Q(\reg_pc[11] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[12]$_SDFFE_PN0P_  (.D(_0743_),
    .Q(\reg_pc[12] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[13]$_SDFFE_PN0P_  (.D(_0742_),
    .Q(\reg_pc[13] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[14]$_SDFFE_PN0P_  (.D(_0741_),
    .Q(\reg_pc[14] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[15]$_SDFFE_PN0P_  (.D(_0740_),
    .Q(\reg_pc[15] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[16]$_SDFFE_PN0P_  (.D(_0739_),
    .Q(\reg_pc[16] ),
    .CLK(clknet_leaf_78_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[17]$_SDFFE_PN0P_  (.D(_0738_),
    .Q(\reg_pc[17] ),
    .CLK(clknet_leaf_102_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[18]$_SDFFE_PN0P_  (.D(_0737_),
    .Q(\reg_pc[18] ),
    .CLK(clknet_leaf_100_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[19]$_SDFFE_PN0P_  (.D(_0736_),
    .Q(\reg_pc[19] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[1]$_SDFFE_PN0P_  (.D(_0754_),
    .Q(\reg_pc[1] ),
    .CLK(clknet_leaf_107_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[20]$_SDFFE_PN0P_  (.D(_0735_),
    .Q(\reg_pc[20] ),
    .CLK(clknet_leaf_79_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[21]$_SDFFE_PN0P_  (.D(_0734_),
    .Q(\reg_pc[21] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[22]$_SDFFE_PN0P_  (.D(_0733_),
    .Q(\reg_pc[22] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[23]$_SDFFE_PN0P_  (.D(_0732_),
    .Q(\reg_pc[23] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[24]$_SDFFE_PN0P_  (.D(_0731_),
    .Q(\reg_pc[24] ),
    .CLK(clknet_leaf_99_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[25]$_SDFFE_PN0P_  (.D(_0730_),
    .Q(\reg_pc[25] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[26]$_SDFFE_PN0P_  (.D(_0729_),
    .Q(\reg_pc[26] ),
    .CLK(clknet_leaf_91_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[27]$_SDFFE_PN0P_  (.D(_0728_),
    .Q(\reg_pc[27] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[28]$_SDFFE_PN0P_  (.D(_0727_),
    .Q(\reg_pc[28] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[29]$_SDFFE_PN0P_  (.D(_0726_),
    .Q(\reg_pc[29] ),
    .CLK(clknet_leaf_92_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[2]$_SDFFE_PN0P_  (.D(_0753_),
    .Q(\reg_pc[2] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[30]$_SDFFE_PN0P_  (.D(_0725_),
    .Q(\reg_pc[30] ),
    .CLK(clknet_leaf_94_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[31]$_SDFFE_PN0P_  (.D(_0776_),
    .Q(\reg_pc[31] ),
    .CLK(clknet_leaf_97_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[3]$_SDFFE_PN0P_  (.D(_0752_),
    .Q(\reg_pc[3] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[4]$_SDFFE_PN0P_  (.D(_0751_),
    .Q(\reg_pc[4] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[5]$_SDFFE_PN0P_  (.D(_0750_),
    .Q(\reg_pc[5] ),
    .CLK(clknet_leaf_106_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[6]$_SDFFE_PN0P_  (.D(_0749_),
    .Q(\reg_pc[6] ),
    .CLK(clknet_leaf_138_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[7]$_SDFFE_PN0P_  (.D(_0748_),
    .Q(\reg_pc[7] ),
    .CLK(clknet_leaf_104_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[8]$_SDFFE_PN0P_  (.D(_0747_),
    .Q(\reg_pc[8] ),
    .CLK(clknet_leaf_140_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_pc[9]$_SDFFE_PN0P_  (.D(_0746_),
    .Q(\reg_pc[9] ),
    .CLK(clknet_leaf_103_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_sh[0]$_DFFE_PP_  (.D(_0036_),
    .DE(_0518_),
    .Q(\reg_sh[0] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__edfxtp_1 \reg_sh[1]$_DFFE_PP_  (.D(_0037_),
    .DE(_0518_),
    .Q(\reg_sh[1] ),
    .CLK(clknet_leaf_135_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_sh[2]$_DFF_P_  (.D(_0038_),
    .Q(\reg_sh[2] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_sh[3]$_DFF_P_  (.D(_0039_),
    .Q(\reg_sh[3] ),
    .CLK(clknet_leaf_136_clk));
 sky130_fd_sc_hd__dfxtp_1 \reg_sh[4]$_DFF_P_  (.D(_0040_),
    .Q(\reg_sh[4] ),
    .CLK(clknet_leaf_137_clk));
 sky130_fd_sc_hd__dfxtp_1 \trap$_SDFF_PN0_  (.D(_0790_),
    .Q(net364),
    .CLK(clknet_leaf_116_clk));
endmodule
