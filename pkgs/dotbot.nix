
with import <nixpkgs> {};

buildGoModule rec {
  pname = "dotbot";
  version = "0.0.16";

  src = fetchFromGitHub {
    owner = "sigmonsays";
    repo = "dotbot";
    rev = "v${version}";
    hash = "sha256-hmQmx2AouE0Mf9s+dHl+iFEjyDuYlYNRiXqiUudn1HM";
  };

  vendorHash = "sha256-Zdqh8Y6zpm2aRMDtL6cNFqsHk97BOHLgVy/d2hFbguo";

  meta = with lib; {
    description = "manage dotfiles";
    homepage = "https://github.com/sigmonsays/dotbot";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



