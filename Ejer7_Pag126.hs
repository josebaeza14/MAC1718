divisores num = [x  | x <- [1..num], mod num x == 0]

primo x = length(divisores x)==2

primos_x n = [x|x<-[1..n], primo x]

num_div x y
	| mod x y == 0 = 1 + num_div(div x y) y
	| otherwise = 0

descomposicion num = [(n, num_div num n) | n<- primos_x num, mod num n == 0]