(defrule vectAux
(vector $?x)
=>
(assert (vector-aux ?x)))

(defrule sortVector
?f <- (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?m2 ?m1 $?e)))

(defrule final
(not (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e))
(vector $?x)
(vector-aux $?y)
=>
(printout t "Lista ordenados = " ?y  ": Lista Anterior" ?x crlf))
