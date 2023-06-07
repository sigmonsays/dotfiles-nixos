
pkgs: with pkgs; [

  tree
  vim
  git

  gnumake


  ( import ./pkgs/example.nix )
  ( import ./pkgs/dotbot.nix )

]
