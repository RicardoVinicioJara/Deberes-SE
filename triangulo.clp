(defrule inicial
   (initial-fact)
   =>
   (printout t "----------- SELECIONE OPCION -----------" crlf)
   (printout t "   1: Verificar por lados" crlf)
   (printout t "   2: Verificar por angulos" crlf)
   (printout t "   3: Salir" crlf)
   (assert (tipo (read))))

(defrule triangulo
   (tipo 1)
   =>
   (printout t "----------- SELECIONE OPCION -----------" crlf)
   (printout t "   1: Triangulo tiene 3 lados iguales" crlf)
   (printout t "   2: Triangulo tiene 2 lados iguales" crlf)
   (printout t "   3: Triangulo tiene lados desiguales" crlf)
   (printout t "   4: Menu Principal " crlf)
   (bind ?res (read))
   (if (eq ?res 1)
      then
      (assert (lados ?res))
      else (if (eq ?res 2)
         then
         (assert (lados ?res))
         else (if (eq ?res 3)
            then
            (assert (lados ?res))
            else (if (eq ?res 4)
            then
            (printout t " Regresando" crlf)
            (printout t " " crlf)
            (reset)
            (run)
                else 
                (printout t "   Opcion incorrecta " crlf)
                (printout t " " crlf)
                (reset)
                (run)
                (assert (tipo 1 )))))))

(defrule equilatero
   (lados 1)
   =>
   (printout t "----------- Res:  Triangulo Equilatero -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))

(defrule isosceles
   (lados 2)
   =>
   (printout t "----------- Res:  Triangulo isosceles -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))

(defrule escaleno
   (lados 3)
   =>
   (printout t "----------- Res:  Triangulo escaleno -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))


(defrule triangulo2
   (tipo 2)
   =>
   (printout t "----------- SELECIONE OPCION -----------" crlf)
   (printout t "   1: Triangulo tiene un angulo de 90 grados " crlf)
   (printout t "   2: Triangulo tiene sus agulos agudos " crlf)
   (printout t "   3: Triangulo tiene algulo optuso" crlf)
   (printout t "   4: Menu Principal " crlf)
   (bind ?res (read))
   (if (eq ?res 1)
      then
      (assert (angulo ?res))
      else (if (eq ?res 2)
         then
         (assert (angulo ?res))
         else (if (eq ?res 3)
            then
            (assert (angulo ?res))
            else (if (eq ?res 4)
            then
            (printout t " Regresando" crlf)
            (printout t " " crlf)
            (reset)
            (run)
                else 
                (printout t "   Opcion incorrecta " crlf)
                (printout t " " crlf)
                (reset)
                (run)
                (assert (tipo 1 )))))))

(defrule rectangulo
   (angulo 1)
   =>
   (printout t "----------- Res:  Triangulo Rectangulo -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))

(defrule acutangulo
   (angulo 2)
   =>
   (printout t "----------- Res:  Triangulo acutangulo -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))

(defrule obtusangulo
   (angulo 3)
   =>
   (printout t "----------- Res:  Triangulo Obtusangulo -----------" crlf)
   (printout t " " crlf)
   (reset)
   (run))