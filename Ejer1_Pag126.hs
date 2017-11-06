divide a b = (mod b a == 0)

divisores a = [x | x<- [1..a], divide x a]