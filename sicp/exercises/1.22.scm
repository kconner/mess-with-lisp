(import (chicken time))

(define runtime current-seconds)

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime)
                       start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes i n)
  (cond ((< n i) (newline))
        (else (timed-prime-test i)
              (search-for-primes (+ 2 i) n))))

(search-for-primes 1001 1019)
(search-for-primes 10001 10037)
(search-for-primes 1000001 1000037)

; Nothing but 0s on my 2022 machine.

(time (search-for-primes 1001 1900)) ; 0.006s
(time (search-for-primes 10001 10900)) ; 0.013s
(time (search-for-primes 1000001 1000900)) ; 0.006s

; It's a bit strange that much larger numbers were faster.
; And the time for 10k was not sqrt(10) * the time for 1k.
; Maybe I need to run more iterations.

(define (repeat f n)
  (cond ((= n 0) (newline))
        (else (f)
              (repeat f (- n 1)))))

(time (repeat (lambda () (search-for-primes 1001 1019)) 10000)) ; 0.62s
(time (repeat (lambda () (search-for-primes 10001 10037)) 10000)) ; 2.2s
(time (repeat (lambda () (search-for-primes 1000001 1000037)) 10000)) ; 11.3s

; The factor from 1k to 10k is steeper than sqrt(10).
; The factor from 10k to 1m could be around 10, but it's
; off by a vague amount. Still roughly corresponds.
