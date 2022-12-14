(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
	(list empty-board)
	(filter
	 (lambda (positions)
	   (safe? k positions))
	 (flatmap
	  (lambda (rest-of-queens)
	    (map (lambda (new-row)
		   (adjoin-position
		    new-row
		    k
		    rest-of-queens))
		 (enumerate-interval
		  1
		  board-size)))
	  (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (adjoin-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define (safe? k positions)
  (and
   (null? (filter (lambda (other) (= other (car positions)))
		  (cdr positions)))
   (null? (filter (lambda (other) (= other (car positions)))
		  (map +
		       (cdr positions)
		       (enumerate-interval 1 k))))
   (null? (filter (lambda (other) (= other (car positions)))
		  (map -
		       (cdr positions)
		       (enumerate-interval 1 k)))))))

(queens 0)
(queens 1)
(queens 4)
(queens 5)
(queens 8)
