#!/bin/bash

PREFIX=tjnii_base

for base in $(find ./ -maxdepth 2 -type f -name Dockerfile | cut -f 2 -d /); do
    docker build --no-cache -t ${PREFIX}/${base} ${base}
done
