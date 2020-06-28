#!/usr/bin/env bash
set -e

MODULES=(
    '9scie/introduction-to-science'
    '9scie/energy-for-life'
    '9scie/plants-as-producers'
    '10scie/5-fire-and-fuels'
    '10scie/6-geology'
    '11sci/as90940'
    '11sci/as90930'
    '11sci/as90948'
    '12phy/as91171'
    #'12phy/5-maths'
    '12ess/2-extreme-earth-events'
    '12phy/as91173'
    '12phy/as91523'
    '12phy/4-nuclear'
)

cd content || exit
echo "Entered 'content'"
for i in "${MODULES[@]}"; do
    if cd $i; then
        if mv $(ls *.md | grep -v _index.md) markdown; then
            echo "    Put Markdown files back in 'markdown'"
        fi
        cd ../../
    fi
done