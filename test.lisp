(defun f (x)
  (+ x 10))

(print (f 5))

(defun g (ff xx)
  (+ 100 (funcall ff xx)))

(print (g (function f) 1))
