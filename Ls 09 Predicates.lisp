; Predicates are procedures that return True or False.
; They are used to test variables

; 1. atom
; It takes one argument and returns t if the argument is an atom or nil if otherwise.

(print (atom 10))       ; T
(print (atom '(1 2 3))) ; NILL

; 2. equal
; It takes two arguments and returns t if they are STRUCTUALLY equal or nil otherwise.
(print (equal "Hello" "Hello")) ; T
(print (equal 3 "3"))           ; NIL

; 3. eq
; It takes two arguments and returns t if they are same identical objects, sharing the SAME MEMORY LOCATION or nil otherwise.
(print (eq 'a 'a))              ; T
(print (eq 5.0 5))              ; NILL
(print (eq "Hello" "Hello"))    ; NILL
; The result of (eq "Hello" "Hello") being false is due to how strings are handled in Lisp and the behavior of the eq function.
; In Lisp, each time you create a string literal like "Hello", it creates a new string object in memory. 
; This is incontrast to how string literals are handled in Java

; 4. eql
; It takes two arguments and returns t if the arguments are eq, or if they are numbers of the same type with the same value, or if they are character objects that represent the same character, or nil otherwise.
(print (eql 3 3))           ; T
(print (eql 5.0 5))         ; NILL
(print (eql #\a #\a))       ; T ; Comparing characters. Not strings. For strings use equal
(print (eql 'a 'a))         ; T

; 5. evenp
; It takes one Integer argument and returns t if the argument is even number or nil if otherwise.
(print (evenp 4))
(print (evenp 5))

; 6. oddp
; It takes one numeric argument and returns t if the argument is odd number or nil if otherwise.
(print (oddp 5))
(print (oddp 4))

; 7. zerop
; It takes one numeric argument and returns t if the argument is zero or nil if otherwise.
(print (zerop 0))
(print (zerop 10))

; 8. numberp
; It takes one argument and returns t if the argument is a number or nil if otherwise.
(print (numberp 10))
(print (numberp 'a))
(print (numberp "Hello"))

; 9. integerp
; It takes one argument and returns t if the argument is an integer otherwise it returns nil.
(print (integerp 10))
(print (integerp 10.0))


; 10. rationalp
; It takes one argument and returns t if the argument is rational number, either a ratio or a number, otherwise it returns nil.
(print (rationalp 10/3))    ; T
(print (rationalp 10))      ; T
(print (rationalp 3.33))    ; F

; 11. floatp
; It takes one argument and returns t if the argument is a floating point number otherwise it returns nil.

; 12. realp
; It takes one argument and returns t if the argument is a real number otherwise it returns nil.

;13. complexp
; It takes one argument and returns t if the argument is a complex number otherwise it returns nil. 
(print (complexp #C(1 2)))      ; T
(print (complexp 0))            ; F


; 14 characterp
; It takes one argument and returns t if the argument is a character otherwise it returns nil.
(print (characterp #\a))        ; T
(print (characterp "a"))        ; F

; 15. stringp
; It takes one argument and returns t if the argument is a string object otherwise it returns nil.

; 16. arrayp
; It takes one argument and returns t if the argument is an array object otherwise it returns nil.
(print (arrayp #(1 2 3)))               ; T
(print (arrayp #2A((1 2 3) (4 5 6))))   ; T
(print (arrayp 10))                     ; F

; 17. packagep
; It takes one argument and returns t if the argument is a package otherwise it returns nil.
(print (packagep (find-package :common-lisp)))
(print (packagep 'a))

; 18. greaterp
; It takes one or more argument and returns t if either there is a single argument or the arguments are successively larger from left to right, or nil if otherwise.

; 19. lessp
;It takes one or more argument and returns t if either there is a single argument or the arguments are successively smaller from left to right, or nil if otherwise.

; 20. plusp
; It takes a single numeric argument and returns T (true) if the number is positive (greater than zero) and NIL (false) otherwise.

(print (plusp 10))
(print (plusp -10))

; 21. null
; It takes one argument and returns t if the argument evaluates to nil, otherwise it returns nil.
(print (null NIL))

; 22. symbolp
; It takes one argument and returns t if the argument is a symbol otherwise it returns nil.

#|

In Common Lisp, `EQ`, `EQL`, `EQUAL`, and `=` are predicates used for comparison, but they differ in what they compare and how they compare it. Here's a detailed explanation of each:

1. `EQ`
- Syntax: `(eq object1 object2)`
- Purpose: Checks if two objects are the same identical object in memory.
- Typical Use Cases: Used primarily for comparing symbols and objects where identity matters.
- Behavior: Returns `T` (true) if both arguments are the exact same object (i.e., they occupy the same memory location), otherwise returns `NIL` (false).
- Example:
  
  (eq 'a 'a) ; => T
  (eq 'a 'b) ; => NIL
  (eq 1 1)   ; May return T or NIL, implementation-dependent for numbers


2. `EQL`
- Syntax: `(eql object1 object2)`
- Purpose: Checks for equality with special handling for numbers and characters.
- Typical Use Cases: Used for comparing numbers of the same type, characters, and objects where identity matters.
- Behavior: Returns `T` if:
  - The arguments are the same object (like `EQ`).
  - The arguments are numbers of the same type and value.
  - The arguments are characters and are the same character.
  Otherwise, returns `NIL`.
- Example:
  
  (eql 'a 'a) ; => T
  (eql 'a 'b) ; => NIL
  (eql 1 1)   ; => T
  (eql 1 1.0) ; => NIL


3. `EQUAL`
- Syntax: `(equal object1 object2)`
- Purpose: Checks for structural equality.
- Typical Use Cases: Used for comparing lists, strings, and other structured data.
- Behavior: Returns `T` if the structures of the objects are the same and their contents are equivalent.
- Example:
  
  (equal '(1 2 3) '(1 2 3)) ; => T
  (equal '(1 2 3) '(1 2 4)) ; => NIL
  (equal "abc" "abc")       ; => T


4. `=`
- Syntax: `(= number1 number2 ... numberN)`
- Purpose: Numeric comparison for equality.
- Typical Use Cases: Used specifically for comparing numbers.
- Behavior: Returns `T` if all the provided numbers are numerically equal, otherwise returns `NIL`.
- Example:
  
  (= 1 1)     ; => T
  (= 1 1.0)   ; => T
  (= 1 2)     ; => NIL


Summary

- `EQ`: Checks if two objects are the same object (identity comparison).
- `EQL`: Checks for identity, but also considers numbers of the same type with the same value and characters as equal.
- `EQUAL`: Checks for structural equality, comparing the contents of lists, strings, and other structured objects.
- `=`: Numeric comparison for equality, comparing the values of numbers.

Each of these predicates serves a different purpose and is used in different contexts depending on the type of comparison needed.

|#