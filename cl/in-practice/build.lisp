(load "packages.lisp")
(load "src/greet.lisp")
(load "src/main.lisp")

(sb-ext:save-lisp-and-die
  "hello"
  :toplevel 'hello:main
  :executable t)
