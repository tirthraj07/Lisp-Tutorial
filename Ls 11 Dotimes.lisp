; The dotimes construct allows looping for some fixed number of iterations.

(dotimes (n 11)
   (format t "~d : ~d ~%" n (* n n))
)



; Optionally you can provide a return value which will be displayed only when the variable reaches to the high value
(dotimes (a 5 (print "Bye"))
    (format t "Hello-~d " a)
)