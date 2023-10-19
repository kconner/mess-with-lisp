(in-package :asdf-user)

(defsystem "cookie-lisp-project"
  :author "CL User <cl.user@mail.com>"
  :version "0.0.1"
  :license "MIT"
  :description "desc"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial t
  :components ((:module "src"
                        :serial t
                        :components ((:file "packages")
                                     (:file "cookie-lisp-project"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "cookie-lisp-project"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "cookie-lisp-project:main")
