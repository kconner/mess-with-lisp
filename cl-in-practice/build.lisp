(ql:quickload :hello/bin)

(sb-ext:save-lisp-and-die
  "hello"
  :toplevel 'hello:main
  :executable t)
