(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-frame f)
  (car f))

(define (edge1-frame f)
  (cadr f))

(define (edge2-frame f)
  (caddr f))

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

(define (origin-frame f)
  (car f))

(define (edge1-frame f)
  (cadr f))

(define (edge2-frame f)
  (cddr f))

(define test-frame
  (make-frame (make-vect 2 3) (make-vect 5 7) (make-vect 11 13)))
(origin-frame test-frame)
(edge1-frame test-frame)
(edge2-frame test-frame)
