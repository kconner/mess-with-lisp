(defsystem "some-cl-project"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "some-cl-project/tests"))))

(defsystem "some-cl-project/tests"
  :author ""
  :license ""
  :depends-on ("some-cl-project"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for some-cl-project"
  :perform (test-op (op c) (symbol-call :rove :run c)))
