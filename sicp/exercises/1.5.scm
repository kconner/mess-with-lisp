(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Under normal-order application, (p) will be substituted
; into the second branch of the if, but then it will not
; be evaluated because the condition is false.

; Under applicative-order evaluation, (p) will evaluate
; before the procedure is applied. In the process of
; evaluation, (p) will recurse infinitely.
