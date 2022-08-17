(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (next test-divisor)))))

(define (next n)
  (if (= n 2) 3 (+ n 2)))

; 1001-1019: 0.46s
; 10001-10039: 1.5s
; 1000001-1000039: 7.2s

; It's less than twice as fast, and that's because the
; even-numbered steps are fastest to discard.
