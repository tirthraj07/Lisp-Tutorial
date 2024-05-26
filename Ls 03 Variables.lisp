; In LISP, each variable is represented by a symbol. 
; The variable's name is the name of the symbol and it is stored in the storage cell of the symbol

; Global Variables
; Global variables have permanent values throughout the LISP system and remain in effect until a new value is specified.
; Global variables are generally declared using the defvar construct.

(defvar x 234)
(print x)

; setq is used to set the value of an existing variable
(setq x 10)
(print x)

; Since there is no type declaration for variables in LISP, you directly specify a value for a symbol with the setq construct.
(setq y 20)
(print y)

;In LISP, constants are variables that never change their values during program execution. Constants are declared using the defconstant construct.
(defconstant PIE 3.141592)
(print PIE)
; Try Changing the value of constant
; (setq PI 3) ; ERROR: SETQ: PI is a constant, may not be used as a variable

; Local Variables are defined within a given procedure
; Like the global variables, local variables can also be created using the setq construct.
; There are two other constructs - let and prog for creating local variables.

( let ( (message1 "This is message 1") (message2 "And it is lexically Scoped") )
    (print message1)
    (print message2)
)

; (print message1)    ; Error - EVAL: variable MESSAGE1 has no value