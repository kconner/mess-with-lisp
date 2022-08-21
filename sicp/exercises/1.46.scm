(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess)
        guess
        ((iterative-improve good-enough? improve) (improve guess)))))

(define (sqrt x)
  ((iterative-improve
     (lambda (guess)
       (< (abs (- (square guess) x)) 0.001))
     (lambda (guess)
       (average guess (/ x guess))))
   1.0))

; To make fixed-point work, I think I'd have to let
; iterative-improve track the prior guess and pass it
; to good-enough?.
