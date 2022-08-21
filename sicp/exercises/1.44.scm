(define (smooth f dx)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth n f dx)
  (if (= n 1)
      (smooth f dx)
      (n-fold-smooth (- n 1) (smooth f dx) dx)))
