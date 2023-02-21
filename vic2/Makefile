install: src/setup.exe
	bash install.sh

install_dlc: src/setup_dlc.exe
	bash install_dlc.sh

postconfigure:
	bash postconfigure.sh

run: .wine
	nix develop --command nix run .#nixgl -- bash run.sh

shell:
	nix develop
