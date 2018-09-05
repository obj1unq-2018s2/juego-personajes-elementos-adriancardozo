object luisa {
	var personajeActivo = noHayPersonaje
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
	var alturaUltimoElemento = 0
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    alturaUltimoElemento = elemento.altura()
	}
	
	method estaFeliz(){
		return (valorRecolectado >= 50) or (alturaUltimoElemento >= 10)
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}