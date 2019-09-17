#!/bin/bash

echo "Navigating to content"
cd public

modulesToBuild=(
    "10scie/5-fire-and-fuels"
    "10scie/6-geology"
    "11sci/4-mechanics"
    "11sci/5-genetics"
    "12phy/2-mechanics"
    "12phy/3-electricity"
    "12phy/4-nuclear"
)

for i in "${modulesToBuild[@]}"; do

    # Navigate to the directory.
    echo "Navigating to $i"
    cd $i
    # ls

    echo "Copying assets into slides"
    find slides -type d -maxdepth 1 -exec cp -r assets {} \;

    echo "Should be back in content"
    cd ../../
    # ls
done