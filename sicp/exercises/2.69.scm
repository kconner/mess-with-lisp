(define (generate-huffman-tree pairs)
  (successive-merge
   (make-leaf-set pairs)))

(define (successive-merge leaves)
  (cond ((null? (cdr leaves)) (car leaves))
	(else (successive-merge
	       (adjoin-set
		(make-code-tree (car leaves) (cadr leaves))
		(cddr leaves))))))

(generate-huffman-tree '((A 4) (B 2) (C 1) (D 1)))
(generate-huffman-tree '((A 8) (B 3) (C 1) (D 1) (E 1) (F 1) (G 1) (H 1)))
