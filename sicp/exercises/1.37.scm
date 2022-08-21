(define (cont-frac n d k)
  (define (iter i)
    (if (> i k)
      0
      (/ (n i) (+ (d i) (iter (inc i))))))
  (iter 1))

(define (check k)
  (/ 1 (cont-frac (lambda (i) 1.0)
                  (lambda (i) 1.0)
                  k)))

(check 12)

(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
      result
      (iter (- i 1) (/ (n i) (+ (d i) result)))))
  (iter k 0))
