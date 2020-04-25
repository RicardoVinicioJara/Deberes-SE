(deffacts incio
(H)
(K))

(defrule A
(A)
=>
(assert (E))
(printout t "Existe A Activa E" crlf))  

(defrule B
(B)
=>
(assert (D))
(printout t "Existe B Activa D" crlf))  

(defrule H
(H)
=>
(assert (A))
(printout t "Existe H Activa A" crlf))  

(defrule EG
(E)
(G)
=>
(assert (C))
(printout t "Existe E:G Activa C" crlf))  

(defrule EK
(E)
(K)
=>
(assert (B))
(printout t "Existe E:K Activa B" crlf))  

(defrule DEG
(D)
(E)
(G)
=>
(assert (C))
(printout t "Existe D:E:G Activa C" crlf))  

(defrule DKF
(D)
(K)
(F)
=>
(assert (A))
(printout t "Existe D:K:F Activa A" crlf))  

;-- Probando nomas
(defrule K
(K)
=>
(assert (X))
(printout t "Existe K Activa X" crlf))  

(defrule X
(X)
=>
(assert (M))
(assert (W))
(printout t "Existe X Activa M:W" crlf))  


(defrule MW
(M)
(w)
=>
(assert (P))
(printout t "Existe M:W Activa P" crlf))  