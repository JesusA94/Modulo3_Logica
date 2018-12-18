Algoritmo sin_titulo
	
	definir edad,edad_menor,edad_mayor Como Entero
	definir nombre_mayor, nombre_menor como caracter
	definir acumu_edad como entero
	definir cont,cont_menor Como Entero
	definir nombre Como Caracter
	definir porcentaje como real
	definir promedio Como Real
	definir personas como entero
	
	edad_menor=99
	edad_mayor=0
	cont_menor=0
	acumu_edad=0
	personas=1
	cont=0
	
	Mientras personas<=10
		
		Mostrar personas ") Nombre de la Persona y edad"
		leer nombre, edad
		personas=personas+1
		si edad>edad_mayor Entonces
			edad_mayor=edad
			nombre_mayor=nombre
		FinSi
		si edad<18 Entonces
			cont_menor=cont_menor+1
		FinSi
		si edad<edad_menor Entonces
			edad_menor=edad
			nombre_menor=nombre
		FinSi
		si edad>0 Entonces
			acumu_edad=acumu_edad+edad
			cont=cont+1
		FinSi
	FinMientras
	
	promedio=acumu_edad/cont
	porcentaje=(cont_menor/10)*100
	
	Mostrar "---Informacion de las Edades---"
	Mostrar ""
	Mostrar "Edad Promedio de todas las Personas: " promedio
	Mostrar "Porcentaje de las Personas Menores de Edad: " porcentaje  " %"
	Mostrar "Nombre de la persona menor de edad: " nombre_menor " con " edad_menor " años"
	Mostrar "Nombre de la persona mayor de edad: " nombre_mayor  " con " edad_mayor  " años" 
FinAlgoritmo




	

	

