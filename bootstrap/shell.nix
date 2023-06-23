{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [

    git
    gnumake
    wget
    curl

    ( import ./pkgs/dotbot.nix )

  ];
}
