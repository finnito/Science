#!/bin/sh

modulesToBuild=(
    "/builds/Finnito/science/content/10sci/5-fire-and-fuels"
    "/builds/Finnito/science/content/10scie/6-geology"
    "/builds/Finnito/science/content/11sci/4-mechanics"
    "/builds/Finnito/science/content/11sci/5-genetics"
    "/builds/Finnito/science/content/12phy/2-mechanics"
    "/builds/Finnito/science/content/12phy/3-electricity"
)

for i in "${modulesToBuild[@]}"; do

    # Navigate to the directory.
    echo "Navigating to $i"
    cd $i

    # Build the HTML slides and
    # PDFs for all markdown docs.
    for filename in markdown/*.md; do
        file=${filename##*/}
        name=${file%%.*}
        echo "Building $name.html"
        /usr/local/bin/pandoc -s --mathjax -i -t revealjs "markdown/$name.md" -o "$name.html"
        echo "Building $name.pdf"
        /usr/local/bin/pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
    done

    # Put the HTML slides and
    # PDFs into the right place.
    echo "Moving slides & PDFs"
    mv *.html slides/
    mv *.pdf pdfs/

    # Create a ZIP of the PDFs
    # available for download.
    echo "Creating .zip"
    topic=${PWD##*/}
    cd pdfs
    zip "$topic".zip *
    mv *.zip ../
    cd ../
done