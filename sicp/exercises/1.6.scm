(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; new-if behaves like a regular procedure application
; in that its arguments will evaluate before new-if
; evaluates. The recursion of sqrt-iter is in an argument
; to new-if, which means it always evaluates when
; sqrt-iter evaluates, which creates infinite recursion.

; Regular if is a special form that, rather than using
; applicative-order evaluation, gets normal-order
; evaluation, and therefore only recurses until the guess
; is good enough. That is, it terminates.
