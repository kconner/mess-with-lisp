# mess-with-lisp

## Study path

- [Beating the Averages](http://www.paulgraham.com/avg.html) (2001)
  - [High School Computing: The Inside Story](https://web.archive.org/web/20031208114627/http://www.trollope.org/scheme.html) (1991)
  - [What Made Lisp Different](http://www.paulgraham.com/diff.html) (2001)
  - [The Roots of Lisp](http://www.paulgraham.com/rootsoflisp.html) (2001)—see "Complete Article (Postscript)"
    - [Dynamic Scoping in Lua](https://leafo.net/guides/dynamic-scoping-in-lua.html) (2016)
    - I didn't read [Recursive Functions of Symbolic Expressions and Their Computation by Machine, Part I](http://jmc.stanford.edu/articles/recursive.html) (McCarthy, 1960)
- [The Nature of Lisp](https://www.defmacro.org/ramblings/lisp.html) (2006)
- [How Lisp Became God's Own Programming Language](https://twobithistory.org/2018/10/14/lisp.html) (2018)
  - [History of Lisp](http://jmc.stanford.edu/articles/lisp.html) (McCarthy, 1978)
  - I may read [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sites/default/files/sicp/index.html) (1984)

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
