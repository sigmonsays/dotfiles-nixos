
with import <nixpkgs> {};

buildGoModule rec {
  pname = "findfile";
  version = "0.0.8";

  src = fetchFromGitHub {
    owner = "sigmonsays";
    repo = "findfile";
    rev = "v${version}";
    hash = "sha256-nuyaH268yvyIYaM/DNgWkQCszP+/Xu2nPszGw5AC2Hg=";
  };

  vendorHash = "sha256-Zdqh8Y6zpm2aRMDtL6cNFqsHk97BOHLgVy/d2hFbguo";

  meta = with lib; {
    description = "find file tool";
    homepage = "https://github.com/sigmonsays/findfile";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



