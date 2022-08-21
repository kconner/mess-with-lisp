(define (check k)
  (+ 2 (cont-frac (lambda (i) 1.0)
                  (lambda (i)
                    (if (= 2 (remainder i 3))
                        (/ (+ i i 2) 3)
                        1))
                  k)))

(check 100)
