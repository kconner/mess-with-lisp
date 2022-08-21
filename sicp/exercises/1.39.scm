(define (tan-cf x k)
  (cont-frac (lambda (i)
               (if (= i 1)
                   x
                   (- (square x))))
             (lambda (i)
               (- (* 2 i) 1))
             k))

(tan 0.5)

(tan-cf 0.5 1000)
