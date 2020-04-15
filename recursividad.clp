
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