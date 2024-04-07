Algoritmo Ejercicio6_CaicedoLuisMiguel
	//1. En una clinica de control al sobrepeso requieren almacenar los nombres y los pesos tomados durante un periodo de tiempo
	// a un grupo de n pacientes. Durante un mes, cada paciente es pesado 3 veces (una pesada inicial, una intermedia y una pesada final)
	// con el fin de determinar su evolucion durante ese periodo. Construya un programa que permita almacenar estos datos y que ademas encuentre: 
	
	Escribir "cuantos pacientes hay en la clinica"
	Leer np
	Dimension nombres[np]//nombres de los pacientes
	Dimension pesos[np,3]//pesos de los pacientes
	Dimension resulp[np]//resultados del primer peso al ultimo
	Dimension resulb[np]//resultados del primer peso al intermedio
	Dimension objetivo[np]//objetivo del paciente
	
	para i<-0 Hasta np-1 Hacer
		Escribir "nombre del paciente " i+1
		Leer nombres[i]
		Escribir "ingresa el objetivo del paciente (b)bajar de peso (s)subir de peso"
		Leer objetivo[i]
	FinPara
	para f<-0 Hasta np-1 Con Paso 1 Hacer//se hace una matriz para pedir los tres pesos de los pasientes
		para c<-0 Hasta 2 Con Paso 1 Hacer
			Escribir "ingresa el peso " c+1 " del paciente " nombres[f]
			Leer pesos[f,c]//almacena los pesos de los pacientes
			a<-pesos[f,2]-pesos[f,0]//al peso final se le resta el peso inicial y depende del resultado se sabe si bajó o subio de peso
			resulp[f]<-a //se le asigna el valor al arreglo para ir almacenandolo
			a<-0//a vuelve a ser igual a 0 para que no afecte los resultados de los demas pacientes
			b<-pesos[f,1]-pesos[f,0]//la resta del segundo peso con el primer peso se almacena en b
			resulb[f]<-b //b se almacena en resulb
			b<-0//b vuelve a ser igual a 0 para que no afecte los resultados de los demas pacientes
		FinPara
	FinPara
	
	//a)  Cuanto peso ha ganado o perdido cada paciente con respecto al peso inicial. 
	
	para i<-0 Hasta np-1 Hacer
		si resulp[i]<0 Entonces//si la resta de los pesos es menor a 0 ha perdido peso
			Escribir nombres[i]//se escribe el nombre del paciente
			Escribir "ha perdido " resulp[i] "kg de peso"
		SiNo
			
			si resulp[i]=0 Entonces//si la resta de los pesos es igual a 0 entonces no ha subido ni ganado peso
				Escribir nombres[i]
				Escribir "no ha perdido ni subido de peso"
			SiNo
				si resulp[i]>0 Entonces //si la resta de los pesos es mayor a 0 entonces ha subido de peso
					Escribir nombres[i]
					Escribir "ha subido " resulp[i] "kg de peso"
				FinSi
			FinSi
		FinSi
	FinPara
	
	//b)  Cuantos pacientes perdieron peso entre la pesada inicial y la pesada intermedia. 
	
	para i<-0 Hasta np-1 Hacer
		si resulb[i]<0 Entonces
			pp<-pp+1//va sumando las personas que perdieron peso
		FinSi
	FinPara
	Escribir pp " personas perdieron peso entre la pimera pesada y la pesada intermedia"
	
	//c)  Suponga que tambien se tiene otro arreglo en el que se almacena por cada paciente su objetivo:
	//ganar o perder peso durante el periodo. Determine cuantos pacientes alcanzaron el objetivo. 
	
	para i<-0 Hasta np-1 Hacer
		si objetivo[i]="b" y resulp[i]<0 Entonces//si el objetivo es bajar peso y el el ultimo peso menos el primer peso el resultado es negativo entonces se suma una persona mas que cumplio su objetivo
			x<-x+1
		FinSi
		si objetivo[i]="s" y resulp[i]>0 Entonces//si el objetivo es subir peso y el el ultimo peso menos el primer peso el resultado es positivo entonces se suma una persona mas que cumplio su objetivo
			z<-z+1
		FinSi
	FinPara
	l<-x+z
	Escribir l " pacientes alcanzaron su objetivo"
FinAlgoritmo
