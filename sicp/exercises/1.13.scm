(define phi (/ (+ 1 (sqrt 5)) 2))
(define psi (/ (- 1 (sqrt 5)) 2))

(define (pow a x)
  (if (= x 0)
      1
      (* a (pow a (- x 1)))))

(define (curve n)
  (/ (pow phi n) (sqrt 5)))

; That's as far as I'm willing to take this one.
