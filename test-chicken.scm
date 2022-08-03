(define i (lambda (x) x))
(define k (lambda (x) (lambda (y) x)))
(define s (lambda (x) (lambda (y) (lambda (z) ((x z) (y z))))))

(print ((k s) i))
(print (((s k) s) k))

(print (i 'foo))
(print (((s k) k) 'foo))

(define iota (lambda (x) ((x s) k)))

(print (iota (iota (iota iota))))
(print (iota (iota (iota (iota iota)))))

(define true k)
(define false (s k))

(print true)
(print ((true true) false))
(print false)
(print ((false true) false))

(define not. (false true))

(print (true not.))
(print (false not.))

(define or. true)

(print ((true or.) true))
(print ((true or.) false))
(print ((false or.) true))
(print ((false or.) false))

(define and. false)

(print ((true true) and.))
(print ((true false) and.))
(print ((false true) and.))
(print ((false false) and.))

(define y
  (lambda (f)
    ((lambda (x)
       ((f x) x))
     (lambda (x)
       ((f x) x)))))
