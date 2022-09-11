(define right-split (split beside below))
(define up-split (split below beside))

(define (split major minor)
  (define (iter painter n)
    (if (= n 0)
	painter
	(let ((smaller (iter painter (- n 1))))
	  (major smaller
		 (minor smaller smaller)))))
  iter)
