class Barrio {
	var elementos = []
	method elementos() { return elementos }
	method elemento(unElemento) {
		elementos.add(unElemento)
	}
	method agregarElementos(muchosElementos) {
		elementos.addAll(muchosElementos)
	}
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}
	method elementosBuenos() {
		return elementos.count( { e => e.esBueno() } )
	}
	method elementosMalos() {
		return elementos.count( { e => not e.esBueno() } )
	}
}

class Elemento {
	var property esBueno = false
		
	
}

class Hogar inherits Elemento {
	var property nivelDeMugre = 0
	var property confort = 0
	
	override method esBueno() {
		return nivelDeMugre <= (confort / 2)
	}
}

class Huerta inherits Elemento {
	var property prodEnKg = 0
	var property nivel = 0
	
	override method esBueno() {
		return prodEnKg > nivel
	}
}

class Mascota inherits Elemento {
	var property nivelDeSalud = 0
	
	override method esBueno() {
		return nivelDeSalud > 250
	}
}


