#!/bin/bash

echo "Navigating to content"
cd content

modulesToBuild=(
    "10scie/5-fire-and-fuels"
    "10scie/6-geology"
    "11sci/4-mechanics"
    "11sci/5-genetics"
    "12phy/2-mechanics"
    "12phy/3-electricity"
)

for i in "${modulesToBuild[@]}"; do

    # Navigate to the directory.
    echo "Navigating to $i"
    cd $i
    ls

    cp -r assets slides/

    # Build the HTML slides and
    # PDFs for all markdown docs.
    for filename in markdown/*.md; do
        file=${filename##*/}
        name=${file%%.*}
        echo "Building $name.html"
        pandoc -s --mathjax -i -t revealjs "markdown/$name.md" -o "$name.html"
        echo "Building $name.pdf"
        pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
        ls
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
    cd pdfs
    zip "$topic".zip *
    mv "$topic".zip ../
    cd ../

    cd ../../
done

cd ../
