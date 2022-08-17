(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
      (report-prime (- (runtime)
                       start-time))))

; 1001-1019: 2.4s
; 10001-10039: 3.7s
; 1000001-1000039: 4.9s

; I thought these would be close in duration because
; they each go to the same maximum number of tries.
; It makes sense that there's still a progression,
; because larger numbers seem likely to take more steps
; to discard even within the limit.
