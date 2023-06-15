SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

EU_PATH="$FOLDER/.wine/drive_c/GOG Games/Crusader Kings II"
EU_FNAME="ck2game.exe"

cd "$EU_PATH"
WINEPREFIX=$FOLDER/.wine wine $EU_FNAME
