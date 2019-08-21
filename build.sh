#!/bin/bash

# Ensure the script runs from
# the directory it's located in.
scriptDir="$(dirname "$0")"
cd scriptDir

# Check if an argument is given
# If no argument is give, build all MD files,
# else build only the slide given.
if [ $# -eq 0 ]
    then
        for filename in markdown/*.md; do
            file=${filename##*/}
            name=${file%%.*}
            pandoc -s --mathjax -i -t revealjs "markdown/$name.md" -o "$name.html"
            pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
        done
else
    filename=$(find ./markdown -name "$1*")
    file=${filename##*/}
    name=${file%%.*}
    pandoc -s --mathjax -i -t revealjs "markdown/$name.md" -o "$name.html" -V revealjs-url=../reveal.js
    pandoc "markdown/$name.md" -o "$name.pdf" --pdf-engine=pdflatex
fi

# Put files in correct places
mv *.html slides/
mv *.pdf pdfs/
cp -r assets/ slides/assets