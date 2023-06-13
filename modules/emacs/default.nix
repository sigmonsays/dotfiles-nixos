{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.emacs;
in {
  options.modules.emacs = {
    enable = mkEnableOption "emacs editor";
    # greeter = mkOption {
    #   type = types.str;
    #   default = "world";
    # };
  };

  config = mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      ripgrep
      sift
      emacsNativeComp
    ];

  };
}
