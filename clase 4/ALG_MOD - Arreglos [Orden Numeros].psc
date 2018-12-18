//Cargar un arreglo con 10 numeros enteros y mostrar://	a.- El arreglo cargado//	b.- Los numeros cargados en el arreglo, oredenados de forma ascendente//	c.- Los numeros cargados en el arreglo ordenados de forma descendente

Subproceso Cargar_ArrNums(N_Numeros Por Referencia)
	para i=1 hasta 10
		N_numeros[i]=Aleatorio(1,100)
		mostrar "Número " i "/10: " Sin Saltar
		Mostrar N_numeros[i]
		//		leer N_numeros[i]
	FinPara
FinSubProceso


Subproceso Mostrar_ArrNums(Arr_Nums)
para i=1 hasta 10
	mostrar Arr_Nums[i] Sin Saltar
	si i<10 
		entonces mostrar "," Sin Saltar
	sino mostrar ""
	FinSi
FinPara	
FinSubproceso

Subproceso Copiar_ArrNums(N_Numeros,Nums_Asc por referencia,Nums_Desc por referencia)
	Para i=1 hasta 10
		Nums_Asc[i]=N_Numeros[i]
		Nums_Desc[i]=N_Numeros[i]
	FinPara
FinSubProceso

Subproceso Ordenar_Arreglo(Orden,Arr_Nums por referencia)
	Si Orden="Asc" entonces
		Mostrar ""
		Mostrar "PROGRESIÓN DEL ORDENAMIENTO ASCENDENTE"
		para i=1 hasta 9
			Mostrar "  Antes de la Pasada " i ": " Sin Saltar
			Mostrar_ArrNums(Arr_Nums)
			para j=1 hasta 9
				si  Arr_Nums[j] >  Arr_Nums[j+1] entonces
					aux = Arr_Nums[j]
					Arr_Nums[j] = Arr_Nums[j+1]
					Arr_Nums[j+1] = aux
				FinSi
			FinPara
			Mostrar "Después de la Pasada " i ": " Sin Saltar
			Mostrar_ArrNums(Arr_Nums)
		FinPara
		
	FinSi
	Si Orden="Desc" entonces
		Mostrar ""
		Mostrar "PROGRESIÓN DEL ORDENAMIENTO DESCENDENTE"
		para i=1 hasta 9
			Mostrar "  Antes de la Pasada " i ": " Sin Saltar
			Mostrar_ArrNums(Arr_Nums)
			para j=1 hasta 9
				si  Arr_Nums[j] <  Arr_Nums[j+1] entonces
					aux = Arr_Nums[j]
					Arr_Nums[j] = Arr_Nums[j+1]
					Arr_Nums[j+1] = aux
				FinSi
			FinPara
			Mostrar "Después de la Pasada " i ": " Sin Saltar
			Mostrar_ArrNums(Arr_Nums)	
		FinPara
	FinSi
FinSubProceso	

Subproceso Mostrar_Arreglos(N_Numeros,Nums_Asc,Nums_Desc)
	Mostrar ""
	Mostrar "Arreglo original"
	Mostrar_ArrNums(N_numeros)
	Mostrar "El arreglo ordenado ascendentemente quedó así:" 
	Mostrar_ArrNums(Nums_Asc)
	Mostrar "El arreglo ordenado descendentemente quedó así:" 
	Mostrar_ArrNums(Nums_Desc)
FinSubProceso

Algoritmo Ordenamiento_Nums
	Definir aux Como Entero
	Dimension N_numeros[10],Nums_Asc[10],Nums_Desc[10]
	Cargar_ArrNums(N_Numeros)
	Copiar_ArrNums(N_Numeros,Nums_Asc,Nums_Desc)
	Ordenar_Arreglo("Asc",Nums_Asc)
	Ordenar_Arreglo("Desc",Nums_Desc)
	Mostrar_Arreglos(N_Numeros,Nums_Asc,Nums_Desc)
FinAlgoritmo
