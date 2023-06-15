{
  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/20.09"; 
    nixgl.url = "github:guibou/nixGL/643e730efb981ffaf8478f441ec9b9aeea1c89f5"; 
    nixgl.inputs.nixpkgs.follows = "nixpkgs";

  };
  outputs = { self, nixpkgs, nixgl }:
    let 
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      nixGLIntel = nixgl.packages.x86_64-linux.nixGLIntel;
    in
    {
      devShell.x86_64-linux = import ./shell.nix { pkgs=pkgs; };
      packages.x86_64-linux.nixgl = nixGLIntel;
    };
}
