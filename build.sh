#!/usr/bin/env bash
set -e

MODULES=(
    '9scie/introduction-to-science'
    '9scie/energy-for-life'
    '10scie/5-fire-and-fuels'
    '10scie/6-geology'
    '11sci/as90940'
    '11sci/as90930'
    '11sci/as90948'
    '12phy/as91171'
    #'12phy/5-maths'
    '12ess/2-extreme-earth-events'
    '12phy/as91173'
    '12phy/4-nuclear'
)

main() {
    cd content || exit
    echo "Entered 'content'"
    for i in "${MODULES[@]}"; do
        if cd $i; then 
            echo "Entered $i"
            createFolders
            createSlides
            createPDFs
            relocateSlidesPDFs
            createZIPs
            putMDInRoot
            cd ../../
        else
            echo "Couldn't enter $i"
        fi
        echo ""
    done

    runHugo

    for i in "${MODULES[@]}"; do
        if cd $i; then
            echo "Entered $i"
            putMDBack
            cd ../../
        fi
        echo ""
    done

    echo "DONE!"

}

createFolders() {
    if [[ ! -d 'pdfs' ]]; then
        mkdir pdfs
        echo "    Made 'pdfs' directory"
    else
        echo "    Did not make 'pdfs' directory"
    fi
    if [[ ! -d 'slides' ]]; then
        mkdir slides
        echo "    Made 'slides' directory"
    else
        echo "    Did not make 'slides' directory"
    fi
}

copyAssets() {
    if [[ -d 'assets' ]]; then
        cp -a assets slides/
        echo "    Copying assets into slides directory"
    fi
}

createSlides() {
    if [[ -d 'markdown' ]]; then
        for filename in markdown/*.md; do 
            [[ -e "$filename" ]] || continue    
            file="${filename##*/}"
            name="${file%%.*}"
            pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/${name}.md" -o "${name}.html" -V revealjs-url=/reveal.js
            if [ $? == 0 ]; then
                echo "    Built ${name}.md --> ${name}.html"
            fi
        done
    fi
}

createPDFs() {
    if [[ -d 'markdown' ]]; then
        for filename in markdown/*.md; do 
            [[ -e "$filename" ]] || continue    
            file="${filename##*/}"
            name="${file%%.*}"
            pandoc "markdown/${name}.md" -o "${name}.pdf" --pdf-engine=pdflatex
            if [ $? == 0 ]; then
                echo "    Built ${name}.md --> ${name}.pdf"
            fi
        done
    fi
}

relocateSlidesPDFs() {
    if mv *.html slides; then
        echo "    Moved the slides into the 'slides' directory"
    else
        echo "    Could not move the slides into the 'slides' directory"
    fi
    if mv *.pdf pdfs; then
        echo "    Moved the PDFs into the 'pdfs' directory"
    else
        echo "    Could not move the PDFs into the 'pdfs' directory"
    fi
}

createZIPs() {
    count="$( find pdfs -mindepth 1 -maxdepth 1 | wc -l )"
    if [[ ! $count -eq 0 ]]; then
        topic=${PWD##*/}
        zip -uq "$topic".zip pdfs/*
        if [ $? == 0 ]; then
            echo "    Compressed PDFs into ${topic}.zip"
        else
            echo "    Could not compress the PDFs into ${topic}.zip"
        fi
    fi
}

putMDInRoot() {
    if mv markdown/*.md ./; then
        echo "    Moved markdown up a level"
    else
        echo "    Could not move the markdown up a level"
    fi
}

runHugo() {
    if cd ../; then
        echo "    Moved to the root directory"
    else
        echo "    Could not move to the root directory"
    fi
    if rm -rf public; then
        echo "    Emptied the 'public' directory"
    else
        echo "    Could not empty the 'public' directory"
    fi
    if hugo; then
        echo "    Ran Hugo"
    else
        echo "    Could not run Hugo"
    fi
    if cd content; then
        echo "    Entered 'content'"
    else
        echo "    Could not enter the 'content' directory"
    fi
}

putMDBack() {
    if mv $(ls *.md | grep -v _index.md) markdown; then
        echo "    Put Markdown files back in 'markdown'"
    fi
}

main
