SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

EU_PATH="$FOLDER/.wine/drive_c/Program Files/GameTop.com/Garden Rescue"
EU_FNAME="garden_rescue.exe"

cd "$EU_PATH"
WINEPREFIX=$FOLDER/.wine wine $EU_FNAME
