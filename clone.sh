#!/bin/bash

REPOS=(
    "https://github.com/s-saanvi/e1.git"
    "https://github.com/s-saanvi/e2.git"
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
