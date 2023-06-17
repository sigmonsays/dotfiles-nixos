
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

  vendorHash = "sha256-YCRbm3rX8GcVtnnwme4d1Hk8S68mUuLj2v9uLs1kiPg=";

  meta = with lib; {
    description = "find file tool";
    homepage = "https://github.com/sigmonsays/findfile";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



