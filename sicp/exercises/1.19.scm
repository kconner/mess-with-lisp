; T_pq^1
; a <- bq + a(q + p)
; b <- bp + aq

; T_pq^2
; a <- (bp + aq)q + (bq + aq + ap)(q + p)
;    = bqp + aqq + bqq + bqp + aqq + aqp + aqp + app
;    = bqp + bqq + bqp + aqq + aqq + aqp + aqp + app
;    = b(2qp + qq) + a(2qq + 2qp + pp)
;    = b(2qp + qq) + a((2qp + qq) + (pp + qq))
; b <- (bp + aq)p + (bq + aq + ap)q
;    = bpp + aqp + bqq + aqq + aqp
;    = bpp + bqq + aqp + aqq + aqp
;    = b(pp + qq) = a(2qp + qq)

; T_p'q'
; p' <- pp + qq
; q' <- 2qp + qq

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q)) ; p'
                   (+ (* 2 q p) (* q q)) ; q'
                   (/ count 2)))
        (else
         (fib-iter (+ (* b q)
                      (* a q)
                      (* a p))
                   (+ (* b p)
                      (* a q))
                   p
                   q
                   (- count 1)))))
