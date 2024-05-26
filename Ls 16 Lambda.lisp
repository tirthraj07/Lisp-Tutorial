#|
The lambda function in Common Lisp is used to create anonymous functions. 
These are functions that are not bound to a name but can be used wherever a function is expected.

Syntax
(lambda (parameters) body)
|#

(print ((lambda (x y) (* x y)) 10 20))

; Creates an anonymous function and assigns it to a variable
(setq add-one (lambda (x) (+ x 1)))

; To call the function, we use 'funcall' function, which calls the function dynamically
(print (funcall add-one 10))
