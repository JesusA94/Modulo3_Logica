Algoritmo TablaMinaMax
	Definir valor_min, valor_max Como Entero
	Definir i, j Como Entero
	Mostrar "Ingrese el valor minimo a multiplicar"
	Leer valor_min
	Mostrar "Ingrese el valor maximo a multiplicar"
	Leer valor_max
	Para i=valor_min hasta valor_max
		Mostrar "Tabla del #" i 
		Para j= valor_min hasta valor_max
			Mostrar i "*" j "=" i*j
			
		FinPara
	FinPara
	
FinAlgoritmo
