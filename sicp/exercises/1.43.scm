(define (repeated f n)
  (if (= n 0)
      identity
      (lambda (x) (f ((repeated f (- n 1)) x)))))

((repeated square 2) 5)

(define (repeated f n)
  (if (= n 0)
      identity
      (compose f (repeated f (- n 1)))))
