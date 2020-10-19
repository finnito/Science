#!/usr/bin/env bash

fswatch --print0 \
        --event-flags \
        --recursive \
        --exclude=".*" \
        --include="\\.md$" \
        ./content \
        | xargs -0 -n 1 bash build.sh --dev
