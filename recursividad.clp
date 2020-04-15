
#fibonacci
(deffunction fi (?n)
        (if (< ?n 2) then 
                ?n
        else 
            (+ (fi(- ?n 1)) (fi(- ?n 2))))
)

(deffunction fibo (?n)
    (loop-for-count( ?cont 0 (- ?n 1) ) do
        (printout t "" (fi ?cont) crlf)
    )
)
(printout t "" (fibo 5) crlf)

#Numeros primos
(deffunction primo (?x)
	(bind ?senal 0)
	(bind ?aux (- ?x 1))
	(loop-for-count(?i 2 ?aux) 
		(printout t (mod ?x ?i) crlf)
		(if ( = (mod ?x ?i) 0)
		then
			(if (neq ?x 2)
			then
				(bind ?senal 1)
			)
		)
	)
	(if ( = ?senal 1)
	then 
		(printout t "El numero no es primo" crlf)
	else
		(printout t "El numero es primo" crlf)
	)
)