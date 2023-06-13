
{ config, pkgs, ... }:

{
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [

    pkgs.htop
    pkgs.tree
    pkgs.sift
    pkgs.fortune
    pkgs.git
    pkgs.jq
    pkgs.tmsu
    pkgs.neovim

    # Emacs
    pkgs.emacsNativeComp
    pkgs.ripgrep

    # nix tools
    pkgs.nixos-rebuild

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
