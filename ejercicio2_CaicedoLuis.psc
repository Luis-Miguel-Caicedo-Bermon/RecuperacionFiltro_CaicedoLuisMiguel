Algoritmo ejercicio2_CaicedoLuis
//2. Diseñe un programa que permita ingresar y almacenar los nombres y las estaturas de un grupo de n personas y que muestre como salida los nombres y las estaturas de las personas ordenadas: 
	//a) Ascendentemente, es decir, de la mas baja a la mas alta 
	//b) Descendentemente, es decir, de la mas alta a la mas baja
	Escribir "cuantas personas son"
	leer np
	Dimension nombres[np]
	Dimension altura[np]
	
	para i<-0 Hasta np-1 Hacer//este para es para pedir los datos segun el nomero de personas
		Escribir "nombre de persona " i+1
		Leer nombres[i]
		Escribir "altura de la persona " i+1
		leer altura[i] 
	FinPara
	
	para i<-0 Hasta np-2 Hacer//ordena la altura y los nombres de manera ascendente
		para b<-0 Hasta np-2 Hacer
			si altura[b]>altura[b+1] Entonces
				a<-altura[b]
				altura[b]<-altura[b+1]
				altura[b+1]<-a
				e<-nombres[b]
				nombres[b]<-nombres[b+1]
				nombres[b+1]<-e
			FinSi
		FinPara
	FinPara
	
	Escribir "estaturas de manera ascendente"
	Para i<-0 Hasta np-1 Hacer
		Escribir nombres[i] "   " altura[i]
	FinPara
	
	para i<-0 Hasta np-2 Hacer//ordena la altura y los nombres de manera descendente
		para b<-0 Hasta np-2 Hacer
			si altura[b]<altura[b+1] Entonces
				a<-altura[b]
				altura[b]<-altura[b+1]
				altura[b+1]<-a
				e<-nombres[b]
				nombres[b]<-nombres[b+1]
				nombres[b+1]<-e
			FinSi
		FinPara
	FinPara
	
	
	Escribir "estaturas de manera descendente"
	Para i<-0 Hasta np-1 Hacer
		Escribir nombres[i] "   " altura[i]
	FinPara
FinAlgoritmo
