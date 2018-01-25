#!/bin/bash
set -ex

PATH="$HOME/depot_tools:$PATH"

cd ..

flutter/tools/gn --runtime-mode release --target-os linux --linux-cpu x64
ninja -C out/linux_release_x64
flutter/travis/analyze.sh
flutter/travis/licenses.sh
