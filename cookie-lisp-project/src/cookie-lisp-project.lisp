(in-package :cookie-lisp-project)

;; Define your project functionality here...

(defun greet (&optional (name "CL User"))
  (format t "Hello ~a from ~a!~&" name "cookie-lisp-project"))

(defun help ()
  (format t "~&Usage:

  cookie-lisp-project [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    ;; To properly parse command line arguments, use a third-party library such as
    ;; clingon, unix-opts, defmain, adopt… when needed.
    (help)
    (uiop:quit))
  (greet  (or (first argv)
              "dear lisp user")))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))