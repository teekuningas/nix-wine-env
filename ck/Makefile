install: src/setup.exe
	bash install.sh

run: .wine
	nix run --override-input nixpkgs nixpkgs/nixos-20.09 --impure github:guibou/nixGL -- bash run.sh

shell:
	nix develop
