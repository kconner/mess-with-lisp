(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car n)
  (if (= (gcd 2 n) 1)
      0
      (+ 1 (car (/ n 2)))))

(define (cdr n)
  (if (= (gcd 3 n) 1)
      0
      (+ 1 (cdr (/ n 3)))))
