; Fast
(flatmap
 (lambda (rest-of-queens)
   (map (lambda (new-row)
	  (adjoin-position new-row k rest-of-queens))
	(enumerate-interval 1 board-size)))
 (queen-cols (- k 1)))

; Slow
(flatmap
 (lambda (new-row)
   (map (lambda (rest-of-queens)
	  (adjoin-position new-row k rest-of-queens))
	(queen-cols (- k 1))))
 (enumerate-interval 1 board-size))

;; The latter method is slow because it recurses in the inner loop,
;; while the former recurses in the outer loop.
;; That makes the latter method slower by a factor of board-size
;; at every level, over board-size levels, which is board-size^board-size.
