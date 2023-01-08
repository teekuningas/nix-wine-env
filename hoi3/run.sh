SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

EU_PATH="$FOLDER/.wine/drive_c/GOG Games/Hearts of Iron III"
EU_FNAME="hoi3game.exe"

cd "$EU_PATH"
WINEPREFIX=$FOLDER/.wine wine $EU_FNAME
