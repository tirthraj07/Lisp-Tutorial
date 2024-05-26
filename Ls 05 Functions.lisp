; The macro named defun is used for defining functions. The defun macro needs three arguments: Name, Parameters and Body
; Syntax: (defun name (parameter-list) "Optional documentation string." body)


(defconstant PIE 3.14)

( defun area(rad)
    "Returns the area of the circle"
    (* PIE rad rad)
)

(write (area 10))