Algoritmo sin_titulo
	Definir tienda_sucursales Como Caracter
	Definir ventas como real
	definir aux como entero
	Dimension tienda_sucursales[5]
	Dimension ventas[5]
	
	para i=1 hasta 5
		Mostrar "Ingrese el Nombre de la ",i "º Sucursal:" 
		leer tienda_sucursales[i]
		Mostrar "Monto Total de las Ventas de la Sucursal: " tienda_sucursales[i]
		leer ventas[i]
		Limpiar Pantalla
	FinPara
	acum_total=0
	Para i=1 hasta 5
		acumulador_total=acumulador_total+ventas[i]
	FinPara
	promedio=acumulador_total/5
	Para i=1 hasta 5
		Si ventas[i]>promedio
			Mostrar "La Sucursal: " tienda_sucursales[i] " Tiene el Mayor Promedio de Ventas"
		FinSi
	FinPara
	Esperar 2 segundos
	Mostrar "------------------------------------------------------------"
	ventas_totales(tienda_sucursales,ventas,mayor_monto,menor_monto,nombre_mayor,nombre_menor)
	ascendente(ventas,aux)
	busqueda(tienda_sucursales)
FinAlgoritmo

//Modulo Monto mayor y menor de las sucursales
SubProceso ventas_totales(tienda_sucursales,ventas,mayor_monto Por Referencia,menor_monto Por Referencia,nombre_mayor Por Referencia,nombre_menor Por Referencia)
	mayor_monto=ventas[1]
	menor_monto=ventas[1]
	nombre_mayor=tienda_sucursales[1]
	nombre_menor=tienda_sucursales[1]
	Para i=2 hasta 5
		Si ventas[i]>mayor_monto entonces 
			mayor_monto=ventas[i]
			nombre_mayor=tienda_sucursales[i]
		FinSi
		Si ventas[i]<menor_monto entonces 
			menor_monto=ventas[i]
			nombre_menor=tienda_sucursales[i]
		FinSi
	FinPara
	Mostrar "El Menor Monto de Ventas es de: " menor_monto " Bs" " por la Sucursal: " nombre_menor
	Mostrar "El Mayor Monto de Ventas es de: " mayor_monto " Bs" " por la Sucursal: " nombre_mayor
	Mostrar "------------------------------------------------------------"
	Esperar 2 segundos
FinSubProceso
//Modulo de ordenar de manera ascendente
SubProceso ascendente(ventas,aux)
	para i=1 hasta 4
		para j=1 hasta 4
			si  ventas[j]>ventas[j+1] entonces
				aux=ventas[j]
				ventas[j] = ventas[j+1]
				ventas[j+1] = aux
			FinSi
		FinPara
	FinPara
	mostrar "Lista de Ventas"
	para i=1 hasta 5
		mostrar i "º: " ventas[i] " Bs."
	FinPara
	Mostrar "------------------------------------------------------------"
FinSubProceso
//Modulo de Buscar la Sucursal
subproceso busqueda(tienda_sucursales)
	Mostrar "¿Nombre de la Sucursal que desea Buscar?"
	leer buscar
	encontrado=Falso
	Para i=1 hasta 5
		si tienda_sucursales[i]=buscar 
			entonces encontrado=Verdadero
			posicion=i
		FinSi
	FinPara
	Si encontrado=Verdadero Entonces
		mostrar "La Sucursal buscada (" buscar ") fue encontrada en la posición " posicion
	sino 
		mostrar "La Sucursal buscada (" buscar ") No fue encontrada en el Registro"
	FinSi
FinSubProceso
