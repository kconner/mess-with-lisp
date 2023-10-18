
(load "cookie-lisp-project.asd")
(load "cookie-lisp-project-tests.asd")

(ql:quickload "cookie-lisp-project-tests")

(in-package :cookie-lisp-project-tests)

(uiop:quit (if (run-all-tests) 0 1))
