# Needs both winetricks and wine in PATH
WINEPREFIX=${PWD}/.wine
WINEBIN=$(which wine)

WINEPREFIX=${WINEPREFIX} \
  WINE=${WINEBIN} \
  winetricks d3dcompiler_42 d3dx9_41 d3dx9_42 quartz
