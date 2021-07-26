#!/usr/bin/env bash

terminal-notifier \
        -group "com.finnlesueur.science" \
        -title "Pūtaiao" \
        -message "fswatch started!" \
        -appIcon http://putaiao.test/favicon.png

fswatch --print0 \
        --event-flags \
        --recursive \
        --exclude=".*" \
        --include="\\.md$" \
        --include="\\.html$" \
        --include="\\.css$" \
        ./ \
        | xargs -0 -n 1 python3 sparse-build.py -d
