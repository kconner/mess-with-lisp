(defun read-stream (s)
  (let* ((eof (list 'eof))
         (result (read s nil eof)))
    (if (not (eq result eof))
        (cons result (read-stream s)))))

(defvar code
  (with-open-file (one "1.lisp")
    (cons 'progn (read-stream one))))

(eval code)
