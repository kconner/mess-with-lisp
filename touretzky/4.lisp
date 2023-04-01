(defun make-even (n)
  (if (evenp n)
      n
      (make-even (+ n 1))))

(make-even 3)
(make-even 4)

(defun further (n)
  (cond ((= n 0) 0)
        ((< n 1) (- n 1))
        ((> n 1) (+ n 1))))

(further 0)
(further 10)
(further -30)

(defun my-not (x)
  (cond ((null x) t)
        (t nil)))

(my-not nil)
(my-not 1)
(not nil)
(not 1)

(defun ordered (a b)
  (cond ((< a b) (list a b))
        (t (list b a))))

(ordered 1 2)
(ordered 2 1)

(defun my-abs (n)
  (cond ((< n 0) (- n))
        (t n)))

(my-abs -10)
(my-abs 10)

;; definition of and using cond
(defun my-and (x y)
  (cond (x y)
        (t nil)))

(my-and nil 1)
(my-and 1 nil)
(my-and 1 2)

(step (my-and 1 2))
