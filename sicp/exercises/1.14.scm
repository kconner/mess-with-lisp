; count-change recurses to a maximum depth corresponding to
; the number of coins, so the order of growth for storage
; is theta(n).
; The number of steps is n when there's just one kind of
; coin, but when there are two, recursion proceeds in two
; dimensions, subtracting nickels on one axis and pennies
; on the next. That means with five kinds of coins there
; are five dimensions that depend on the number of coins,
; theta(5^n).
