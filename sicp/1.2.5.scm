; a / b = q, r
; GCD(a, b) = GCD(b, r)

; 24 / 9 = 2, 6
; GCD(24, 9) = GCD(9, 6) = 3

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
