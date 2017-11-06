mapea f listaV = [f x | x <- listaV]

--mapeaVarios listaF listaV = [ [f x | x <- listaV] | f <- listaF]--

filtra f listaV = [x | x <- listaV, f x]

evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones listaV listaF = [ [f x | x <- listaV] | f <- listaF]

--Ejercicio 6--
--  evaluaciones [0,(3.14/2),((-3.14)/2), 3.14,(-3.14)] [(0<) . sin, (0==) . cos, (0==) . tan]--