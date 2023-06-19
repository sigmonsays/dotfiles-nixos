{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.modules.syncthing;
in {
  options.modules.syncthing = {
    enable = mkEnableOption "syncthing things";
  };

  config = mkIf cfg.enable {
    services = {
      syncthing = {
          enable = true;
          user = "sig";
          dataDir = "/home/sig";    # Default folder for new synced folders
          configDir = "/home/sig/.config/syncthing";   # Folder for Syncthing's settings and keys
      };
    };



  };
}
