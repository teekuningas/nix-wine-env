SCRIPT=`realpath $0`
FOLDER=`dirname $SCRIPT`
WINEPREFIX=$FOLDER/.wine wine src/setup_dlc.exe
