(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (let ((t (term a))
            (r (filtered-accumulate combiner null-value filter term (next a) next b)))
           (if (filter t)
               (combiner t r)
               r))))

(define (sum-of-squares-of-primes a b)
  (define (add-square a r)
    (+ r (square a)))
  (filtered-accumulate add-square 0 prime? identity a inc b))

(define (product-of-relative-primes-to n)
  (define (test x)
    (= 1 (gcd x n)))
  (filtered-accumulate * 1 test identity 1 inc (- n 1)))
