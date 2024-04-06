Algoritmo Ejercicio5_CaicedoLuisMiguel
	//5. El profesor de la materia de "Introducción a la Programacion" requiere de un programa que le permita almacenar en un arreglo
	//los nombres de los 30 estudiantes del curso y en una matriz, las 5 notas obtenidas por cada uno de los estudiantes durante el semestre.
	// El algoritmo debe realizar las siguientes operaciones: 
	Dimension nombres[30]
	Dimension notas[30,5]
	Dimension promedio[30]
	Escribir "ingresa los nombres de los estudiantes"
	para i<-0 Hasta 3 Hacer
		Escribir "persona " i
		Leer nombres[i]//se pide los nombres de los estudiantes y se van guardando en el arreglo
	FinPara
	
	Escribir nombres[0]
	para f<-0 Hasta 3 Con Paso 1 Hacer//numero de filas de la matriz
		para c<-0 Hasta 4 con paso 1 Hacer//numero de columnas de la matriz
			Escribir "nota " f "," c
			Leer notas[f,c]//se van almacenando las notas de los estudiantes
		FinPara
		Escribir nombres[f+1]
	FinPara
	//a)  Determinar la nota definitiva de cada uno de los estudiantes que se calcula como la media aritmetica de las 5 notas obtenidas.
	// Las notas definitivas de los estudiantes deberan ser almacenadas en un arreglo.
	para f<-0 Hasta 3 Con Paso 1 Hacer
		para c<-0 Hasta 4 con paso 1 Hacer
			pro<-pro+notas[f,c]//se suman todas las notas de columna
		FinPara
		promedio[f]<-pro/5//se divide en la cantidad de notas para saber el promedio y se guarda en el arreglo de promedio
		pro<-0//se pone 0 para que se reinicie la cuenta para la siguiente fila
	FinPara
	
	//b)  Encontrar el estudiante que obtuvo la mayor nota definitiva.
	
	a<-0
	para i<-0 Hasta 3 Hacer
		si promedio[i]>a Entonces//se hace un bucle hasta que no haya nota mayor
			a<-promedio[i]
			b<-nombres[i]//segun la poscicion de la nota mayor se escribe la el nombre de la persona que esta en esa en esa misma pscicion
		FinSi
	FinPara
	
	Escribir b, " fue la mayor nota con " a
	
	//c)  Obtener el nombre de los estudiantes (y almacenarlos en un arreglo) que perdieron la materia y deberan repetirla.
	// Un estudiante pierde la materia si su nota definitiva es inferior a 2.0. (Dos punto cero). 
	
	Dimension perder[30]
	
	para i<-0 Hasta 3 Hacer
		si promedio[i]<=2 Entonces//si el promedio es menor a 2 entoces perdio
			perder[i]<-nombres[i]//y se guarda el nombre que estaba en la misma posccion que ese promedio
			//Escribir perder[i] " perdio la materia y debe repetirla"//esto es por si quiere visualizar quienes perdieron la materia
		FinSi
	FinPara
	
	//d)  Obtener el nombre de los estudiantes (y almacenarlos en un arreglo) que tendran que habilitar la materia.
	// Un estudiante puede habilitar la materia si su nota definitiva es inferior a 3.0. pero superior a 2.0, esto es,
	// que su nota definitiva se encuentre entre 2.0 y 2.99.
	
	Dimension recu[30]
	
	para i<-0 Hasta 3 Hacer
		si promedio[i]>2 y promedio[i]<3 Entonces//si el promedio es menor a 3 y mayor a 2 entoces tiene que hablitar la materia
			recu[i]<-nombres[i]//y se guarda el nombre que estaba en la misma posccion que ese promedio
			//Escribir recu[i] " tiene que habilitar la materia"//esto es por si quiere visualizar quienes tienen que habilitar la materia
		FinSi
	FinPara
	
	//e)  Determinar cuantos estudiantes ganaron la materia.
	
	Para i<-0 Hasta 3 Hacer
		si promedio[i]>=3 Entonces //si el promedio es mayor o igual a 3 entonces significa que pasó la materia
			gano<-gano+1//y por cada persona que ganó la materia se suma 1
		FinSi
	FinPara
	Escribir gano " estudiantes pasaron la materia"
	

	
FinAlgoritmo
