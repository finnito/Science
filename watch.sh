#!/usr/bin/env zsh

# The purpose of this script is to use fswatch
# to look for changes to files in this project.
#
# E.g. if a slideshow is updated/created/deleted
# then the event is fired off to build.sh where
# the new RevealJS HTML file can be created
# using Pandoc.

source ~/.profile

terminal-notifier \
        -group "com.finnlesueur.science" \
        -title "Pūtaiao" \
        -message "fswatch started!" \
        -appIcon http://localhost:1313/favicon.png

fswatch --print0 \
        --event-flags \
        --recursive \
        --exclude=".*" \
        --include="\\.md$" \
        --include="\\.html$" \
        --include="\\.css$" \
        ./content/ \
        | xargs -0 -n 1 python3 sparse-build.py -d
