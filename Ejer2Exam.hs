centros t = [(x,y) | x<-lista, y<-lista]
	where lista = [s | s<-[-1+(t/2), -1+(t/2)+t..1-t/2]]
	

distancia (x,y) = sqrt((x*x)+(y*y))
	
num_puntos t = [l | l<-centros(t), distancia(l)<=1]

pi_aprox t = fromIntegral(s)*t*t
	where s = length(num_puntos(t))