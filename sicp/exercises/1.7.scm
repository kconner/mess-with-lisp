(square (sqrt 0.01))
(square (sqrt 0.001))
(square (sqrt 0.0001))
(square (sqrt 0.00001)) ; fails

; As arguments get small, the value of comparison used by
; good-enough? becomes comparatively imprecise.
; Newton's method stops too soon to get a useful answer.

(square (sqrt 1000000000000000000))
(square (sqrt 10000000000000000000))
(square (sqrt 100000000000000000000))
(square (sqrt 1000000000000000000000))

; As arguments get large, the value of comparison used by
; good-enough? becomes so comparatively infinitesimal.
; Newton's method doesn't stop, because two guesses near
; the correct answer can never be as close together as
; the comparison threshold.

(define (sqrt-iter guess prior x)
  (if (good-enough? guess prior)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prior)
  (< (abs (- guess prior)) (* guess 0.000001)))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))
