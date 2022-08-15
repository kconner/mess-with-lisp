(define (log-expt b n)
  (define (log-expt-iter b n a)
    (cond ((= n 0) a)
          ((even? n)
           (log-expt-iter (square b)
                          (/ n 2)
                          a))
          (else
           (log-expt-iter b
                          (- n 1)
                          (* a b)))))
  (log-expt-iter b n 1))
