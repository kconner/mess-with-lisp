(defvar my-vec)
(setf my-vec '#(tuning violin 440 a))

(type-of my-vec)
(describe 'simple-vector)

(aref my-vec 1)

(defvar a)
(setf a '#(nil nil nil nil nil))
(setf (aref a 0) 'foo)
(setf (aref a 1) '37)
(setf (aref a 2) 'bar)
a
(aref a 1)

(length a)
(length (list 1 2))
(describe 'sequence)
(reverse (list 1 2))
(reverse a)

(make-array 5 :initial-element 1)
array-dimension-limit
array-total-size-limit

(describe 'string)

(defvar h)
(setf h (make-hash-table))
(type-of h)
(setf (gethash 'john h) '(attorney (16 maple drive)))
(gethash 'john h)
h
(describe h)

(get 'fred 'age)
(setf (get 'fred 'age) 23)
(get 'fred 'age)
(describe 'fred)
(symbol-plist 'fred)
(remprop 'fred 'age)

(defvar ls (list))
(pushnew 3 ls)

(defvar lss (list (list)))
(pushnew 3 (car lss))

(room)
(room t)
(gc)
(gc :full t)

(describe 'simple-base-string)

(coerce "yes" 'list)

(map 'list #'+
     '(1 2 3 4)
     '#(10 20 30 40))
