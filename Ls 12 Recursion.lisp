; Function calling itself is called as Recursion

(defun fac(n)
    (if (= n 0) 
        1                   ; if block
        (* n (fac (- n 1)) )    ; else block
    )
)

(dotimes (num 11) (format t "Factorial of ~d : ~d ~%" num (fac num)))
