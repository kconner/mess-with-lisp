(define (sum-primes a b)
  (define (iter count accum)
    (count ((> count b) accum)
	   ((prime? count)
	    (iter (+ count 1)
		  (+ count accum)))
	   (else (iter (+ count 1) accum))))
  (iter a 0))

(define (sum-primes a b)
  (accumulate
   +
   0
   (filter prime? (enumerate-interval a b))))

(car (cdr
      (filter
       prime?
       (enumerate-interval 10000 1000000))))

(define (stream-ref s n)
  (if (= n 0)
      (stream-car s)
      (stream-ref (stream-cdr s) (- n 1))))

(define (stream-map proc s)
  (if (stream-null? s)
      the-empty-stream
      (cons-stream
       (proc (stream-car s))
       (stream-map proc (stream-cdr s)))))

(define (stream-for-each proc s)
  (if (stream-null? s)
      'done
      (begin
	(proc (stream-car s))
	(stream-for-each proc
			 (stream-cdr s)))))

(define (display-stream s)
  (stream-for-each display-line s))

(define (display-line x)
  (newline)
  (display x))

(cons-stream a b)
(cons a (delay b))

(define (stream-car stream)
  (car stream))

(define (stream-cdr stream)
  (force (cdr stream)))

(stream-car
 (stream-cdr
  (stream-filter
   prime? (stream-enumerate-interval
	   10000 1000000))))

(define (stream-enumerate-interval low high)
  (if (> low high)
      the-empty-stream
      (cons-stream
       low
       (stream-enumerate-interval (+ low 1)
				  high))))

(cons 10000
      (delay
	(stream-enumerate-interval
	 10001
	 1000000)))

(define (stream-filter pred stream)
  (cond ((stream-null? stream)
	 the-empty-stream)
	((pred (stream-car stream))
	 (cons-stream
	  (stream-car stream)
	  (stream-filter
	   pred
	   (stream-cdr stream))))
	(else (stream-filter
	      pred
	      (stream-cdr stream)))))

(cons 10001
      (delay
	(stream-enumerate-interval
	 10002
	 1000000)))

(cons-stream
 (stream-car stream)
 (stream-filter pred (stream-cdr stream)))

(cons 10007
      (delay
	(stream-filter
	 prime?
	 (cons 10008
	       (delay
		 (stream-enumerate-interval
		  10009 1000000))))))
(cons 10009
      (delay
	(stream-filter
	 prime?
	 (cons 10010
	       (delay
		 (stream-enumerate-interval
		  10011 1000000))))))

(delay exp)
(lambda () exp)

(define (force delayed-object)
  (delayed-object))

(define (memo-proc pro)
  (let ((already-run? false) (result false))
    (lambda ()
      (if (not already-run?)
	  (begin (set! result (proc))
		 (set! already-run? true)
		 result)
	  result))))

(delay exp)
(memo-proc (lambda () exp))
