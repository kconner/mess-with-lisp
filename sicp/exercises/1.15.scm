(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

; In (sine 12.15), p applies 5 times:
; 12.15/3/3/3/3/3 = 0.05

; The order of growth in both time and space are
; theta(log n), because when N gets 3 times larger,
; one more step is required, and sine runs a linear
; recursive procedure, not iterative.
