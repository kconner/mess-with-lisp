(define (make-monitored f)
  (let ((count 0))
    (lambda (arg)
      (cond ((eq? arg 'how-many-calls?)
	     count)
	    ((eq? arg 'reset-count)
	     (set! count 0))
	    (else (begin (set! count (+ 1 count))
			 (f arg)))))))

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)
