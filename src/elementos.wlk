import plagas.*

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
	
	method efectoPlaga(unaPlaga) {
		nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDanio()
	}
}

class Huerta inherits Elemento {
	var property prodEnKg = 0
	var property nivel = 0
	
	override method esBueno() {
		return prodEnKg > nivel
	}
	method efectoPlaga(unaPlaga) {
		prodEnKg = prodEnKg - unaPlaga.nivelDeDanio() * 0.1 -
		if (unaPlaga.enfermedades()) { 10 } else { 0 }
	}
}

class Mascota inherits Elemento {
	var property nivelDeSalud = 0
	
	override method esBueno() {
		return nivelDeSalud > 250
	}
	method efectoPlaga(unaPlaga) {
		if (unaPlaga.enfermedades()) { 
			nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDanio()
		}
	}
}


