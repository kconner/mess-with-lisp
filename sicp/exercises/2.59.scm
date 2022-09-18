(define (union-set set1 set2)
  (cond ((null? set1) set2)
	((element-of-set? (car set1) set2)
	 (union-set (cdr set1) set2))
	(else (cons (car set1)
		    (union-set (cdr set1) set2)))))

(define (union-set set1 set2)
  (if (null? set1)
      set2
      (adjoin-set (car set1)
		  (union-set (cdr set1) set2))))
