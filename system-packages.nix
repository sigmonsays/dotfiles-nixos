
pkgs: with pkgs; [

  tree
  vim
  git
  file
  gnumake

  ( import ./pkgs/example.nix )
  #( import ./pkgs/dotbot.nix )

]
