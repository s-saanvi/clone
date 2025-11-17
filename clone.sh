#!/bin/bash

REPOS=(
    "https://github.com/s-saanvi/e1.git"
    "https://github.com/s-saanvi/e2.git"
        "https://github.com/s-saanvi/e3.git"
    "https://github.com/s-saanvi/e4.git"
        "https://github.com/s-saanvi/e5.git"
    "https://github.com/s-saanvi/e6.git"
        "https://github.com/s-saanvi/e7.git"
    "https://github.com/s-saanvi/e8.git"
        "https://github.com/s-saanvi/e9.git"
    "https://github.com/s-saanvi/e10.git"
        "https://github.com/s-saanvi/e11.git"
    "https://github.com/s-saanvi/e12.git"
    "https://github.com/s-saanvi/e13.git"
)

for REPO in "${REPOS[@]}"; do
    echo "Cloning $REPO ..."

    # Clone normally
    git clone "$REPO"

    # Folder name (remove .git)
    FOLDER=$(basename "$REPO" .git)

    # Hidden folder name
    HIDDEN=".$FOLDER"

    echo "Moving $FOLDER → $HIDDEN"
    mv "$FOLDER" "$HIDDEN"
done

echo "Done!"
