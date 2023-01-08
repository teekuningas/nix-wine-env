SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

EU_PATH="$FOLDER/.wine/drive_c/GOG Games/Pharaoh Gold/"
EU_FNAME="Pharaoh.exe"

cd "$EU_PATH"
WINEPREFIX=$FOLDER/.wine wine $EU_FNAME
