{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.common;
in {
  options.modules.common = {
    enable = mkEnableOption "common things";
  };

  config = mkIf cfg.enable {

    environment.systemPackages = with pkgs; [
      file
      fzf
      fzf
      git
      gnumake
      jq
      sift
      tmux
      tree
      vim
    ];

  };
}
