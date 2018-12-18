//A una sección se le  aplica una evaluación entre 0 y 100 Puntos. Escriba un  programa que lea el nombre y la nota obtenida de 5 estudiantes y calcule:  
//	*Numero de estudiantes con nota perfecta, es decir 100 puntos.  
//	*Cuanta nota acumularon los 5 alumnos    
//	*El acumulado de notas de los estudiantes que no aprobaron   
//	*El acumulado de notas de los estudiantes que aprobaron 
	
Funcion nota<-Func_Leer_Nota(i)
	Repetir
		Mostrar "Ingrese la nota (0/100) del " i "º estudiante "  
		Leer Nota
	Hasta Que Nota>=0 y Nota<=100
FinFuncion

Algoritmo Procesar_Notas
	Definir cant_100 como entero
	Definir acum_notas,acum_not_aprob,acum_Nota_reprob como real
	
	cant_100=0
	acum_notas=0
	acum_not_aprob=0
	acum_Nota_reprob=0
	cont_aprob=0
	cont_reprob=0
	Para i=1 hasta 5
		nota=Func_Leer_Nota(i)
		Si nota=100
			cant_100=cant_100+1
		FinSi
		acum_notas=acum_notas+nota
		Si nota>=50
			entonces 
				acum_not_aprob=acum_not_aprob+nota
				cont_aprob=cont_aprob+1
			sino 
				acum_not_reprob=acum_not_reprob+nota
				cont_reprob=cont_reprob+1
		FinSi
			
	FinPara
	contador_notas=5
	prom_notas=acum_notas/contador_notas
	porc_aprob=cont_aprob/contador_notas*100
	porc_reprob=cont_reprob/contador_notas*100
	Mostrar "Estudiantes con nota perfecta: " cant_100
	Mostrar "Acumulado de todas las notas: "  acum_notas " ptos"
	Mostrar "Acumulado de notas de los aprobados: "  acum_not_aprob " ptos"
	Mostrar "Acumulado de notas de los reprobados: "  acum_not_reprob " ptos"
	Mostrar "Promedio de todas las notas: "  prom_notas " ptos"
	Mostrar "Porcentaje de aprobados: "  porc_aprob "%"
	Mostrar "Porcentaje de reprobados: "  porc_reprob "%"
FinAlgoritmo
