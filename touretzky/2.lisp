'((bows arrows) (flowers chocolates))

(length '((open) (the pod pay doors) hal))

nil
()

(length ())

(defun my-second (x)
  (first (rest x)))

(my-second '(penguins love italian ices))

(defun my-third (x)
  (first (rest (rest x))))

(my-third '(penguins love italian ices))

(defun my-third (x)
  (second (rest x)))

(my-third '(penguins love italian ices))

(rest '(the big bopper))

(cadddr '(1 2 3 4))

(cons 'sink '(or swim))

(defun greet (x)
  (cons 'hello x))

(greet '(professor higgins))

(defun list2 (a b)
  (cons a (cons b nil)))

(list2 'a 'b)

(defun blurt (a b)
  (list a 'is 'a b))

(blurt 'mike 'homie)

(defun say-what (x)
  (cons 'what (rest x)))

(say-what '(take a nap))

(caaadr '(((good)) ((night))))

(listp ())
(listp 'foo)

(consp nil)
(consp '(nil))

(atom 18)
(atom 'golf)
(atom nil)
(atom '(1))
