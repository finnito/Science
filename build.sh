#!/usr/bin/env bash

MODULES=(
    '9scie/introduction-to-science'
    '9scie/energy-for-life'
    '10scie/5-fire-and-fuels'
    '10scie/6-geology'
    '11sci/4-mechanics'
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
    createFolders
    createSlidesPDFs
    createZIPs
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
		[[ -e "$filename" ]] || continue	
		file="${filename##*/}"
                name="${file%%.*}"
                echo "$file"
                echo "$name"
                pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs "markdown/${name}.md" -o "${name}.html" -V revealjs-url=/reveal.js
                pandoc "markdown/${name}.md" -o "${name}.pdf" --pdf-engine=pdflatex
                # Include a build step to make a full book
                # pandoc $(cat order.txt | xargs) -o book.pdf --pdf-engine=pdflatex
				mv "${name}.html" slides/
				mv "${name}.pdf" pdfs/
            done

            
			#mv *.html slides/
            #mv *.pdf pdfs/
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
        count="$( find pdfs -mindepth 1 -maxdepth 1 | wc -l )"
        if [[ ! $count -eq 0 ]]; then
            topic=${PWD##*/}
            #cd pdfs || exit
            zip "$topic".zip pdfs/*
            #mv "$topic".zip ../
        fi
        #cd ../ || exit
        cd ../../ || exit
    done
    echo $PWD
    #cd ../ || exit
}

moveMarkdownFiles() {
	echo "moving markdown files"
    for i in "${MODULES[@]}"; do
        echo "$i"
        cd $i || exit
		#if [[ -d 'markdown' ]]; then
		#count="$( find markdown -mindepth 1 -maxdepth 1 | wc -l )"
		#if [[ ! $count -eq 0 ]]; then
		mv markdown/* ./
		#fi
        #fi
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
	echo 'resetting markdown files'
    for i in "${MODULES[@]}"; do
        echo "$i"
        cd $i || exit
        #count="$( find *.md -mindepth 1 -maxdepth 1 | wc -l )"
		#if [[ ! $count -eq 0 ]]; then
		mv *.md markdown/
		mv markdown/_index.md ./
		#fi
        cd ../../ || exit
    done
    echo $PWD
}

main
