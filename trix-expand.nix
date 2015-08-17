{path ? [] }:
with builtins;
with (import ./trix-utils.nix);
let
  pkgs = import <nixpkgs> { };
  set = get pkgs path;
  names = attrNames set;
  packagesOnly = name: let
    value = getAttr name set;
    tried = tryEval (isAttrs value);
    in tried.success && tried.value;
in 
  filter packagesOnly names
  

