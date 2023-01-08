install: src/setup.exe
	bash install.sh

run: .wine
	bash run.sh

shell:
	nix-build shell.nix -A inputDerivation -o .nix-shell-inputs && nix-shell
