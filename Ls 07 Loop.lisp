; The loop construct is the simplest form of iteration provided by LISP. 
; In its simplest form It allows you to execute some statement(s) repeatedly until it finds a return statement.
; (loop (s-expressions))
; Note that without the return statement, the loop macro would produce an infinite loop

(setq i 0)
(loop
  (format t "Iteration ~a~%" i)
  (incf i 1) ; or (setq i (+ i 1))
  (when (>= i 10)
    (return i)))
