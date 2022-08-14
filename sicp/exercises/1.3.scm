(define (square x)
  (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (min-of-2 a b)
  (if (< a b) a b))

(define (min-of-3 a b c)
  (min-of-2 a (min-of-2 b c)))

(define (sum-of-squares-of-larger a b c)
  (cond ((= a (min-of-3 a b c)) (sum-of-squares b c))
        ((= b (min-of-3 a b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))
