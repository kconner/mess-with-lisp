(equal? '(this is a list)
	'(this is a list))

(equal? '(this is a list)
	'(this (is a) list))

(define (equal? a b)
  (or (and (not (pair? a))
	   (not (pair? b))
	   (eq? a b))
      (and (pair? a)
	   (pair? b)
	   (equal? (car a) (car b))
	   (equal? (cdr a) (cdr b)))))
