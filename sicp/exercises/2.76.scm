;; Explicit dispatch
;; New type: Add to each procedure's branches
;; New operation: Add a procedure to each type

;; Data-directed style
;; New type: Add a new installer procedure
;; New operation: Add a procedure to each installer

;; Message-passing style
;; New type: Add a new dispatch-returning constructor
;; New operation: Add a message to each dispatch constructor

;; For frequent new types, do what lets you leave the other types alone.
;; Message-passing or data-directed style.

;; For frequent new operations, try to leave existing procedures alone.
;; Explicit dispatch, or even an unfactored generic procedure would be
;; self-contained.
