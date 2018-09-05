object castillo {
	var property defensa = 150
	method altura() = 20
	method recibirAtaque(potenciaAtaque){
		defensa -= potenciaAtaque
	}
	method valorQueOtorga() = defensa / 5
	method recibirTrabajo(){
		defensa = (defensa + 20).min(200)
	}
}

object aurora {
	var property estaViva = true
	method altura() = 1
	method recibirAtaque(potenciaAtaque){
		estaViva = not(potenciaAtaque >= 10)
	}
	method valorQueOtorga() = 15
	method recibirTrabajo(){}
}

object tipa {
	var altura = 8
	method altura() = altura
	method recibirAtaque(potenciaAtaque){}
	method valorQueOtorga() = altura * 2
	method recibirTrabajo(){
		altura += 1
	}
}