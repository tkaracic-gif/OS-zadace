#!/bin/bash

DIR="screenshots"
i=1

# Prvo napravimo te datoteke ako ih nemaš (za test)
mkdir -p $DIR
touch $DIR/bash.png $DIR/nano.png $DIR/vim.png

for file in "$DIR"/*.png; do
    if [ -f "$file" ]; then
        IME=$(basename "$file")
        NOVO="screenshot_${i}_${IME}"
        mv "$file" "$DIR/$NOVO"
        echo "Preimenovao: $NOVO"
        i=$((i+1))
    fi
done
