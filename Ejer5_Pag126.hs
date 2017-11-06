mapea f listaV = [f x | x <- listaV]

--mapeaVarios listaF listaV = [ [f x | x <- listaV] | f <- listaF]--

filtra f listaV = [x | x <- listaV, f x]

evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones listaV listaF = [ [f x | x <- listaV] | f <- listaF]