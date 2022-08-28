(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest
                (map (lambda (x)
                       (cons (car s) x))
                     rest)))))

(subsets '())

(subsets '(1))

(subsets '(1 2))

(subsets '(1 2 3))

; The subsets of the cdr are catenated with another copy
; of the subsets of the cdr in which each copy has the
; car joined onto it. These two copies of the cdr reflect
; the cases of excluding and including the car.
