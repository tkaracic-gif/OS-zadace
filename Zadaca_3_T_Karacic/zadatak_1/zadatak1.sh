
if [ "$#" -ne 2 ]; then
    echo "Stari, fali ti nešto. Trebam točno 2 argumenta."
    exit 1
fi

PUTANJA=$1
EXT=$2
NASAO_BILO_STA=false


for f in "$PUTANJA"/*"$EXT"; do

    if [ -f "$f" ]; then
        basename "$f"
        NASAO_BILO_STA=true
    fi
done

if [ "$NASAO_BILO_STA" = false ]; then
    echo "Nema takvih datoteka s nastavkom $EXT."
fi
