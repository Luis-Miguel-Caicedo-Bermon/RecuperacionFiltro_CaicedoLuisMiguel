Algoritmo ejercicio1_CaicedoLuisMiguel
	//1. Escriba un program que permita almacenar en arreglos diferentes los nombres,
//los géneros y las edades de un grupo de n personas. El algoritmo debe determinar:
	//	a) Cuantas personas son de genero masculino 
	//	b) Cuantas personas de genero femenino superan la mayoria de edad 
	//	c) Cual es el promedio de edad de las personas de genero masculino 
	//	d) Cual es el nombre de la persona de genero femenino mas pequeña. 
	
	Dimension nombres[100]
	Dimension genero[100]
	Dimension edad[100]
	
	
	Escribir "cuantas personas son"
	Leer np
	
	Escribir "ingresa los datos de las personas"
	para i<-1 Hasta np Hacer//aqui se piden los datos de las persona dependiendo de la cantidad que dio el usuario
		Escribir "persona " i
		Escribir "ingresar nombre"
		leer nombres[i]
		Escribir "ingresar el genero (f)femenino (m)masculino"
		leer genero[i]
		Escribir "ingresar edad"
		Leer edad[i]
	FinPara
	
	para i<-1 Hasta np Hacer
		si genero[i]="m" Entonces//identidica si son hombres
			
			suma=suma+1//calcula la cantidad de hombre que hay
			
			pro<-pro+edad[i]
			pro<-pro/suma//calcula el promedio de la edad de los hombres
		Finsi
		
	FinPara
	Escribir "hay " suma " hombres"
	
	
	
	para i<-1 Hasta np Hacer
		si genero[i]="f" y edad[i] >= 18 Entonces//verifica si son mujeres y si son mayores de edad
			
			su=su+1
			
		Finsi
		
	FinPara
	Escribir su " mujeres mayores de edad"
	
	Escribir "el promedio de la edad de los hombres es " pro//muestra al usuario el promedio de edad de los hombres
	
	q<-150
	
	para i<-1 Hasta np Hacer
		si genero[i]="f" y edad[i]<q Entonces//si el genero es femenino y la edad es menor a 150 se va remplasando Hasta Que no haya una edad mas baja
			q<-edad[i]
			n<-nombres[i]                      //y dependiendo de la posicion de la edad se escribe el nombre que esta en esa misma poscicion
		Finsi
		
	FinPara
	
	Escribir n " es mujer mas pequeña"
	
	para i<-1 Hasta np Hacer //este paso es opcional y solo lo puse para listar todos los datos de las personas
		Escribir nombres[i] "   " genero[i] "   " edad[i]
	FinPara
FinAlgoritmo
