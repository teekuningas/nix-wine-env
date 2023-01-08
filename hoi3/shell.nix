{ pkgs ? import <nixpkgs> {} }:
let 

  fetchurl = args@{url, sha256, ...}:
    pkgs.fetchurl { inherit url sha256; } // args;

  src = fetchurl rec {

    version = "5.22";
    url = "https://dl.winehq.org/wine/source/5.x/wine-${version}.tar.xz";
    sha256 = "sha256-Cb0GyHyMl05q00UHzsh11yF+tW/Anfg41UU+DrvOTSE=";

    ## see http://wiki.winehq.org/Gecko
    gecko32 = fetchurl rec {
      version = "2.47.1";
      url = "https://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86.msi";
      sha256 = "0ld03pjm65xkpgqkvfsmk6h9krjsqbgxw4b8rvl2fj20j8l0w2zh";
    };
    gecko64 = fetchurl rec {
      version = "2.47.1";
      url = "https://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86_64.msi";
      sha256 = "0jj7azmpy07319238g52a8m4nkdwj9g010i355ykxnl8m5wjwcb9";
    };

    ## see http://wiki.winehq.org/Mono
    mono = fetchurl rec {
      version = "5.1.1";
      url = "https://dl.winehq.org/wine/wine-mono/${version}/wine-mono-${version}-x86.msi";
      sha256 = "09wjrfxbw0072iv6d2vqnkc3y7dzj15vp8mv4ay44n1qp5ji4m3l";
    };
  };

  wine = pkgs.wine.overrideAttrs(old: {
    name = "wine-5.22";
    patches = [];
    src = src;
  });
in pkgs.mkShell {
  nativeBuildInputs = [ wine ];
}
