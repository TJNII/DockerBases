#!/bin/bash

set -euo pipefail

PREFIX=tjnii_base

for base in $(find ./ -maxdepth 2 -type f -name Dockerfile | cut -f 2 -d / | sort); do
    grep FROM $base/Dockerfile | awk '{print $2}' | xargs docker pull
    docker build --no-cache -t ${PREFIX}/${base} ${base}
done
