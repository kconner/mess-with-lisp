;;; guess the number game

(defun guess-the-number-game ()
  "Guess the number game."
  ;(interactive)
  (let ((number (random 100))
        (guess nil)
        (guesses 0))
    (while (not (equal number guess))
      (setq guess (read-number "Guess the number: "))
      (setq guesses (1+ guesses))
      (cond ((< guess number)
             (message "Too low"))
            ((> guess number)
             (message "Too high"))))
    (message "You guessed it in %d guesses" guesses)))

(defun read-number (prompt)
  (write-string prompt)
  (parse-integer (read-line)))

(read-number "hello")

