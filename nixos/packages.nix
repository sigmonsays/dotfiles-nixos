pkgs: with pkgs; [

  # Go development
  gopls
  godef
  gotools

  # For oflist. Might be time to rewrite this thing
  #python2

  ( import ../pkgs/dotbot.nix )
  ( import ../pkgs/git-caddy.nix )
  ( import ../pkgs/findfile.nix )

]
