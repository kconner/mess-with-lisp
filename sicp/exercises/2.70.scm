(define a-tree
  (generate-huffman-tree
   '((A 2) (NA 16)
     (BOOM 1) (SHA 3)
     (GET 2) (YIP 9)
     (JOB 2) (WAH 1))))

(define message
  '(GET A JOB
	SHA NA NA NA NA NA NA NA NA
	GET A JOB
	SHA NA NA NA NA NA NA NA NA
	WAH YIP YIP YIP YIP
	YIP YIP YIP YIP YIP
	SHA BOOM))

(define encoded-message (encode message a-tree))

(length encoded-message)
;; 84 bits

(* 3 (length message))
;; 108 bits
