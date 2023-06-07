with import <nixpkgs> {};

let
   do
in

stdenv.mkDerivation rec {

   pname = "example";
   version = "0.0.15";

   src = fetchurl {
    url = "https://github.com/sigmonsays/dotbot/releases/download/v${version}/dotbot-v${version}-linux-amd64.tar.gz";
    sha256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855";

  };

   #buildInputs = [ ];

   installPhase = ''
       mkdir -p "$out/bin"
       cp ${src}/bin/dotbot $out/bin/dotbot
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
