(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (factorial n)
  (product identity 1 inc n))

(define (pi-tho n)
  (define (term n)
    (define k (* 2.0 n))
    (/ (* k (+ k 2))
       (* (inc k) (inc k))))
  (* 4 (product term 1 inc n)))

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* result (term a)))))
  (iter a 1))
