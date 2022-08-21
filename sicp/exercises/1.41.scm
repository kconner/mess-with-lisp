(define (double f)
  (lambda (x) (f (f x))))

(double inc)

(((double (double double)) inc) 5)
