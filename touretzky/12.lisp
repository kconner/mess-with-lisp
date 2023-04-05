(typep 3 'number)
(typep 3 'integer)
(typep 3 'float)
(typep 3 'real)
(typep 3 'rational)
(typep 3 'complex)
(typep 'foo 'symbol)
(typep 'foo 'keyword)
(typep :foo 'keyword)
(typep :foo 'symbol)

(typep t 'symbol)
(typep nil 'symbol)
(typep nil 'list)
(typep nil 'cons)

(type-of 'aardvark)
(type-of 3)
(typep 3 'fixnum)
(type-of 3.5)
(type-of "etc")

(defstruct starship
  (name nil)
  (speed 0)
  (condition 'green)
  (shields 'down))

(make-starship)
(type-of (make-starship))
(typep (make-starship) 'starship)
(starship-p (make-starship))
(copy-starship (make-starship))
(starship-name (make-starship))

(let ((ship (make-starship)))
  (setf (starship-name ship) "Enterprise")
  ship)


(make-starship
  :name "Enterprise"
  :speed 100
  :condition 'red
  :shields 'up)

(describe (make-starship))
(describe 'starship)
(describe 'fixnum)
(describe 'null)
(describe 'structure-object)
(describe 'SB-PCL::SLOT-OBJECT)
(describe 'standard-object)
(describe 'hash-table)
(describe 'condition)
(describe 'warning)

(inspect 'starship)

(equal (make-starship) (make-starship))
(equalp (make-starship) (make-starship))

(defstruct ship
  (name nil)
  (captain nil)
  (crew-size nil))

(defstruct (pew-pew-ship (:include ship))
  (weapons nil)
  (shields nil))

(defstruct (supply-ship (:include ship))
  (cargo nil))

(describe 'ship)
(let ((a-ship (make-pew-pew-ship)))
  (setf (ship-name a-ship) "USS SSD")
  a-ship)
