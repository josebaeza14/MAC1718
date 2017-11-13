tomarMientras f listaV = [x | x <- listaV, f x]

eliminarMientras f listaV = [x | x <- listaV, f x ==False]
