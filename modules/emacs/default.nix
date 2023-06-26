{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.emacs;
in {
  options.modules.emacs = {
    enable = mkEnableOption "emacs things";
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      # Emacs
      emacsNativeComp
      ripgrep
      python3
    ];

  };
}
