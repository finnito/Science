#!/bin/bash

echo "Navigating to content"
cd content

modulesToBuild=(
    "9scie/1-introduction-to-science"
    #"10scie/5-fire-and-fuels"
    #"10scie/6-geology"
    #"11sci/4-mechanics"
    "11sci/1-chemical-investigation"
    #"11sci/5-genetics"
    "12phy/2-mechanics"
    "12phy/5-maths"
    "12ess/2-extreme-earth-events"
    #"12phy/3-electricity"
    #"12phy/4-nuclear"
)

for i in "${modulesToBuild[@]}"; do

    # Navigate to the directory.
    echo "Navigating to $i"
    cd $i
    # ls

    # echo "Making pdfs directory"
    mkdir pdfs
    mkdir slides

    echo "Copying assets into slides"
    cp -a assets slides/

    # Build the HTML slides and
    # PDFs for all markdown docs.
    for filename in markdown/*.md; do
        file=${filename##*/}
        name=${file%%.*}
        echo "Building $name.html"
        pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/$name.md" -o "$name.html" -V revealjs-url=/reveal.js
        echo "Building $name.pdf"
        pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
        # ls
    done

    # Put the HTML slides and
    # PDFs into the right place.
    echo "Moving slides & PDFs"
    mv *.html slides/
    mv *.pdf pdfs/

    # Create a ZIP of the PDFs
    # available for download.
    topic=${PWD##*/}
    echo "Creating $topic.zip"
    # ls
    cd pdfs
    zip "$topic".zip *.pdf
    mv "$topic".zip ../
    cd ../

    # Put the .md slide files in the parent
    # directory for Hugo
    mv markdown/* ./

    # cd ../../../
    # rm -rf public
    # hugo
    # cd content
    # cd $i

    # mv ./*.md markdown/
    # mv markdown/_index.md ./

    echo "Should be back in content"
    cd ../../
    # ls
done

cd ../
rm -rf public
hugo
cd content

for i in "${modulesToBuild[@]}"; do
    cd $i
    mv ./*.md markdown/
    mv markdown/_index.md ./
    cd ../../
done