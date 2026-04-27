#!/bin/bash

BROJ=$1

# Provjera je li broj između 1 i 10
if [[ "$BROJ" -lt 1 || "$BROJ" -gt 10 ]]; then
    echo "Error: Broj mora biti od 1 do 10."
    exit 1
fi

# Generiraj brojeve i spremi u datoteku (overwrite način)
seq 1 "$BROJ" > brojevi.txt
echo "Gotovo! Pogledaj brojevi.txt"
