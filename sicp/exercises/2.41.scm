(define (ordered-triples n)
  (flatmap (lambda (a)
	     (flatmap (lambda (b)
		    (map (lambda (c)
			   (list a b c))
			 (enumerate-interval (+ b 1) n)))
		  (enumerate-interval (+ a 1) (- n 1))))
	   (enumerate-interval 1 (- n 2))))

(ordered-triples 5)

(define (triples-with-sum n s)
  (filter (lambda (triple)
	    (= s (apply + triple)))
	  (ordered-triples n)))

(triples-with-sum 6 10)
