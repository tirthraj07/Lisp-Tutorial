#|

A cons is a compound data object having two components called the car and the cdr

Cons constructs memory objects which hold two values or pointers to two values. These objects are referred to as (cons) cells

In Lisp, lists are implemented on top of cons pairs. More specifically, any list structure in Lisp is either:

An empty list (), which is a special object usually called nil.

A cons cell whose car is the first element of the list and whose cdr is a list containing the rest of the elements

(cons 1 (cons 2 (cons 3 nil))) is shorthand for (list 1 2 3)

We can construct Trees using them
(cons (cons 1 2) (cons 3 4)) -> ((1 . 2) . (3 . 4))

       *
   *       *
1   2    3   4

|#

(print (cons 1 nil))
(print (cons 1 2))      ; Here 1 is CAR and 2 is CDR

; Cons as LIST
(print (cons 1 (cons 2 (cons 3 nil))))
(print (list 1 2 3))

; Printing CAR
(print (car '(1 2 3)))
(print (car (cons 1 (cons 2 (cons 3 nil)))))

; Printing CDR 
(print (cdr '(1 2 3)))
(print (cdr (cons 1 (cons 2 (cons 3 nil)))))


; Mixing CAR and CDR
(print (car (cdr (cdr '(1 2 3 4 5 6 7 ED)))))

#|
(car (cdr (cdr '(1 2 3 4 5 6 7 ED))))

Step 0:
(1 2 3 4 5 6 7 ED)

Step 1: (cdr '(1 2 3 4 5 6 7 ED))
=> (2 3 4 5 6 7 ED)

Step 2: (cdr '(2 3 4 5 6 7 ED))
=> (3 4 5 6 7 ED)

Step 3: (car '(3 4 5 6 7 ED))
=> 3
|#


; Page 839 of Doccumentation

#|
CAR and CDR variants
(caar x) => (car (car x))
(cadr x) => (car (cdr x))
(cdar x) => (cdr (car x))
(cddr x) => (cdr (cdr x))
(caaar x) => (car (car (car x)))
(caadr x) => (car (car (cdr x)))
(cadar x) => (car (cdr (car x)))
(caddr x) => (car (cdr (cdr x)))
(cdaar x) => (cdr (car (car x)))
(cdadr x) => (cdr (car (cdr x)))
(cddar x) => (cdr (cdr (car x)))
(cdddr x) => (cdr (cdr (cdr x)))
(caaaar x) => (car (car (car (car x))))
(caaadr x) => (car (car (car (cdr x))))
(caadar x) => (car (car (cdr (car x))))
(caaddr x) => (car (car (cdr (cdr x))))
(cadaar x) => (car (cdr (car (car x))))
(cadadr x) => (car (cdr (car (cdr x))))
(caddar x) => (car (cdr (cdr (car x))))
(cadddr x) => (car (cdr (cdr (cdr x))))
(cdaaar x) => (cdr (car (car (car x))))
(cdaadr x) => (cdr (car (car (cdr x))))
(cdadar x) => (cdr (car (cdr (car x))))
(cdaddr x) => (cdr (car (cdr (cdr x))))
(cddaar x) => (cdr (cdr (car (car x))))
(cddadr x) => (cdr (cdr (car (cdr x))))
(cdddar x) => (cdr (cdr (cdr (car x))))
(cddddr x) => (cdr (cdr (cdr (cdr x))))
|#


; For example, lets take a random list and perfrom caddar => car cdr cdr car
(print (caddar '((1 2 3) (4 5 6) (7 8 9) 10)))

#|
Step 0:
((1 2 3) (4 5 6) (7 8 9) 10)

Step 1: car((1 2 3) (4 5 6) (7 8 9) 10)
==> (1 2 3)

Step 2: cdr(1 2 3)
=> (2 3)

Step 3: cdr(2 3)
=> 3

Step 4: car(3)
=> 3

|#

