#!/usr/bin/env sh

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# Logout/login of shell (Maybe)

# install
nix-shell '<home-manager>' -A install


# activate
home-manager switch
