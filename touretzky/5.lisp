(defvar vowels)

(setf vowels '(a e i o u))

vowels

(setf vowels (cons 'y vowels))

vowels

(defun poor-style (p)
  (setf p (+ p 5))
  (list 'result 'is p))

(poor-style 8)
