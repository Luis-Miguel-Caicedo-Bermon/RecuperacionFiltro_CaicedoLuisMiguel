Algoritmo Ejercicio7_CaicedoLuisMiguel
	//2. El programa selecciona aleatoriamente un n�mero secreto entre 1 y 100.El usuario tiene un total de 10 intentos para adivinar el n�mero secreto.
	//Despu�s de cada intento, el programa dar� pistas indicando si el n�mero secreto es mayor o menor que la suposici�n actual del usuario.
	//Si el usuario adivina correctamente, el programa felicitar� al jugador y mostrar� en cu�ntos intentos lo logr�.
	//		Se deben manejar eventos como entrada no v�lida (por ejemplo, si el usuario ingresa algo que no es un n�mero) y la agotaci�n de los 10 intentos.
	//			El programa debe ser amigable y explicar claramente las instrucciones al usuario.
	Escribir "juego de adivinar un numero entre el 1 y el 100"
	na<-azar(100)+1
	Escribir "tienes 10 intentos para adivinar el numero"
	ver=Verdadero
	mientras ver=Verdadero Hacer
		
		Escribir "intento #" i+1
		Leer n
		si n=na Entonces//si el numero ingresado por el usuari es = al numero generado aleatoriamente
			i<-i+1      
			Escribir "adivinaste el numero en el intento " i  //avisa que adivino el numero
			ver=Falso//y se finaliza el proceso
		SiNo
			si na>n Entonces//si el numero aleatorio es mayor al ingresado por el usuario se 
				Escribir "incorrecto"
				Escribir "el numero es mayor"//avisa que el numero es mayor
				i<-i+1
			SiNo
				si na<n Entonces //si el numero aleatorio en menor que el numero del usuario
					Escribir "incorrecto"
					Escribir "el numero es menor"//avisa que el numero es menor
					i<-i+1
				FinSi
			FinSi
		FinSi
	FinMientras
	
FinAlgoritmo
