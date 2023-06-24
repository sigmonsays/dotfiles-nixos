{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "23.05"; # Please read the comment before changing.

  imports = [
  #  ../modules/common
    ./packages.nix
    ./dotfiles.nix
  ];

  #config.modules.common.enable = true;

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
