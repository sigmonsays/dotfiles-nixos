{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "23.05"; # Please read the comment before changing.

  imports = [
    ./packages.nix
    ./dotfiles.nix
    ./modules/common
    ./modules/emacs
  ];

  modules.common.enable = true;
  modules.emacs.enable = true;

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
