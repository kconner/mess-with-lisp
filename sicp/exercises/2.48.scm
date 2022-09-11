(define (make-segment start end)
  (list start end))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cadr s))

(start-segment (make-segment 1 2))
(end-segment (make-segment 1 2))
