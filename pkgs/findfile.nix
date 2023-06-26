
with import <nixpkgs> {};

buildGoModule rec {
  pname = "findfile";
  version = "0.0.9";

  src = fetchFromGitHub {
    name = "${pname}-${version}";
    owner = "sigmonsays";
    repo = "findfile";
    rev = "v${version}";
    hash = "sha256-wTZx70cLxfBH2Lz+1zNepfgfRnwKLYtA3AQb6/lSwAo=";
  };

  vendorHash = "sha256-YCRbm3rX8GcVtnnwme4d1Hk8S68mUuLj2v9uLs1kiPg=";

  meta = with lib; {
    description = "find file tool";
    homepage = "https://github.com/sigmonsays/findfile";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



