object ballesta {
	var property flechas = 10
	const property potencia = 4
	method registrarUso(){
		flechas -= 1
	}
	method estaCargada(){
		return flechas > 0
	}
}

object jabalina {
	var estaCargada = true
	const property potencia = 30
	method registrarUso(){
		estaCargada = false
	}
	method estaCargada(){
		return estaCargada
	}
}
