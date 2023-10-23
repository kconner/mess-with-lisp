(defsystem :hello
  :components ((:file "packages")
               (:module "src"
                        :serial t
                        :components ((:file "greet")))))

(defsystem :hello/bin
  :depends-on (:hello)
  :components ((:module :src
                        :components ((:file "main")))))
