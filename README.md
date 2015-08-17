# trix

Trix is a tool for finding and installing, and navigating nix
expressions. The tool is intendet to be easy to use and to accompany
shells like zsh to enable auto completions.

The project hopes to use nix-language as much as possible.

## Usage
Use `trix -h` to get a list of features.

### Expand 

Expands a nix expression. Write the start of an expression and get a
list of expressions.

```
trix -x nixos.pkgs.hask
nixos.pkgs.haskell
..
..
```
