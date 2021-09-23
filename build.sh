#!/usr/bin/env bash

# TODO: Migrate build.sh to a python script

shopt -s nullglob extglob

while getopts hdf:p: opt; do
    case "${opt}" in
        f) file=${OPTARG};;
        p) folder=${OPTARG};;
        d) dev=1;;
        h) doHugo=1;;
        *)
            echo "Invalid flags. The only valid flags are: -fpdh"
            shift
            exit
            ;;
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
    '10scie/ecology'
    '10scie/electricity'
    '10scie/end-of-year'
    '10scie/geology'
    '10scie/human-diseases'
    '10scie/introduction'
    '10scie/junior-exams'
    '10scie/phun-reactions'
    '10scie/science-fair'
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
    : > error_log
    : > stdout_log

    # This script may be called in a dev (-d flag) environment
    # in which it should only do a partial build.
    if [ $dev ] ; then
        terminal-notifier \
            -group "com.finnlesueur.science" \
            -title "Pūtaiao" \
            -subtitle "Building Hugo" \
            -message "Changed: $file" \
            -appIcon http://putaiao.test/favicon.png

        if [ $doHugo ]; then
            # If -h flag then only do a Hugo
            # build because only an _index.md
            # file was changed.
            cd content || exit
            runHugo
        else
            # A slide file was changed, so we
            # need to build it.
            cd "$folder" || exit
            tidyFolders
            slides=("$file")
            createSlides "${slides[@]}"
            # buildSingleSlide "$file"
            cd ../../
            runHugo
        fi

        terminal-notifier \
            -group "com.finnlesueur.science" \
            -title "Pūtaiao" \
            -message "Build complete!" \
            -appIcon http://putaiao.test/favicon.png

        # osascript -e 'tell application "Firefox"
        #     activate
        #     tell application "System Events" to keystroke "r" using command down
        #     delay 0.1
        # end tell
        # tell application "Sublime Text"
        #     activate
        # end tell'

        # osascript -e 'tell application "Safari"
        #     tell window 1
        #         --options
        #         set myTab to tab 1
        #         set myTab to first tab whose URL starts with "http://putaiao.test"

        #         if current tab is not myTab then set current tab to myTab
        #         tell myTab to do JavaScript "location.reload();"
        #     end tell
        # end tell'
    
    # Here we do a full build because the -d flag
    # was not passed.
    else
        if cd content; then
            echo "Entered 'content'"
        fi    
        for i in "${MODULES[@]}"; do
            if cd "$i"; then 
                echo "Entered $i"
                compileGitLog "$i"
                tidyFolders
                slides=(!(_index).md)
                createSlides "${slides[@]}"
                cd ../../
            else
                echo "Couldn't enter $i"
            fi
        done
        runHugo
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
    if [ ! $dev ] ; then
        if rm -fr slides/*; then
            echo "    Emptied the 'slides' directory"
        fi
    fi
    if [[ ! -d 'slides' ]]; then
        mkdir slides
        echo "    Made 'slides' directory"
    fi
}

createSlides() {
    files=("$@")
    for filename in "${files[@]}"; do
        name=$(getFilename "$filename")
        numberlessName=$(getNumberlessFilename "$filename")
        callPandoc "$name" "$numberlessName"
        if [ $? == 0 ]; then
            echo "    Built ${name}.md --> slides/${numberlessName}.html"
        fi
    done
}

getFilename() {
    [[ -e "$1" ]] || return    
    file="${1##*/}"
    name="${file%%.*}"
    echo "$name"
}

getNumberlessFilename() {
    [[ -e "$1" ]] || return    
    file="${1##*/}"
    name="${file%%.*}"
    OLDIFS=$IFS
    IFS='-'; read -ra array <<< "$name"
    numberlessName=$(printf '%s\n' "$(IFS=-; printf '%s' "${array[*]:1}")")
    IFS=$OLDIFS
    echo "$numberlessName"
}
callPandoc() {
    # $name=$1
    # $numberlessName=$2
    year=$(date +"%Y")
    pandoc "${name}.md" \
        --to=revealjs \
        --template=default.revealjs \
        --mathjax\
        --output="slides/${numberlessName}.html" \
        --standalone \
        --incremental \
        --variable=controls:true \
        --variable=progress:true \
        --variable=showSlideNumber:all \
        --variable=transition:slide \
        --variable=plugins:GoBack,Clock \
        --variable=revealjs-url:/reveal.js-4.1.0 \
        --variable=embedded:false \
        --variable=showNotes:false \
        --variable=overview:false \
        --variable=hash:true \
        --variable=fragmentInURL:true \
        --variable=date:"$year" \
        --variable=theme:finn \
        --variable=author:"Finn Le Sueur" \
        --variable=dev:"$dev" \
        --variable=liveReloadPort:1313
}

compileGitLog() {
    OLDIFS=$IFS
    IFS='/'; read -ra array <<< "$1"
    yr=$(printf '%s' "$(IFS=/; printf '%s' "${array[*]::1}")")
    IFS=$OLDIFS
    outputFile="../../../static/$1/changelog.txt"
    mkdir "../../../static/$yr"
    mkdir "../../../static/$1"
    echo "" > "$outputFile"
    echo "<details><summary>Full History</summary>" >> "$outputFile"
    git log --name-status --pretty=format:"</pre></li><li><a href='https://github.com/finnito/Science/commit/%H'>%cn %ar</a> %s %d<pre>" ./ >> "$outputFile"
    echo "</pre></li>" >> "$outputFile"
    echo "</details>" >> "$outputFile"
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

(time main) &> stdout_log
