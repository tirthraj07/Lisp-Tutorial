#|
Rest is essentially a synonym for cdr, but with a more descriptive name that indicates its purpose of returning the rest of the list.
Usage: It is used to improve code readability by making it clear that the function is operating on lists.

Functionally Identical: In practical terms, cdr and rest can be used interchangeably when working with lists, as they produce the same result.
Preferred Usage: Use rest for better readability in code that manipulates lists. Use cdr when working with cons cells or when following traditional Lisp code conventions.

First and car are also closely related, much like rest and cdr. They both return the first element of a list, but they have slightly different connotations and usage contexts.

Functionally Identical: In practical terms, car and first can be used interchangeably when working with lists, as they produce the same result.
Preferred Usage: Use first for better readability in code that manipulates lists. Use car when working with cons cells or when following traditional Lisp code conventions.

Page 854 of Docs
(first list) ≡ (car list)
(second list) ≡ (car (cdr list))
(third list) ≡ (car (cddr list))
(fourth list) ≡ (car (cdddr list))
(fifth list) ≡ (car (cddddr list))
(sixth list) ≡ (car (cdr (cddddr list)))
(seventh list) ≡ (car (cddr (cddddr list)))
(eighth list) ≡ (car (cdddr (cddddr list)))
(ninth list) ≡ (car (cddddr (cddddr list)))
(tenth list) ≡ (car (cdr (cddddr (cddddr list))))
|#

(print (first '(a e i o u)))        ; a
(print (rest '(a e i o u)))         ; (e i o u)

(print (first '((a e) i o u)))      ; (a e)
(print (rest '((a e) i o u)))       ; (i o u)
