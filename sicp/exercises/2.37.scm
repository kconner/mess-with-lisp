(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(dot-product '(1 2) '(3 4))

(define (matrix-*-vector m v)
  (map
   (lambda (row) (dot-product row v))
   m))

(matrix-*-vector
 '((1 2 3)
   (2 3 4))
 '(5 10 15))

(define (transpose mat)
  (accumulate-n
   cons
   nil
   mat))

(transpose '((1 2 3)
	     (4 5 6)))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map
     (lambda (row)
       (matrix-*-vector cols row))
     m)))

(matrix-*-matrix '((1 2 3)
		   (4 5 6))
		 '((10 20)
		   (100 200)
		   (1000 2000)))
