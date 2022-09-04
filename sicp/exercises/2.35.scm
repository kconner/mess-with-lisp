(define (count-leaves t)
  (accumulate
   +
   0
   (map
    (lambda (item) 1)
    (enumerate-tree t)
    )))

(count-leaves (list 1 (list 2 (list 3 4)) 5))
