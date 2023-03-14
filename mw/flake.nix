{
  inputs = { 
    wine-nixpkgs.url = "github:nixos/nixpkgs/20.09"; 
    nixpkgs.url = "github:nixos/nixpkgs/22.11";
    nixgl.url = "github:guibou/nixGL/643e730efb981ffaf8478f441ec9b9aeea1c89f5"; 
    nixgl.inputs.nixpkgs.follows = "nixpkgs";

  };
  outputs = { self, wine-nixpkgs, nixpkgs, nixgl }:
    let 
      wine-pkgs = wine-nixpkgs.legacyPackages.x86_64-linux;
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      nixGLIntel = nixgl.packages.x86_64-linux.nixGLIntel;
    in
    {
      devShell.x86_64-linux = import ./shell.nix { pkgs=pkgs; wine-pkgs=wine-pkgs; };
      packages.x86_64-linux.nixgl = nixGLIntel;
    };
}
