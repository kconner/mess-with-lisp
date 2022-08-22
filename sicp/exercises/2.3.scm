(define make-rect cons)
(define rect-width car)
(define rect-height cdr)

(define (perimeter rect)
  (+ (* 2 (rect-width rect)) (* 2 (rect-height rect))))

(define (area rect)
  (* (rect-width rect) (rect-height rect)))

(define (make-rect width height)
  (cons height width))
(define rect-width cdr)
(define rect-height car)
