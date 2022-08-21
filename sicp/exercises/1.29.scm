(define (simpson f a b n)
  (define h
    (/ (- b a) n))
  (define (coef k)
    (cond ((or (= k 0) (= k n)) 1)
          ((even? k) 2)
          (else 4)))
  (define (y k)
    (f (+ a (* k h))))
  (define (term k)
    (* (coef k) (y k)))
  (* (/ h 3)
     (sum term 0 inc n)))

(simpson cube 0 1 100)
(simpson cube 0 1 1000)
(simpson cube 0 1 100.0)
(simpson cube 0 1 1000.0)
