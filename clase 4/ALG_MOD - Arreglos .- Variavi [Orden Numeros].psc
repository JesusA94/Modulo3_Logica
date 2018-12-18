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

SubProceso Sacar_Copia(Arr_Nums,CopiaN Por Referencia)
	Para i=1 hasta 10
		Arreglo[i]=Arr_Nums[i]
	FinPara
FinSubProceso

SubProceso Arreglo_varia<-Comparar_Copias(CopiaAnterior,CopiaActual)
	arreglo_varia=verdadero
	Para i=1 hasta 10
		Si CopiaAnterior[i]=CopiaActual[i]
			arreglo_varia=falso
		FinSi
	FinPara
FinSubProceso

Subproceso Ordenar_Arreglo(Orden,Arr_Nums por referencia)
	Si Orden="Asc" entonces
		Mostrar ""
		Mostrar "PROGRESIÓN DEL ORDENAMIENTO ASCENDENTE"
		i=1
		Repetir
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
			Segun i
				1: Sacar_Copia(Arr_Nums,Copia1)	
				2: Sacar_Copia(Arr_Nums,Copia2)	
					Arreglo_varia=Comparar_Copias(Copia1,Copia2)
				3: Sacar_Copia(Arr_Nums,Copia3)
					Arreglo_varia=Comparar_Copias(Copia2,Copia3)
			   4: Sacar_Copia(Arr_Nums,Copia4)	
				   Arreglo_varia=Comparar_Copias(Copia3,Copia4)
			   5: Sacar_Copia(Arr_Nums,Copia5)
				   Arreglo_varia=Comparar_Copias(Copia4,Copia5)
			   6: Sacar_Copia(Arr_Nums,Copia6)	
				   Arreglo_varia=Comparar_Copias(Copia5,Copia6)
			   7: Sacar_Copia(Arr_Nums,Copia7)
				   Arreglo_varia=Comparar_Copias(Copia6,Copia7)
			   8: Sacar_Copia(Arr_Nums,Copia8)	
				   Arreglo_varia=Comparar_Copias(Copia7,Copia8)
			   9: Sacar_Copia(Arr_Nums,Copia9)
				   Arreglo_varia=Comparar_Copias(Copia8,Copia9)
			FinSegun
			i=i+1
		Hasta Que i=9 o Arreglo_varia=falso
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
	Dimension Copia1[10],Copia2[10],Copia3[10],Copia4[10],Copia5[10]
	Dimension Copia6[10],Copia7[10],Copia8[10],Copia9[10],CopiaN[10]
	Cargar_ArrNums(N_Numeros)
	Copiar_ArrNums(N_Numeros,Nums_Asc,Nums_Desc)
	Ordenar_Arreglo("Asc",Nums_Asc)
	Ordenar_Arreglo("Desc",Nums_Desc)
	Mostrar_Arreglos(N_Numeros,Nums_Asc,Nums_Desc)
FinAlgoritmo
