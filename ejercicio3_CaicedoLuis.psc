Algoritmo ejercicio3_CaicedoLuis
	//3. Construya un programa que almacene n numero enteros en un arreglo y que posteriormente
	//determine si un numero cualquiera ingresado por el usuario se encuentra o no en el arreglo.
	//Si el numero se encuentra en el arreglo, el algoritmo debe decir en que posicion esta. 
	
	Escribir "cantidad de numeros"
	leer n
	
	Dimension numer[n]
	
	Escribir "ingresa los numeros"
	para i<-0 Hasta n-1 Hacer
		Escribir "numero " i
		Leer numer[i]
	FinPara
	
	Escribir "que numero quieres saber si está en la lista"
	Leer a
	
	para i<-0 Hasta n-1 Hacer
		b<-numer[i]-a
		
		si b==0 Entonces
			Escribir "el numero " a " está en la posicion " i
			
		sino
			si b<>0 Entonces
				Escribir "el numero " a " no está en la lista"
				b<-0
			FinSi
		FinSi

	FinPara
	

FinAlgoritmo
