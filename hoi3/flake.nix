{
  inputs = { nixpkgs.url = "github:nixos/nixpkgs/559cf76fa3642106d9f23c9e845baf4d354be682"; };
  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShell.x86_64-linux = import ./shell.nix { pkgs=pkgs; };
    };
}
