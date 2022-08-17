(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (* (expmod base (/ exp 2) m)
             (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base
             (expmod base (- exp 1) m))
          m))))

; This is the same as the original expmod, but when
; recursing with the squaring substitution, the recursion
; branches to a tree with duplicated work.
; The original complexity was theta(n), then substituting
; with squares brought it down to theta(log n), and then
; this change brought it to theta(log 2^n), which is
; theta(n).
