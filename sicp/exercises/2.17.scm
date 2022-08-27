(define (last-pair alist)
  (if (null? (cdr alist))
      alist
      (last-pair (cdr alist))))
