# trix

Trix is a tool for finding and installing, and navigating nix
expressions. The tool is intendet to be easy to use and to accompany
shells like zsh to enable auto completions.

The project hopes to use nix-language as much as possible.

## Installation

Because trix is early in its development, the only way to install it is
by cloning the repo and installing manually

```shell
$ git clone https://github.com/kalhauge/trix.git
$ nix-env -i --file trix/default.nix
```

## Usage
Use `trix -h` to get a list of features.

### Eval 

Evaluates a single expression. 

```shell
$ trix -e firefox.meta.description
"Web browser"
```

### Expand 

Expands a nix expression. Write the start of an expression and get a
list of expressions.

```shell
$ trix -x haskell
haskell.compiler
haskell.lib
haskell.packages
```

It can also complete incomplete typings:

```shell
$ trix -x haskell.packages.784
haskell.packages.ghc784
```
