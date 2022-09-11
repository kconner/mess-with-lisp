(define outline-painter
  (let ((p0 (make-vect 0 0))
	(p1 (make-vect 0 1))
	(p2 (make-vect 1 1))
	(p3 (make-vect 1 0)))
    (segments->painter
     (list (make-segment p0 p1)
	   (make-segment p1 p2)
	   (make-segment p2 p3)
	   (make-segment p3 p0)))))

(define cross-painter
  (let ((p0 (make-vect 0 0))
	(p1 (make-vect 0 1))
	(p2 (make-vect 1 1))
	(p3 (make-vect 1 0)))
    (segments->painter
     (list (make-segment p0 p2)
	   (make-segment p1 p3)))))

(define diamond-painter
  (let ((p0 (make-vect 0 0))
	(p1 (make-vect 0 1))
	(p2 (make-vect 1 1))
	(p3 (make-vect 1 0)))
    (let ((m0 (add-vect p0 (scale-vect 0.5 (sub-vect p1 p0))))
	  (m1 (add-vect p1 (scale-vect 0.5 (sub-vect p2 p1))))
	  (m2 (add-vect p2 (scale-vect 0.5 (sub-vect p3 p2))))
	  (m3 (add-vect p3 (scale-vect 0.5 (sub-vect p0 p3)))))
      (segments->painter
       (list (make-segment m0 m1)
	     (make-segment m1 m2)
	     (make-segment m2 m3)
	     (make-segment m3 m0))))))

; Let's pretend I plotted the wave image and wrote those segments in.
