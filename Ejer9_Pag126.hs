quitaBlancos cadena
	| head(cadena)==' ' = quitaBlancos((drop 1 cadena))
	| otherwise = cadena
