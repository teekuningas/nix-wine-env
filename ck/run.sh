SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

EU_PATH="$FOLDER/.wine/drive_c/GOG Games/Crusader Kings Complete"
EU_FNAME="Crusaders.exe"

cd "$EU_PATH"
WINEPREFIX=$FOLDER/.wine wine $EU_FNAME
