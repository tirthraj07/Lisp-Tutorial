; Conditional statements are typically handled using the if special form, which has the following syntax:
; Syntax (if (condition) (body) (else-if body))
; It's more general-purpose and can handle any condition.
; Provides both true and false branches

(if (< 5 10 )
    (print "Condition is True")
    (print "Condition is False. This should not execute")
)

(if (> 5 10 )
    (print "Condition is True. This should not execute")
    (print "Condition is False")
)

; For multiple lines, expressions are typically grouped together using 'progn' to form a body of code
(if (< 5 10)
    (progn
        (print "Condition is True")
        (print "Multiple lines lines in if body")
    )
)

; Additionally, you can use 'when' and 'unless' for simpler conditional expressions:

; when executes a body of code if a condition is true.

; Syntax: (when condition body)
; It's commonly used when you only need to execute code when a condition is true, without an alternative branch.

(when (> x 0)
  (print "x is positive")
)

; unless executes a body of code if a condition is false.
; unless executes body if condition is false.
; It's the opposite of when and is used when you only need to execute code when a condition is false, without an alternative branch

(unless (equal x 0)
  (print "x is not zero")
)