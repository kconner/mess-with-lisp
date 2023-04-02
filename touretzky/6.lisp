(defvar line '(roses are red))

(defun last-element (list)
  (let ((last-cons (last list)))
    (if (null last-cons)
        nil
        (car last-cons))))

(last-element line)
(last-element nil)

(member 'are line)

(defvar words)
(setf words
      '((one un)
        (two deux)
        (three trois)
        (four quatre)
        (five cinq)))

(assoc 'three words)
(assoc 'six words)

(defun translate (x)
  (second (assoc x words)))

(translate 'one)
(translate 'six)

(rassoc (cdr (assoc 'one words)) words)
(rassoc '(un) words)
(rassoc '(un) words :test #'equal)

(rassoc 'un '((one . un) (two . deux) (three . trois)))
