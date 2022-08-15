(define (double n) (+ n n))

(define (halve n) (/ n 2))

(define (*-fast a b)
  (cond ((= b 0) 0)
        ((even? b)
         (*-fast (double a) (halve b)))
        (else
         (+ a (*-fast a (- b 1))))))
