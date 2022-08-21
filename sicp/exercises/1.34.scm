(define (f g) (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)
; The evaluation halts:
; f applies its argument to 2.
; (f f) evaluates to (f 2).
; (f 2) then evaluates to (2 2).
; 2 is not a function.
