#!/usr/bin/env bash

fswatch --print0 \
        --event-flags \
        --recursive \
        --exclude=".*" \
        --include="\\.md$" \
        ./content \
        | xargs -0 -n 1 python3 sparse-build.py -d
