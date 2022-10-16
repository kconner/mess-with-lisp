;; The top-level magnitude function from 2.4.3 runs apply-generic,
;; which doesn't find anything in the table for a complex argument.
;; The additional installer code supplies that.
;; Since it just calls magnitude again, but on a tag-stripped argument,
;; it reduces to the rectangular or polar implementation.
