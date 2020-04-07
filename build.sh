#!/usr/bin/env bash
set -e

MODULES=(
    '9scie/introduction-to-science'
    #'10scie/5-fire-and-fuels'
    #'10scie/6-geology'
    #'11sci/4-mechanics'
    '11sci/as90930'
    '11sci/as90948'
    '12phy/as91171'
    '12phy/5-maths'
    '12ess/2-extreme-earth-events'
    #'12phy/3-electricity'
    #'12phy/4-nuclear'
)

main() {
    cd content || exit
    createFolders
    createSlidesPDFs
    createZips
    moveMarkdownFiles
    runHugo
    resetMarkdownFiles
}

createFolders() {
    echo $PWD
    for i in "${MODULES[@]}"; do
        echo $PWD
        cd $i || exit
        if [[ ! -d 'pdfs' ]]; then
            mkdir pdfs
        fi
        if [[ ! -d 'slides' ]]; then
            mkdir slides
        fi
        cd ../../ || exit
    done
    echo $PWD
    #cd ../ || exit
}

createSlidesPDFs() {
    echo $PWD
    for i in "${MODULES[@]}"; do
        echo $PWD
        cd $i || exit
        
        if [[ -d 'assets' ]]; then
            cp -a assets slides/
        fi

        if [[ -d 'markdown' ]]; then
            for filename in markdown/*.md; do
                file=${filename##*/}
                name=${file%%.*}
                pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/$name.md" -o "$name.html" -V revealjs-url=/reveal.js
                pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
            done

            mv *.html slides/
            mv *.pdf pdfs/
        fi
        cd ../../ || exit
    done
    echo $PWD
    #cd ../ || exit
}

createZIPs() {
    for i in "${MODULES[@]}"; do
        echo $PWD
        cd $i || exit
        topic=${PWD##*/}
        cd pdfs || exit
        zip "$topic".zip *.pdf
        mv "$topic".zip ../
        cd ../ || exit
        cd ../../ || exit
    done
    echo $PWD
    #cd ../ || exit
}

moveMarkdownFiles() {
    for i in "${MODULES[@]}"; do
        echo $PWD
        cd $i || exit
        mv markdown/* ./
        cd ../../ || exit
    done
    echo $PWD
}

runHugo() {
    cd ../ || exit
    echo $PWD
    rm -rf public
    hugo
    cd content || exit
    echo $PWD
}

resetMarkdownFiles() {
    for i in "${modulesToBuild[@]}"; do
        echo $PWD
        cd $i || exit
        mv ./*.md markdown/
        mv markdown/_index.md ./
        cd ../../ || exit
    done
    echo $PWD
}

main
