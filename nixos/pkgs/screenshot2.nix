
with import <nixpkgs> {};

buildGoModule rec {
  pname = "screenshot2";
  version = "0.0.17";

  src = fetchFromGitHub {
    name = "${pname}-${version}";
    owner = "sigmonsays";
    repo = "screenshot2";
    rev = "v${version}";
    hash = "sha256-ErsnYRVQ3dNkjjTcGtvlx3DxtOxl6LdHjtb2QFwnR9w";
  };

  vendorHash = "sha256-QpizrQw8yG+bv+s1eO39xVKOjkMllKO6aCStt5hJlHU";

  meta = with lib; {
    description = "screenshot tool";
    homepage = "https://github.com/sigmonsays/screenshot2";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



