(defun fac(num) 
"This fn finds factorial"

(setq ans 1)
(loop 
    (if (<= num 0) (return ans))
    (setq ans (* ans num))
    (decf num)
)

)

(loop for i from 0 to 10
    do(format t "~d : ~d ~%" i (fac i))
)