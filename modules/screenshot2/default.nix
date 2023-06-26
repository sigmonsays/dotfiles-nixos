{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.screenshot2;
in {
  options.modules.screenshot2 = {
    enable = mkEnableOption "screenshot capture tool";
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      imagemagick
      ( import ../../pkgs/screenshot2.nix )
    ];

  };
}
