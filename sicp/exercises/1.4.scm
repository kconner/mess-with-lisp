(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; B's absolute value is added to A
; because when B is nonpositive it is instead subtracted.
