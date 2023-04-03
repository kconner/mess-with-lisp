(defvar a)

(setf a 3)
(incf a 10)
(decf a)

(defvar ls (list))
(push 3 ls)
(pop ls)

(push (list 1 2 3) ls)
(nth 1 ls)
(setf (nth 1 ls) 10)
(push 0 (nth 0 ls))
ls
