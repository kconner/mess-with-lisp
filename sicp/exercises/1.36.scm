(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (newline)
      (display next)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(fixed-point
 (lambda (x) (/ (log 1000) (log x)))
 10)

(fixed-point
 (lambda (x) (average x (/ (log 1000) (log x))))
 10)
