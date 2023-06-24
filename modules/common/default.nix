{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.common;
in {
  options.modules.common = {
    enable = mkEnableOption "common things";
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      tree
    ];

  };
}
