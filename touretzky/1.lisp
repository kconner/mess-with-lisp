(defun add1 (x) (+ x 1))

(add1 5)

(defun add2 (x)
  (add1 (add1 x)))

(add2 5)

(defun twop (x)
  (equal x 2))

(twop 3)
(twop 2)

(defun sub2 (x)
  (- x 2))

(sub2 3)

(defun twop (x)
  (zerop (sub2 x)))

(twop 3)
(twop 2)

(defun half (x)
  (/ x 2))

(half 3)

(defun half (x)
  (/ x 2.0))

(half 3)

(defun multi-digit-p (x)
  (< 9 x))

(multi-digit-p 9)
(multi-digit-p 10)

(defun negate (x)
  (- 0 x))

(negate 3)

(defun onemorep (a b)
  (equal a (add1 b)))

(onemorep 7 6)
(onemorep 7 3)

(defun twomorep (a b)
  (equal a (add2 b)))

(twomorep 8 6)
(twomorep 8 3)

(defun twomorep (a b)
  (equal (sub2 a) b))

(twomorep 8 6)
(twomorep 8 3)

(defun average (a b)
  (/ (+ a b) 2.0))

(average 3 5)

(defun more-than-half-p (a b)
  (< (half b) a))

(more-than-half-p 3 5)
(more-than-half-p 3 6)

(defun yes (x)
  (symbolp (numberp x)))

(yes 3)
(yes "a")

(not nil)
(not 12)
(not #'not)

(defun not-equal (a b)
  (not (equal a b)))

(not-equal 'pink 'green)
(not-equal 'pink 'pink)

(defun not-onep (x)
  (not (equal 1 x)))

(not-onep 1)
(not-onep 2)

(defun not-plusp (x)
  (not (< 0 x)))

(not-plusp 1)
(not-plusp 0)

(let ((evenp (lambda (x)
               (not (oddp x)))))
  (funcall evenp 3))

(defun minus-two-p (x)
  (zerop (add1 (add1 x))))

(minus-two-p 3)
(minus-two-p 2)
(minus-two-p -2)

(defun not-nil-p (x)
  (not (not x)))

(not-nil-p 3)
(not-nil-p nil)
(not-nil-p t)

(defun xor (a b)
  (not (equal (null a) (null b))))

(xor 2 3)
(xor 2 nil)
(xor nil nil)
(xor nil 3)

(* 2 3 5)
(* (* 2 3) 5)

(- 50 3 4)
(/ 120 3 5)

(- 4)
(/ 4.0)

;; (+ 3 'fred)
;; (equal 2)
;; (oddp 4 7)

;; (/ 3 0)
