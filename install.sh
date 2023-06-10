#!/usr/bin/env bash
cp packages.nix configuration.nix /etc/nixos/
cp configuration.nix /etc/nixos/
mkdir -pv /etc/nixos/pkgs
rsync -ar --delete ./pkgs/ /etc/nixos/pkgs/
