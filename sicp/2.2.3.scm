(define (sum-odd-squares tree)
  (cond ((null? tree) 0)
	((not (pair? tree))
	 (if (odd? tree) (square tree) 0))
	(else (+ (sum-odd-squares
		   (car tree))
		  (sum-odd-squares
		   (cdr tree))))))

(define (even-fibs n)
  (define (next k)
    (if (> k n)
	nil
	(let ((f (fib k)))
	  (if (even? f)
	      (cons f (next (+ k 1)))
	      (next (+ k 1))))))
  (next 0))

(map square (list 1 2 3 4 5))

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
	((predicate (car sequence))
	 (cons (car sequence)
	       (filter predicate
		       (cdr sequence))))
	(else (filter predicate
		      (cdr sequence)))))

(filter odd? (list 1 2 3 4 5))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
	  (accumulate op
		      initial
		      (cdr sequence)))))

(accumulate + 0 (list 1 2 3 4 5))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low
	    (enumerate-interval
	     (+ low 1)
	     high))))

(enumerate-interval 2 7)

(define (enumerate-tree tree)
  (cond ((null? tree) nil)
	((not (pair? tree)) (list tree))
	(else (append
	       (enumerate-tree (car tree))
	       (enumerate-tree (cdr tree))))))

(enumerate-tree (list 1 (list 2 (list 3 4)) 5))

(define (sum-odd-squares tree)
  (accumulate
   +
   0
   (map square
	(filter odd?
		(enumerate-tree tree)))))

(define (even-fibs n)
  (accumulate
   cons
   nil
   (filter even?
	   (map fib
		(enumerate-interval 0 n)))))

(define (list-fib-squares n)
  (accumulate
   cons
   nil
   (map square
	(map fib
	     (enumerate-interval 0 n)))))

(list-fib-squares 10)

(define
  (product-of-squares-of-odd-elements
   sequence)
  (accumulate
   *
   1
   (map square (filter odd? sequence))))

(product-of-squares-of-odd-elements
 (list 1 2 3 4 5))

(define
  (salary-of-highest-paid-programmer
   records)
  (accumulate
   max
   0
   (map salary
	(filter programmer? records))))

(define n 5)

(accumulate
 append
 nil
 (map (lambda (i)
	(map (lambda (j)
	       (list i j))
	     (enumerate-interval 1 (- i 1))))
      (enumerate-interval 1 n)))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair)
	(cadr pair)
	(+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter
	prime-sum?
	(flatmap
	 (lambda (i)
	   (map (lambda (j)
		  (list i j))
		(enumerate-interval
		 1
		 (- i 1))))
	 (enumerate-interval 1 n)))))

(define (permutations s)
  (if (null? s)			       ; empty set?
      (list nil)		       ; sequence containing empty set
      (flatmap (lambda (x)
		 (map (lambda (p)
			(cons x p))
		      (permutations
		       (remove x s))))
	       s)))

(define (remove item sequence)
  (filter (lambda (x) (not (= x item)))
	  sequence))
