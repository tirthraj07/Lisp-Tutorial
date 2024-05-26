(setq A 10)
(setq B 20)

; Arithmetic Operations

; In Lisp, mathematical operations are typically expressed using prefix notation
; Additionally, Lisp's built-in mathematical functions, such as +, -, *, and /, are prefix functions that take any number of arguments and return the result of the operation. 
; This allows for flexibility in expressing arithmetic expressions of varying complexity.

; + Adds two Operands (+ A B)
(+ A B)

(print (+ A B))

(print (+ 1 2 3))       ; 1+2+3  = 6 --> (+ (+ 1 2) 3)

; - Subtracts two Operands (- A B)
(- A B)

(print (- A B))

(print (- 1 2 3))      ; 1-2-3 = -4 --> (- (- 1 2) 3)

; * Multiplies two Operands (* A B)
(* A B)

(print (* A B))

(print (* 1 2 3))   ; 1*2*3 = 6 --> (* (* 1 2) 3)

; / Divides two Operands (/ B A). Here Numerator is B and A is denominator 

(/ B A)

(print (/ B A))     ; 20/10 = 2

(print (/ 3 2 1)) ; (3/2)/1 = 1.5 --> (/ (/ 3 2) 1) 

; Modulus Operator
(mod A B)

(print (mod A B))   ; 10mod20 = 10

; Increment Operator (incf A B) Increments integer value of first operand by second operand. Shorthand for A = A + B
(incf A B)
(print A)

; Decrement Operator (decf A B) Decrements integer value of first operand by second operand. Shorthand for A = A - B
(decf A B)
(print A)


; Comparison Operations
; unlike relational operators in other languages, LISP comparison operators may take more than two operands and they work on numbers only.

; = Operator checks if the operands are equal
(print (= A B))

; /= Operator checks if the operands are not equal
(print (/= A B))

; Greater and Greater or equal
(print (> A B))
(print (>= A B))

; Less than and Less than or equal
(print (< A B))
(print (<= A B))

; max operator returns the max from given operands
(print (max A B))

; min operator return the min from given operands
(print (min A B))


; Logical Operators 
; Lisp provides three logical operations and, or and not
(print(and A B))
(print(or A B))
(print(not A))

; Bitwise Operators
; Check https://www.tutorialspoint.com/lisp/lisp_operators.htm#:~:text=Bitwise%20Operations%20on%20Numbers