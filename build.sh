#!/usr/bin/env bash

shopt -s nullglob extglob

while getopts :d opt; do
    case $opt in
        d) dev=1;;
    esac
done

MODULES=(
    '09scie/introduction-to-science'
    '09scie/reactions-matter'
    '09scie/energy-for-life'
    '09scie/plants-as-producers'
    '09scie/space'
    '09scie/radiation'
    '10scie/as90945'
    '10scie/geology'
    '11sci/as90930'
    '11sci/as90940'
    '11sci/as90947'
    '11sci/as90948'
    '11sci/as90950'
    '12phy/as91171'
    '12phy/as91172'
    '12phy/as91173'
    '12phy/as91523'
    '12ess/as91187'
    '12ess/as91189'
    '12ess/as91190'
    '12ess/as91191'
    '12ess/as91192'
)

main() {
    rm error_log
    touch error_log
    rm out.txt
    touch out.txt
    if [ $dev ] ; then
        osascript -e 'display notification "Starting build.." with title "🧬 Science" sound name "Morse"'
    fi
    if cd content; then
        echo "Entered 'content'"
    fi    
    for i in "${MODULES[@]}"; do
        if cd $i; then 
            echo "Entered $i"
            tidyFolders
            createSlides
            cd ../../
        else
            echo "Couldn't enter $i"
        fi
    done
    runHugo
    if [ $dev ] ; then
        osascript -e 'display notification "Build complete!" with title "🧬 Science" sound name "Morse"'
        osascript -e 'tell application "Safari"
            tell window 1
                --options
                set myTab to tab 1
                set myTab to first tab whose URL starts with "http://putaiao.test"

                if current tab is not myTab then set current tab to myTab
                tell myTab to do JavaScript "location.reload();"
            end tell
        end tell'
    fi
}

tidyFolders() {
    for filename in *.zip; do
        rm -f filename
    done
    if [[ -d pdfs ]]; then
        rm -fr pdfs
        echo "    Removed the 'pdfs' directory"
    fi
    if rm -fr slides/*; then
        echo "    Emptied the 'slides' directory"
    fi
    if [[ ! -d 'slides' ]]; then
        mkdir slides
        echo "    Made 'slides' directory"
    fi
}

createSlides() {
    for filename in !(_index).md; do
        [[ -e "$filename" ]] || continue    
        file="${filename##*/}"
        name="${file%%.*}"
        OLDIFS=$IFS
        IFS='-'; read -a array <<< "$name"
        numberlessName=$(printf '%s\n' "$(IFS=-; printf '%s' "${array[*]:1}")")
        IFS=$OLDIFS
        pandoc "${name}.md" \
            --output="slides/${numberlessName}.html" \
            --standalone \
            --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js \
            --incremental \
            --to=revealjs \
            --variable=revealjs-url:/reveal.js
        if [ $? == 0 ]; then
            echo "    Built ${name}.md --> slides/${numberlessName}.html"
        fi
    done
}

runHugo() {
    if cd ../; then
        echo "Moved to the root directory"
    fi
    if rm -rf public; then
        echo "Emptied the 'public' directory"
    fi
    hugo \
        --cleanDestinationDir \
        --gc \
        --minify
}

time main
