
with import <nixpkgs> {};


let
   example = writeShellScriptBin "example" ''
      echo "hello world"
   '';
in

stdenv.mkDerivation rec {

   pname = "example";
   version = "1.0.0";

   src = ./.;

   #nativeBuildInputs = [ ] ;

   buildInputs = [ example ];

   installPhase = ''
       mkdir -p "$out/bin"
       cp ${example}/bin/example $out/bin/example
       chmod +x $out/bin/example
   '';

   meta = with lib; {
    homepage = "https://example.net/";
    description = "a example";
    license = licenses.gpl3;
    maintainers = [ "nobody" ];
    platforms = [ "x86_64-linux" ];
  };
}
