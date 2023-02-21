SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`

VIC_PATH="$FOLDER/.wine/drive_c/GOG Games/Victoria II/"
VIC_FNAME="v2game.exe"

cd "$VIC_PATH"
WINEPREFIX=$FOLDER/.wine wine $VIC_FNAME
