pertenece e conj 
	| n==0 = False
	| n>0 = if (e==cab) then True else pertenece e resto
	where
		n = length conj
		cab = head conj
		resto = tail conj
		
subconjunto conj1 conj2
	| n==0 = True
	| n>0 = if (pertenece cab conj2) then subconjunto resto conj2 else False
	where
		cab = head conj1
		resto = tail conj1
		n = length conj1
		
iguales conj1 conj2 = if ((subconjunto conj1 conj2) && (subconjunto conj2 conj1)) then True else False

sinRepetidos listaNum 
	| listaNum == [] = []
	| any (== head listaNum) (tail listaNum) = sinRepetidos (tail listaNum)
	| otherwise = (take 1 listaNum) ++ sinRepetidos (tail listaNum)

union conj1 conj2 = sinRepetidos (conj1 ++ conj2)

