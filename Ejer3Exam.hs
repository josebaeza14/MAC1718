divide a b = (mod b a == 0)

divisores a = [x | x<- [1..a], divide x a]

primo x 
	| x /=1 = y==2
	| x == 1 = False
	where y = length(divisores x)
	

lista_primos ind = l!!(ind-1)
	where l = [x | x<- [1..1000], primo x]


claveHash l
	| n>0 = x*s + claveHash rest
	| n==0 = 0
	where 
		n=length l
		s = lista_primos n
		rest = tail l
		x = head l