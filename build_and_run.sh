#!/bin/bash

cd "$(dirname "$0")"


swift_files=$(find . -name "*.swift")

if [ $(echo $swift_files | wc -w) -gt 1 ]; then

  mkdir -p .build/debug
  swiftc -o .build/debug/main $swift_files
  ./.build/debug/main
else

  swift $swift_files
fi
