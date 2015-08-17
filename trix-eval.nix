{path ? [] }:
with (import ./trix-utils.nix);
let
  pkgs = import <nixpkgs> { };
in 
  get pkgs path
  

