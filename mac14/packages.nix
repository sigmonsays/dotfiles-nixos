{ config, pkgs, ... }:

{
  home.packages = [
    # Better userspace
    pkgs.findutils
    pkgs.coreutils
    pkgs.bashInteractive
    pkgs.gnumake

    # tools
    pkgs.htop
    #pkgs.sift
    pkgs.fortune
    pkgs.fzf
    pkgs.git
    pkgs.jq
    pkgs.gdu
    pkgs.tmsu
    pkgs.neovim
    pkgs.gcc


    # My random stuff
    ( import ../nixos/pkgs/dotbot.nix )
    ( import ../nixos/pkgs/git-caddy.nix )
    ( import ../nixos/pkgs/findfile.nix )

    # nix tools
    pkgs.nixos-rebuild

    # virtualization
    #pkgs.podman
    # pkgs.qemu

  ];
}
