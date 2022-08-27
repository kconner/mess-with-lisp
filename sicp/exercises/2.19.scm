(define us-coins
  (list 50 25 10 5 1))

(define uk-coins
  (list 100 50 20 10 5 2 1 0.5))

(define (cc amount coin-values)
  (cond ((= amount 0)
         1)
        ((or (< amount 0)
             (no-more? coin-values))
         0)
        (else
         (+ (cc
             amount
             (except-first-denomination
              coin-values))
            (cc
             (- amount
                (first-denomination
                 coin-values))
             coin-values)))))

(define first-denomination car)

(define except-first-denomination cdr)

(define no-more? null?)

(time (cc 500 us-coins))
(time (cc 500 (reverse us-coins)))

; No difference in results because recursion fully covers
; mutually-exclusive branches of possibilities. But reversed
; is slower because smaller denominations branch more broadly
; up front and cause more dead ends where the remaining larger
; denominations can't reach exactly zero.
