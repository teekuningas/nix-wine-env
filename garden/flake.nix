{
  inputs = { nixpkgs.url = "github:nixos/nixpkgs/20.09"; };
  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShell.x86_64-linux = import ./shell.nix { pkgs=pkgs; };
    };
}
