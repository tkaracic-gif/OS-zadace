

BROJ=$1


if [[ "$BROJ" -lt 1 || "$BROJ" -gt 10 ]]; then
    echo "Error: Broj mora biti od 1 do 10."
    exit 1
fi


seq 1 "$BROJ" > brojevi.txt
echo "Gotovo! Pogledaj brojevi.txt"
