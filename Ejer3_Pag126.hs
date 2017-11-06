divide a b = (mod b a == 0)

divisores a = [x | x<- [1..a], divide x a]

primo x 
	| x /=1 = y==2
	| x == 1 = False
	where y = length(divisores x)
	
--Ejercicio notacion extendida--
--[x | x<- [1..100], primo x]--