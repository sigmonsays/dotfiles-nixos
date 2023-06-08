
pkgs: with pkgs; [

  tree
  vim
  git
  file
  gnumake

  ripgrep
  emacsNativeComp

  fzf

  tmux

  ( import ./pkgs/example.nix )
  ( import ./pkgs/dotbot.nix )

]
