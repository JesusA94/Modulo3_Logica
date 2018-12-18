Algoritmo Facturacion
	definir nombre Como Caracter
	definir total_iva como real
	definir total_factura como real
	definir total_libreImpuestos como real
	definir monto_total como real
	definir clientes como entero
	definir servicios como entero
	Definir numero_servicios como entero
	
	para cliente<-1 Hasta 5 Hacer
		total_factura=0
		Mostrar "Cliente numero: " cliente
		
		repetir
			Mostrar "Ingrese Nombre del Cliente" Sin Saltar
			leer nombre
			Mostrar "Ingrese la Cantidad de Servicios" Sin Saltar
			leer servicios
			
			si servicios>0
			FinSi
		
		Hasta Que servicios>0
		Para numero_servicios<-1 Hasta Servicios Hacer
			leerServicio(numero_servicios,monto_total,total_iva,total_libreImpuestos,total_factura)
		Fin Para
		
		mostrar "Informacion del cliente Nro " cliente
		mostrar "Cliente: " nombre
		mostrar "Cantidad de Servicios: " servicios
		mostrar "El monto total con iva(16%) de la Factura Nro "  cliente  " es de: "  total_factura
		esperar 4 segundos
		Limpiar Pantalla
	FinPara
	
	mostrar "El monto total del iva del periodo es: " total_iva " bs"
	mostrar "El monto total libre de Impuestos es de: " total_libreImpuestos " bs"
	mostrar "El monto total del período de facturación es de : " monto_total " bs"
FinAlgoritmo

SubProceso leerServicio(numero_servicios, monto_total Por Referencia,total_iva Por Referencia, total_libreImpuestos Por Referencia, total_factura Por Referencia)
	Definir precio,iva,total_servicio Como Real
	Repetir
		Imprimir "Ingrese el precio del servicio " numero_servicios
		Leer precio
	Hasta Que precio>0
	iva=precio*0.16
	total_servicio=precio+iva
	total_factura=total_factura+total_servicio
	mostrar "Total del servicio " numero_servicios " con iva: " total_servicio
	monto_total=monto_total+total_servicio
	total_iva=total_iva+iva
	total_libreImpuestos=total_libreImpuestos+precio
FinSubProceso






