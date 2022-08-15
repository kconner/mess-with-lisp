(define (pt row column)
  (cond ((or (<= column 0) (<= row column)) 1)
        (else (+ (pt (- row 1) (- column 1))
                 (pt (- row 1) column)))))
