#!/bin/bash

# Klasična provjera: jesi li mi dao 2 argumenta?
if [ "$#" -ne 2 ]; then
    echo "Stari, fali ti nešto. Trebam točno 2 argumenta."
    exit 1
fi

PUTANJA=$1
EXT=$2
NASAO_BILO_STA=false

# Idemo kroz sve u folderu
for f in "$PUTANJA"/*"$EXT"; do
    # Provjeri je li to stvarno datoteka (da nije prazan string ako nema ničeg)
    if [ -f "$f" ]; then
        basename "$f"
        NASAO_BILO_STA=true
    fi
done

if [ "$NASAO_BILO_STA" = false ]; then
    echo "Nema takvih datoteka s nastavkom $EXT."
fi
