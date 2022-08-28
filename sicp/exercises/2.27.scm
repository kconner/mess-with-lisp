(define x
  (list (list 1 2) (list 3 4)))

x

(reverse x)

(deep-reverse x)

(define (deep-reverse tree)
  (if (null? tree)
      '()
      (

(define (deep-reverse alist)
  (define (iter x result)
    (cond ((not (list? x)) x)
          ((null? x) result)
          (else (iter (cdr x)
                      (cons (iter (car x) '()) result)))))
  (iter alist '()))
