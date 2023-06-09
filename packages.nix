
pkgs: with pkgs; [

  tree
  vim
  git
  file
  gnumake

  # Emacs packages
  ripgrep
  emacsNativeComp

  # Go development
  gopls
  gotools

  fzf
  jq

  tmux

  # For oflist. Might be time to rewrite this thing
  #python2

  ( import ./pkgs/example.nix )
  ( import ./pkgs/dotbot.nix )
  ( import ./pkgs/git-caddy.nix )

]
