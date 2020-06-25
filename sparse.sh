#!/usr/bin/env bash

fswatch -x0rve ".*" -i "\\.md$" ./ | xargs -0 -n 1 python3 sparse-build.py
