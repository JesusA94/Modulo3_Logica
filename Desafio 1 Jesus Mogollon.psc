Algoritmo Menu_Procesar_Numeros
	definir contador_num  como entero
	definir contador_rango como entero
	definir acum_ingresados  como entero
	definir acum_pares como entero
	definir num como entero
	definir menu como entero
	definir respuesta Como Caracter
	
	contador_num=0
	contador_rango=0
	acum_ingresados=0
	acum_pares=0
	
	Repetir
		
		Mostrar "1. Procesar Números"
		Mostrar "2. Mostrar Resultados"
		Mostrar "3. Salir"
		Mostrar "Ingrese la opción: " Sin Saltar
		leer menu
		
		Segun menu hacer
				1: procesados=procesar_datos(num,contador_num,contador_rango,acum_ingresados,acum_pares,respuesta)
				2: mostrar_resultados(contador_num,contador_rango,acum_ingresados,acum_pares)
				3: Mostrar "Salio del Sistema."
					esperar 3 segundos
					
				De Otro Modo:
					Mostrar "Disculpe debe elegir una de las 3 Opciones"
					esperar 2 segundos
					Limpiar Pantalla
		FinSegun
	Hasta Que menu=3
FinAlgoritmo

//Funcion donde Valido y hago el proceso de los rangos Solicitados
Funcion procesados=procesar_datos(num Por Referencia,contador_num por referencia,contador_rango Por Referencia ,acum_ingresados Por Referencia ,acum_pares por referencia , respuesta Por Referencia )
	
	repetir
		Limpiar Pantalla
		mostrar "Ingrese los Numeros en el Rango de 100 y 1000 " 
		leer num
		
	    si num>100 o num<1000 entonces
			contador_num=contador_num + 1
			acum_ingresados=acum_ingresados + num
		SiNo
			Limpiar Pantalla
			mostrar "Los Numeros que Ingreso no estan dentro del Rango 100 y 1000"
			esperar 2 segundos
		FinSi
			
			si num>=200 y num<=400 Entonces
				contador_rango=contador_rango+1
			FinSi
			
			si (num mod 2)=0
				acum_pares=acum_pares+num
			FinSi
		Mostrar "¿Quiere Ingresar otro Numero (SI/NO)?: " Sin Saltar
		leer respuesta
		
	Hasta Que Mayusculas(respuesta)= "NO"
	esperar 2 segundos
	Limpiar Pantalla
FinFuncion

//Modulo de Mostrar Resultados
SubProceso mostrar_resultados(contador_num,contador_rango,acum_ingresados,acum_pares)
    Limpiar Pantalla
	mostrar "----Datos----"
	mostrar "Cantidad de Numeros Procesados: " contador_num
	mostrar "Cantidad de Numeros en el Rango de 200 y 400: " contador_rango
	mostrar "Acumulado de todos los Numeros Ingresados: " acum_ingresados
	mostrar "Acumulado de los Numeros Pares: " acum_pares
	mostrar ""
	mostrar "Presione una Tecla para Volver"
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso
