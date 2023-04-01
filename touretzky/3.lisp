(defun half (n)
  (/ n 2))

(half 11)

(defun cube (n)
  (* n n n))

(cube 2)

(defun onemorep (a b)
  (= (1+ a) b))

(onemorep 1 2)
(onemorep 1 3)

(defun pythag (x y)
  (sqrt (+ (* x x) (* y y))))

(pythag 3 4)

(defun miles-per-gallon
  (initial-odometer-reading final-odometer-reading gallons-consumed)
  (/ (- final-odometer-reading initial-odometer-reading) gallons-consumed))

(miles-per-gallon 100 200 10)

(cons 5 (list 6 7))

(cons 5 '(list 6 7))

(list 3 'from 9 'gives (- 9 3))

(defun longer-than (l1 l2)
  (> (length l1) (length l2)))

(longer-than '(a b c) '(a b))
(longer-than '(a b) '(a b))

(defun addlength (l)
  (cons (length l) l))

(addlength '(a b c))
(addlength (addlength '(a b c)))
