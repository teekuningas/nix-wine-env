install: src/setup.exe
	bash install.sh

run: .wine
	nix run --override-input nixpkgs github:nixos/nixpkgs/559cf76fa3642106d9f23c9e845baf4d354be682 --impure github:guibou/nixGL -- bash run.sh

shell:
	nix develop
