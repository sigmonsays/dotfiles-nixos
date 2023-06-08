
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

  # For oflist. Might be time to rewrite this thing
  python2

  ( import ./pkgs/example.nix )
  ( import ./pkgs/dotbot.nix )

]
