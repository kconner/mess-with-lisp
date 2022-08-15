(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f n)
  (define (f-iter sum prior pp count)
    (cond ((> count n) sum)
          ((< count 3) (f-iter (+ sum 1)
                               sum
                               prior
                               (+ 1 count)))
          (else (f-iter (+ sum (* 2 prior) (* 3 pp))
                  sum
                  prior
                  (+ 1 count)))))
  (f-iter 0 0 0 1))
