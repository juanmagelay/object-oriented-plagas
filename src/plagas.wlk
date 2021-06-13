class Plaga {
	var property poblacion = 0
	var property nivelDeDanio = 0
	
	method enfermedades() {	return poblacion >= 10 }
	
	method ataque(unElemento) {
		poblacion = poblacion * 1.1
		unElemento.efectoPlaga(self)
	}
}

class Cucaracha inherits Plaga {
	var property pesoPromedio = 0
	override method nivelDeDanio() {
		return self.poblacion() / 2
	}
	override method enfermedades() {
		return
			super() and (self.pesoPromedio() >= 10)
	}
	override method ataque(unElemento) {
		super(unElemento)
		pesoPromedio = pesoPromedio + 2
	}
}

class Mosquito inherits Plaga {
	override method nivelDeDanio() {
		return poblacion
	}
	override method enfermedades() {
		return super() and (poblacion % 3 == 0)
	}
}

class Pulga inherits Plaga {
	override method nivelDeDanio() {
		return poblacion * 2
	}
}

class Garrapata inherits Pulga {
	override method ataque(unElemento) {
		poblacion = poblacion * 1.2
	}
}