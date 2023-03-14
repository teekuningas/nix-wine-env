install: src/setup.exe
	bash install.sh

run: .wine
	nix run --override-input nixpkgs nixpkgs/nixos-20.09 --impure github:guibou/nixGL/643e730efb981ffaf8478f441ec9b9aeea1c89f5 -- bash run.sh

shell:
	nix develop
