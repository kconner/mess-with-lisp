(define rand
  (let ((x random-init))
    (lambda ()
      (set! x (rand-update x))
      x)))

(define random-numbers
  (cons-stream random-init
	       (stream-map rand-update
			   random-numbers)))

(define cesaro-stream
  (map-successive-pairs
   (lambda (r1 r2) (= (gcd r1 r2) 1))
   random-numbers))

(define (map-successive-pairs f s)
  (cons-stream
   (f (stream-car s)
      (stream-car (stream-cdr s)))
   (map-successive-pairs
    f (stream-cdr (stream-cdr s)))))

(define (monte-carlo experiment-stream
		     passed
		     failed)
  (define (next passed failed)
    (cons-stream
     (/ passed (+ passed failed))
     (monte-carlo
      (stream-cdr experiment-stream)
      passed
      failed)))
  (if (stream-car experiment-stream)
      (next (+ passed 1) failed)
      (next passed (+ failed 1))))

(define (make-simplified-withdraw balance)
  (lambda (amount)
    (set! balance (- balance amount))
    balance))

(define (stream-withdraw balance amount-stream)
  (cons-stream
   balance
   (stream-withdraw
    (- balance (stream-car amount-stream))
    (stream-cdr amount-stream))))
