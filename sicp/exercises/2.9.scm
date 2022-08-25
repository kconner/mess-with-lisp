(define (width z)
  (- (upper-bound z) (lower-bound z)))

(width (make-interval a b))
(- b a)

(width (make-interval c d))
(- d c)

(width (add-interval (make-interval a b) (make-interval c d)))
(width (make-interval (+ (lower-bound (make-interval a b))
                         (lower-bound (make-interval c d)))
                      (+ (upper-bound (make-interval a b))
                         (upper-bound (make-interval c d)))))
(width (make-interval (+ a c) (+ b d))))
(- (+ b d) (+ a c))
(+ b d (- a) (- c))
(+ (- b a) (- d c))
(+ (width (make-interval a b)) (width (make-interval c d)))

; And subtraction is defined in terms of addition.

(width (mul-interval (make-interval a b) (make-interval c d)))
(width (let ((p1 (* a c))
             (p2 (* a d))
             (p3 (* b c))
             (p4 (* b d)))
         (make-interval (min p1 p2 p3 p4)
                        (max p1 p2 p3 p4))))
(width (make-interval (min (* a c) (* a d) (* b c) (* b d))
                      (max (* a c) (* a d) (* b c) (* b d))))

; Ranges are defined by the difference between bounds.
; There are no operations here besides multiplication
; and comparison.

; Division is defined in terms of multiplication.

; I misread the width as the whole interval, not half.
; But this proof wouldn't be hard to adjust.
