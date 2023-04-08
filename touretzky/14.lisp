(defparameter ar '#(1 2 3))
(incf (aref ar 1))
ar

(defparameter ls '(1 2 3))
(incf (nth 1 ls))
ls

(gensym)

(defmacro simple-incf (var)
  `(setq ,var (+ ,var 1)))

(defparameter x 3)
(simple-incf x)

#10(nil)

(defmacro simple-incf (var &optional (by 1))
  `(setq ,var (+ ,var ,by)))

(simple-incf x)
(simple-incf x 4)

(defun foo (a &optional b (c 10))
  (list a b c))

(foo 1)
(foo 1 2)
(foo 1 2 3)

(defconstant xyz 10)
'(let ((xyz 11)) xyz) ; error
