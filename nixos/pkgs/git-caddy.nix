
with import <nixpkgs> {};

buildGoModule rec {
  pname = "git-caddy";
  version = "0.0.17";

  src = fetchFromGitHub {
    name = "${pname}-${version}";
    owner = "sigmonsays";
    repo = "git-caddy";
    rev = "v${version}";
    hash = "sha256-KPe4RReQt5kCQd06exNCp7nrDJuBE845jFh4NWNDsBc=";
  };

  vendorHash = "sha256-88Iy2PcQ8eBxDhepGtFTdxawCN/kiRYSgqBLFMvC9J0=";

  meta = with lib; {
    description = "git repo manager";
    homepage = "https://github.com/sigmonsays/git-caddy";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



