{ pkgs ? import <nixpkgs> {} }:
  pkgs.stdenv.mkDerivation {
    name = "trix-0.1";
    src = ./.;
    dontBuild = true;
    dontStrip = true;
    installPhase = ''
      mkdir -p $out/bin
      cp *.nix $out/bin
      cp trix $out/bin
    '';
  }


