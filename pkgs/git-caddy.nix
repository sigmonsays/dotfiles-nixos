
with import <nixpkgs> {};

buildGoModule rec {
  pname = "git-caddy";
  version = "0.0.16";

  src = fetchFromGitHub {
    owner = "sigmonsays";
    repo = "git-caddy";
    rev = "v${version}";
    hash = "sha256-vchX5zYpPbkhpTk6Eb4/ESbOn66U4j8IAHQW4QnvKCU=";
  };

  vendorHash = "sha256-88Iy2PcQ8eBxDhepGtFTdxawCN/kiRYSgqBLFMvC9J0=";

  meta = with lib; {
    description = "git repo manager";
    homepage = "https://github.com/sigmonsays/git-caddy";
    license = licenses.mit;
    maintainers = [ "sigmonsays" ];
  };
}



