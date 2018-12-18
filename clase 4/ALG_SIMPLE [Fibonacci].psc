Algoritmo Nums_Fibonacci
	Dimension Fibonacci[30]
		Fibonacci[1]=0
		Fibonacci[2]=1
		Para i=3 hasta 30
			Fibonacci[i]=Fibonacci[i-2]+Fibonacci[i-1]
		FinPara
		Para i=1 hasta 30
			Mostrar i "º número " Fibonacci[i]
		FinPara
	FinAlgoritmo
