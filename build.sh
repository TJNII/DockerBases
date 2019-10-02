#!/bin/bash

PREFIX=tjnii_base

for base in $(find ./ -maxdepth 2 -type f -name Dockerfile | cut -f 2 -d /); do
    grep FROM $base/Dockerfile | awk '{print $2}' | xargs docker pull
    docker build --no-cache -t ${PREFIX}/${base} ${base}
done
