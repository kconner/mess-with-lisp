(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)
         (square (fast-expt b (/ n 2))))
        (else
         (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

; This version squares as it goes but only takes the
; remainder at the end. The original expmod both squares
; and takes the remainder step by step. That keeps the
; sizes of values under control and means you can compute
; larger primes with the same resources.
