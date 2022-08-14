(define (cbrt-iter guess prior x)
  (if (cbrt-good-enough? guess prior)
      guess
      (cbrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cbrt-good-enough? guess prior)
  (< (abs (- guess prior)) (* guess 0.000001)))

(define (cbrt x)
  (cbrt-iter 1.0 0.0 x))
