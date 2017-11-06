mapea f listaV = [f x | x <- listaV]

--mapeaVarios listaF listaV = [ [f x | x <- listaV] | f <- listaF]--

filtra f listaV = [x | x <- listaV, f x]