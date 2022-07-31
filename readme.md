# mess-with-lisp

## Study path

- [Beating the Averages](http://www.paulgraham.com/avg.html)
  - [High Shool Computing: The Inside Story](https://web.archive.org/web/20031208114627/http://www.trollope.org/scheme.html)
  - [What Made Lisp Different](http://www.paulgraham.com/diff.html)
  - [The Roots of Lisp](http://www.paulgraham.com/rootsoflisp.html) — see "Complete Article (Postscript)")
    - [Dynamic Scoping in Lua](https://leafo.net/guides/dynamic-scoping-in-lua.html)
    - I didn't read [McCarthy, 1960: Recursive Functions of Symbolic Expressions and Their Computation by Machine, Part I](http://jmc.stanford.edu/articles/recursive.html)
- [The Nature of Lisp](https://www.defmacro.org/ramblings/lisp.html)

## REPL

```sh
nix-shell
sbcl
```

## Edit a script and run it on save

```sh
nix-shell
tmux
vim test.lisp
^b"
./test.sh
^bk
```
