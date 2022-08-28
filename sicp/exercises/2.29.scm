(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define left-branch car)
(define right-branch cadr)

(define branch-length car)
(define branch-structure cadr)

(define (total-weight m)
  (cond ((number? m) m)
        (else (+ (total-weight (branch-structure (left-branch m)))
                 (total-weight (branch-structure (right-branch m)))))))

(define (balanced? m)
  (if (number? m)
      #t
      (let ((left (left-branch m))
            (right (right-branch m)))
        (and
         (= (* (branch-length left)
               (total-weight (branch-structure left)))
            (* (branch-length right)
               (total-weight (branch-structure right))))
         (balanced? (branch-structure left))
         (balanced? (branch-structure right))))))

(make-mobile (make-branch 10 2)
             (make-branch 20 3))

(make-mobile (make-branch 10 4)
             (make-branch 20 2))

(make-mobile (make-branch 7 10)
             (make-branch 10 (make-mobile (make-branch 20 5)
                                          (make-branch 50 2))))

(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))


(define left-branch car)
(define right-branch cdr)

(define branch-length car)
(define branch-structure cdr)

; No need to change anything but the selectors.
