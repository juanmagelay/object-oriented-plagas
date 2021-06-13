class Plaga {
	var property poblacion = 0
	var property nivelDeDanio = 0
	
	method enfermedades() {	return poblacion >= 10 }
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
}

class Mosquito inherits Plaga {
	
}

class Pulga inherits Plaga {
	
}

class Garrapata inherits Plaga {
	
}