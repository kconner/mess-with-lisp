(define (tree->list-1 tree)
  (if (null? tree)
      '()
      (append
       (tree->list-1
	(left-branch tree))
       (cons (entry tree)
	     (tree->list-1
	      (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
	result-list
	(copy-to-list
	 (left-branch tree)
	 (cons (entry tree)
	       (copy-to-list
		(right-branch tree)
		result-list)))))
  (copy-to-list tree '()))

;; I think they behave the same.

(define tree1
  (make-tree 7
	     (make-tree 3 (make-tree 1 '() '()) (make-tree 5 '() '()))
	     (make-tree 9 '() (make-tree 11 '() '()))))

(define tree2
  (make-tree 3
	     (make-tree 1 '() '())
	     (make-tree 7 (make-tree 5 '() '())
			(make-tree 9 '() (make-tree 11 '() '())))))

(define tree3
  (make-tree 5
	     (make-tree 3 (make-tree 1 '() '()) '())
	     (make-tree 9
			(make-tree 7 '() '())
			(make-tree 11 '() '()))))

(tree->list-1 tree1)
(tree->list-2 tree1)
(tree->list-1 tree2)
(tree->list-2 tree2)
(tree->list-1 tree3)
(tree->list-2 tree3)

;; Yep, same output.

;; The first procedure has a steeper order of growth in the number of steps.
;; Both visit each node once, append is O(n), and cons is O(1).
;; append runs at every node over its subtree. All calls to append at each
;; level of the tree do mutually exclusive work, totaling the number of nodes
;; in the tree in the worst case. There are log n levels. So the first
;; procedure is O(n log n) and the second is O(n).
