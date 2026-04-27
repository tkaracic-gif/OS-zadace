
if [ "$#" -ne 1 ]; then
    echo "Daj mi apsolutnu putanju do repozitorija."
    exit 1
fi

PUTANJA=$1


if [ ! -d "$PUTANJA" ]; then
    echo "Putanja ne postoji."
    exit 1
fi

if [ ! -d "$PUTANJA/.git" ]; then
    echo "Ovo nije Git repozitorij (fali .git folder)."
    exit 1
fi


cd "$PUTANJA" || exit
touch repozitorij_info.txt
echo "Info generiran: $(date)" > repozitorij_info.txt


git add repozitorij_info.txt
git commit -m "Junior script commit: dodan info file"


echo "Povijest promjena:"
git log --oneline
