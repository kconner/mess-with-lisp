(withdraw 25)

(define (withdraw amount)
  (if (>= balance amount)
      (begin
	(set! balance
	      (- balance amount))
	balance)
      "Insufficient funds"))

(set! balance (- balance amount))
