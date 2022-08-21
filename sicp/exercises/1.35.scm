(/ (+ 1 (sqrt 5)) 2)

(fixed-point
 (lambda (phi) (+ 1 (/ 1 phi)))
 1.0)
