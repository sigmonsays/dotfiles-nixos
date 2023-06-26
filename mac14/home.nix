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
    ./modules/screenshot2
  ];

  modules.common.enable = true;
  modules.emacs.enable = true;
  modules.screenshot2.enable = true;

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
