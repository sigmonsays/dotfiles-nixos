with import <nixpkgs> {};


stdenv.mkDerivation rec {

   pname = "example";
   version = "0.0.15";

   src = fetchurl {
    url = "https://github.com/sigmonsays/dotbot/releases/download/v${version}/dotbot-v${version}-linux-amd64.tar.gz";
    sha256 = "sha256-GNoYN9vXAX/CSVMVW7akfzrwFLYAxNTZLub3SBXirF0=";

  };

   buildInputs = [ src ];

   installPhase = ''
       tar vzxf dotbot-v${version}-linux-amd64.tar.gz
       mkdir -p "$out/bin"
       cp -v ./dotbot $out/bin/dotbot
       chmod +x $out/bin/dotbot
   '';

   meta = with lib; {
    homepage = "https://github.com/sigmonsays/dotbot";
    description = "manage dot files";
    license = licenses.gpl3;
    maintainers = [ "sigmonsays" ];
    platforms = [ "x86_64-linux" ];
  };
}
