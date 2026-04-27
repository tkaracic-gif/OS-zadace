
if [ "$#" -ne 1 ]; then
    echo "Daj mi samo JEDAN naziv foldera."
    exit 1
fi

FOLDER=$1


if [ -d "./$FOLDER" ]; then
    zip -r svi_zapisi.zip "$FOLDER"
    echo "Sve je spakirano u svi_zapisi.zip"
else
    echo "Direktorij ne postoji ovdje."
    exit 1
fi
