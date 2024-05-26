#|
setf is a powerful macro in Common Lisp used for generalized assignment. 
It can assign values to variables, as well as more complex data structures like elements in lists, arrays, hash tables, and object slots. 
It is a generalized form of setq, allowing for assignments beyond just simple variables

Syntax:
(setf place value)

place: The location to which the value will be assigned. 
This can be a variable, an element of a list, an element of an array, a hash table entry, etc.

value: The value to assign to the place.

|#

; Assigning to Variable
(setq x 10)         ; Using setq
(print x)           ; Print 10
(setf x 20)         ; Using setf
(print x)           ; Prints 20

; Modifying a List
(setq my-list '(1 2 3 4))
(setf (nth 2 my-list) 42) ; Sets the third element of my-list to 42
(print my-list)           ; Prints (1 2 42 4)

;Modifying an Array
(setq my-array (make-array 3 :initial-contents '(1 2 3)))
(setf (aref my-array 1) 42) ; Sets the second element of my-array to 42
(print my-array)            ; Prints #(1 42 3)
