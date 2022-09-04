(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
	      nil sequence))

(map square (list 1 2 3 4 5))

(define (append seq1 seq2)
  (accumulate cons
	      seq2
	      seq1))

(append (list 1 2 3) (list 4 5 6))

(define (length sequence)
  (accumulate
   (lambda (item count) (+ 1 count))
   0
   sequence))

(length (list 3 5 7 9 11 13))
