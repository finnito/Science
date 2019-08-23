#!/bin/bash

base=${PWD}

echo "Navigating to content"
cd content
ls

modulesToBuild=(
    "$base/10scie/5-fire-and-fuels"
    "$base/10scie/6-geology"
    "$base/11sci/4-mechanics"
    "$base/11sci/5-genetics"
    "$base/12phy/2-mechanics"
    "$base/12phy/3-electricity"
)

for i in "${modulesToBuild[@]}"; do

    # Navigate to the directory.
    echo "Navigating to $i"
    cd $i
    ls

    # Build the HTML slides and
    # PDFs for all markdown docs.
    cd markdown
    for filename in *.md; do
        file=${filename##*/}
        name=${file%%.*}
        echo "Building $name.html"
        pandoc -s --mathjax -i -t revealjs "$name.md" -o "$name.html"
        echo "Building $name.pdf"
        pandoc "$name.md" -o "$name.pdf" --pdf-engine=pdflatex
    done
    ls

    # Put the HTML slides and
    # PDFs into the right place.
    echo "Moving slides & PDFs"
    mv *.html ../slides/
    mv *.pdf ../pdfs/

    # Create a ZIP of the PDFs
    # available for download.
    cd ../
    echo "Creating .zip"
    topic=${PWD##*/}
    cd pdfs
    zip "$topic".zip *
    mv "$topic".zip ../
    cd ../
done
