#|
The cond construct in LISP is most commonly used to permit branching.
Syntax for cond is −
(cond   (test1    action1)
   (test2    action2)
   ...
   (testn   actionn)
)

If the first test following cond, test1, is evaluated to be true, then the related action part, action1, is executed, its value is returned and the rest of the clauses are skipped over.
If none of the test conditions are evaluated to be true, then the cond statement returns nil.
|# 

(setq age 20)
(cond 
    ((>= age 18) (print "You can vote now"))
    ((>= age 16) (print "You can get your learners permit"))
    ((>= age 13) (print "You are a teenager now!"))
    ((< age 13) (print "You are a child"))
)
