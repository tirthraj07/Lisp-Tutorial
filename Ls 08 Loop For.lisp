; The loop for construct allows you to implement a for-loop like iteration as most common in other languages.

; Syntax 1
;(loop for loop-variable in <a list>
;   do (action)
;)

(loop for num in '(1 2 3 4 5)
    do (print num)
)

(terpri)    ; Newline

(loop for word in '(hello world how are you)
    do (format t "~s " word)

)
; Note that the list must be preceded by backtick (`) or single quote (') 
; They are shorthand for quote function
; It prevents the list from being evaluated

(terpri)

; Syntax 2
;(loop for loop-variable from value1 to value2
;   do (action)
;)

(loop for a from 10 to 20
    do (format t "~s " a)
)
(terpri)