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
- [List of Lisp-family programming languages](https://en.wikipedia.org/wiki/List_of_Lisp-family_programming_languages)
  - [Homoiconicity](https://en.wikipedia.org/wiki/Homoiconicity)
    - [Rebol](https://en.wikipedia.org/wiki/Rebol)
  - [Scheme \(programming language\)](https://en.wikipedia.org/wiki/Scheme_(programming_language))
    - [Lisp-1 vs. Lisp-2: The function namespace](https://en.wikipedia.org/wiki/Common_Lisp#The_function_namespace)
      - [Technical Issues of Separation in Function Calls and Value Cells](http://www.nhplace.com/kent/Papers/Technical-Issues.html) (1988)
    - [Read-eval-print loop](https://en.wikipedia.org/wiki/Read–eval–print_loop)
    - [Hygienic macro](https://en.wikipedia.org/wiki/Hygienic_macro)
    - [Continuation](https://en.wikipedia.org/wiki/Continuation)
      - [Continuation-passing style](https://en.wikipedia.org/wiki/Continuation-passing_style)
      - I may read [The Discoveries of Continuations](https://www.cs.ru.nl/~freek/courses/tt-2011/papers/cps/histcont.pdf) (1993)
      - [`call-with-current-continuation`](https://en.wikipedia.org/wiki/Call-with-current-continuation)
        - [Unlambda](https://en.wikipedia.org/wiki/Unlambda)
          - [SKI combinator calculus](https://en.wikipedia.org/wiki/SKI_combinator_calculus)
          - [Fixed-point combinator](https://en.wikipedia.org/wiki/Fixed-point_combinator)
      - I may read [Inverting back the inversion of control or, Continuations versus page-centric programming](https://pages.lip6.fr/Christian.Queinnec/PDF/www.pdf) (2003)
      - [Spaghetti stack](https://en.wikipedia.org/wiki/Parent_pointer_tree)
  - [PicoLisp](https://en.wikipedia.org/wiki/PicoLisp)
  - [SIOD](https://en.wikipedia.org/wiki/SIOD)
  - [Dylan \(programming language\)](https://en.wikipedia.org/wiki/Dylan_(programming_language))
    - [Harlequin \(software company\)](https://en.wikipedia.org/wiki/Harlequin_(software_company))
      - [Late binding](https://en.wikipedia.org/wiki/Late_binding)
      - [LispWorks](https://en.wikipedia.org/wiki/LispWorks)
        - [Prolog](https://en.wikipedia.org/wiki/Prolog)
    - [Multiple dispatch](https://en.wikipedia.org/wiki/Multiple_dispatch)
  - [Common Lisp](https://en.wikipedia.org/wiki/Common_Lisp)
    - [Common Lisp Object System](https://en.wikipedia.org/wiki/Common_Lisp_Object_System)
      - [Generic function](https://en.wikipedia.org/wiki/Generic_function)
        - I may read [The Art of the Metaobject Protocol](https://en.wikipedia.org/wiki/The_Art_of_the_Metaobject_Protocol) (1991)
        - [Flavors \(programming language\)](https://en.wikipedia.org/wiki/Flavors_(programming_language))
        - [CommonLoops](https://en.wikipedia.org/wiki/CommonLoops)
      - [Circle-ellipse problem](https://en.wikipedia.org/wiki/Circle–ellipse_problem)
    - [Data-driven programming](https://en.wikipedia.org/wiki/Data-driven_programming)
    - I may read [Let Over Lambda](https://letoverlambda.com) (2008)
    - [Allegro Common Lisp](https://en.wikipedia.org/wiki/Allegro_Common_Lisp)
    - [CLISP](https://en.wikipedia.org/wiki/CLISP)
      - [Why CLISP is under GPL](https://sourceforge.net/p/clisp/clisp/ci/default/tree/doc/Why-CLISP-is-under-GPL)
    - [CMU Common Lisp](https://en.wikipedia.org/wiki/CMU_Common_Lisp)
    - [Steel Bank Common Lisp](https://en.wikipedia.org/wiki/Steel_Bank_Common_Lisp)
    - [Dynamic Analysis and Replanning Tool](https://en.wikipedia.org/wiki/Dynamic_Analysis_and_Replanning_Tool)
    - [Practical Common Lisp](https://en.wikipedia.org/wiki/Practical_Common_Lisp)
      - I may read [Practical Common Lisp, full text](https://gigamonkeys.com/book/) (2005)
      - [Practical Common Lisp, Google TechTalk](https://www.youtube.com/watch?v=4NO83wZVT0A) (YouTube)

## REPL

```sh
nix-shell
sbcl
```

## Edit a script and run it on save

```sh
nix-shell
tmux
vim test-cl.lisp
^b"
./test-cl.sh
^bk
```
