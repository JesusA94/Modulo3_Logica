Subproceso Mostrar_Colores(Colores)
	para i=1 hasta 7
		mostrar Colores[i] Sin Saltar
		si i<7
			entonces mostrar "," Sin Saltar
		sino mostrar ""
		FinSi
	FinPara		
FinSubProceso

Algoritmo Ordenamiento_Colores
	Dimension Colores[7]
Para i=1 hasta 7
	Mostrar "Ingrese el color " i Sin Saltar
	Leer Colores[i]
FinPara
// Ordenamiento ascendente
Para i=1 hasta 6
	Para j=1 hasta 6
		Si Colores[j]>Colores[j+1] entonces
			aux=Colores[j]
			Colores[j]=Colores[j+1]
			Colores[j+1]=aux
		FinSi
	FinPara
//	Mostrar "Resultado de la Pasada " i ": " Sin Saltar
//	Mostrar_Colores(Colores)
FinPara
Mostrar_Colores(Colores)

Para i=1 hasta 6
	Para j=1 hasta 6
		Si Colores[j]<Colores[j+1] entonces
			aux=Colores[j+1]
			Colores[j+1]=Colores[j]
			Colores[j]=aux
		FinSi
	FinPara
//	Mostrar "Resultado de la Pasada " i ": " Sin Saltar
//	Mostrar_Colores(Colores)
FinPara
Mostrar_Colores(Colores)
FinAlgoritmo
