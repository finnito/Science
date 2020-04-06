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
    for i in "${MODULES[@]}"; do
        cd $i || exit
        if [[ ! -d 'pdfs' ]]; then
            mkdir pdfs
        fi
        if [[ ! -d 'slides' ]]; then
            mkdir slides
        fi
        cd ../ || exit
    done
    #cd ../ || exit
}

createSlidesPDFs() {
    for i in "${MODULES[@]}"; do
        cd i || exit
        cp -a assets slides/

        for filename in markdown/*.md; do
            file=${filename##*/}
            name=${file%%.*}
            pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/$name.md" -o "$name.html" -V revealjs-url=/reveal.js
            pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
        done

        mv *.html slides/
        mv *.pdf pdfs/
        cd ../ || exit
    done
    #cd ../ || exit
}

createZIPs() {
    for i in "${MODULES[@]}"; do
        cd i || exit
        topic=${PWD##*/}
        cd pdfs || exit
        zip "$topic".zip *.pdf
        mv "$topic".zip ../
        cd ../ || exit
        cd ../ || exit
    done
    #cd ../ || exit
}

moveMarkdownFiles() {
    for i in "${MODULES[@]}"; do
        cd i || exit
        mv markdown/* ./
        cd ../ || exit
    done
}



#for i in "${MODULES[@]}"; do
#
    # Navigate to the directory.
    
    #cp -a assets slides/

    # Build the HTML slides and
    # PDFs for all markdown docs.
    #for filename in markdown/*.md; do
        #file=${filename##*/}
        #name=${file%%.*}
        #pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/$name.md" -o "$name.html" -V revealjs-url=/reveal.js
        #pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
    #done

    # Put the HTML slides and
    # PDFs into the right place.
    #mv *.html slides/
    #mv *.pdf pdfs/

    # Create a ZIP of the PDFs
    # available for download.
    #topic=${PWD##*/}
    #cd pdfs || exit
    #zip "$topic".zip *.pdf
    #mv "$topic".zip ../
    #cd ../ || exit

    # Put the .md slide files in the parent
    # directory for Hugo
    #mv markdown/* ./
    #cd ../../ || exit
#done

runHugo() {
    cd ../ || exit
    rm -rf public
    hugo
    cd content || exit
}

resetMarkdownFiles() {
    for i in "${modulesToBuild[@]}"; do
        cd $i || exit
        mv ./*.md markdown/
        mv markdown/_index.md ./
        cd ../../ || exit
    done
}

main
