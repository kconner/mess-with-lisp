(for-each
 (lambda (x) (newline) (display x))
 (list 57 321 88))

(define (for-each f items)
  (cond ((null? items) nil)
        (else (f (car items))
              (for-each f (cdr items)))))
