(define (square x)
  (* x x))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

; The list is reversed because the answer is consed up from
; the car of each visited element.

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square
                     (car things)))))) 
  (iter items nil))

; When you cons, if the second argument isn't a cons cell,
; the resulting structure won't be treated like a linear list.
; When Lisp interprets cons trees as lists, it treats the car
; as the element and the cdr as the head of the rest of the list,
; and those roles are not interchangeable.
