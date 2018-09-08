object luisa {
	var personajeActivo = noHayPersonaje
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElemento = null
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElemento = elemento
	}
	
	method estaFeliz(){
		return (valorRecolectado >= 50) or (ultimoElemento.altura() >= 10)
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}