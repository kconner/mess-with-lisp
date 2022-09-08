(define (unique-pairs n)
  (flatmap (lambda (j)
	     (map (lambda (i) (list j i))
		  (enumerate-interval (+ j 1) n)))
	   (enumerate-interval 1 (- n 1))))

(unique-pairs 5)

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter
	prime-sum?
	(unique-pairs n))))

(prime-sum-pairs 5)
