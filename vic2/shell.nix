{ pkgs, winetricks }:
let 

  fetchurl = args@{url, sha256, ...}:
    pkgs.fetchurl { inherit url sha256; } // args;

  src = fetchurl rec {

    version = "4.0.2";
    url = "https://dl.winehq.org/wine/source/4.0/wine-${version}.tar.xz";
    sha256 = "0x5x9pvhryzhq1m7i8gx5wwwj341zz05zymadlhfw5w45xlm0h4r";

    ## see http://wiki.winehq.org/Gecko
    gecko32 = fetchurl rec {
      version = "2.47";
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine_gecko-${version}-x86.msi";
      sha256 = "0fk4fwb4ym8xn0i5jv5r5y198jbpka24xmxgr8hjv5b3blgkd2iv";
    };
    gecko64 = fetchurl rec {
      version = "2.47";
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine_gecko-${version}-x86_64.msi";
      sha256 = "0zaagqsji6zaag92fqwlasjs8v9hwjci5c2agn9m7a8fwljylrf5";
    };

    ## see http://wiki.winehq.org/Mono
    mono = fetchurl rec {
      version = "4.9.2";
      url = "http://dl.winehq.org/wine/wine-mono/${version}/wine-mono-${version}.msi";
      sha256 = "0x7z0216j21bzc9v1q283qlsvbfzn92yiaf26ilh6bd7zib4c7xr";
    };

  };

  wine = (pkgs.wine.override { }).overrideAttrs(old: {
    name = "wine-4.0.2";
    patches = [];
    src = src;
  });

in pkgs.mkShell {
  nativeBuildInputs = [ wine winetricks ];
}
