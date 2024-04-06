Algoritmo ejercicio4_CaicedoLuisMiguel
	//4. Escriba un programa que almacene en un arreglo n numeros enteros entre 50 y 100. El algoritmo
	//debera encontrar los numeros pares y los impares que estan
	//almacenados en este arreglo y almacenarlos en otros arreglos por separado para, posteriormente mostrarlos al usuario. ? 
	
	Escribir "cuantos numeros quieres agregar"
	Leer n
	Dimension num[n]//una lista de los numeros
	Dimension pares[n]//lista de los pares
	Dimension impares[n]//lista de los impares
	Escribir "escribe numeros entre el 50 y 100"
	

	Para i<-0 Hasta n-1 Hacer
		repetir
			Escribir "numero " i
			leer num[i]//se piden los numeros 
		Hasta Que num[i]>=50 y num[i]<=100//si el numero es mayor a 50 y menor a 100 lo almacena en el arreglo
		//si no cumple la condicion se repite 
	FinPara
	
	para i<-0 Hasta n-1 Hacer
		x<-num[i]%2//se saca el residuo de cada de cada numero
		si x=0 Entonces//si el residuo es 0 sisnifica que el numero es par 
			pares[i]<-num[i]//y se almacena en el arreglo de numeros pares
		SiNo//si no es igual a 0 significa que el numero es impar
			impares[i]<-num[i]//y se almacena en el arreglo de numeros impares
		FinSi
	FinPara
	
	Escribir "numeros pares"
	Para i<-0 Hasta n-1 Hacer//con esto se muestran los numeros pares
		si pares[i]>0 Entonces
			Escribir pares[i]
		FinSi
		
	FinPara
	
	Escribir "numeros impares"
	Para i<-0 Hasta n-1 Hacer//con esto se muestran los numeros impares
		si impares[i]>0 Entonces
			Escribir impares[i]
		FinSi
	FinPara
	
FinAlgoritmo
