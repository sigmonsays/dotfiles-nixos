
with import <nixpkgs> {};

buildGoModule rec {
  pname = "dotbot";
  version = "0.0.15";

  src = fetchFromGitHub {
    owner = "sigmonsays";
    repo = "dotbot";
    rev = "v${version}";
    hash = "sha256-66zURNXvZllnGo803BRGpcxjny4ESmnJNiTkeHDRAmI";
  };

  vendorHash = "sha256-KQr0DtyH3xzlFwsDl3MGLRRLQC4+EtdTOG7IhmNCzV4=";

  meta = with lib; {
    description = "manage dotfiles";
    homepage = "https://github.com/sigmonsays/dotbot";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



