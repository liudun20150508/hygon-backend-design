#!/bin/bash
# Retry-loop OpenROAD bazel build (network resets) with distdir injection
export PATH="$HOME/bin:/opt/homebrew/bin:$PATH"
export HTTPS_PROXY=http://127.0.0.1:7890 HTTP_PROXY=http://127.0.0.1:7890
cd ~/projects/backend_demo/tools/OpenROAD
for i in 1 2 3 4 5 6; do
  echo "=== build attempt $i: $(date) ==="
  bazelisk build -c opt --jobs=8 --distdir=/tmp/distdir //:openroad 2>&1 | tail -25
  if bazelisk build -c opt --jobs=8 --distdir=/tmp/distdir //:openroad >/dev/null 2>&1; then
    echo "BUILD SUCCESS at attempt $i"; exit 0
  fi
  sleep 10
done
echo "BUILD FAILED after 6 attempts"; exit 1
