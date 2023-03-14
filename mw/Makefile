install: src/setup.exe
	bash install.sh

run: .wine
	nix develop --command nix run .#nixgl -- bash run.sh

configure: .wine
	nix develop --command nix run .#nixgl -- bash configure.sh

shell:
	nix develop
