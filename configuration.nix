{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];


  nix.settings.experimental-features = [ "nix-command" ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  networking.hostName = "nixos";
  time.timeZone = "America/Los_Angeles";

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.sandbox = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     packages = with pkgs; [
       tree
     ];
  };
  users.users.sig = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     packages = with pkgs; [
       tree
     ];
  };

  security.sudo.extraRules = [
    {
      users = [ "sig" ];
      commands = [
        {
          command = "ALL";
          options = [ "SETENV" "NOPASSWD" ];
        }
      ];
    }
  ];

  environment.systemPackages = import ./system-packages.nix pkgs;

  services.openssh.enable = true;

  networking.firewall.enable = false;

  system.stateVersion = "23.11";
}
