(define x
  (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list x x))

(define (fringe tree)
  (cond ((null? tree) '())
        ((list? tree) (append (fringe (car tree))
                              (fringe (cdr tree))))
        (else (list tree))))
