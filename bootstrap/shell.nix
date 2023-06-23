{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [

    git
    gnumake
    wget
    curl

    ( ./pkgs/dotbot.nix )

  ];
}
