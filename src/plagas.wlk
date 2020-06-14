class Pulga {
	var property poblacion 
			
	method nivelDeDanio() {
		return poblacion * 2
	}
	method transmiteEnfermedades() {
		return poblacion >= 10
	}
	method atacar(elemento) {
		elemento.recibirAtaque(self)
		poblacion = poblacion * 1.1
	}
}

class Garrapata inherits Pulga {
	override method atacar(elemento) {
		elemento.recibirAtaque(self)
		poblacion = poblacion * 1.2 
	}
}

class Mosquito inherits Pulga {
	override method nivelDeDanio() {
		return poblacion
	}
	override method transmiteEnfermedades() {
		return super() and poblacion % 3 == 0
	}
}

class Cucaracha inherits Pulga {
	var property pesoPromedio
	
	override method nivelDeDanio() {
		return poblacion / 2
	}
	override method transmiteEnfermedades() {
		return super() and pesoPromedio >= 10
	}
	override method atacar(elemento) {
		super(elemento) ; pesoPromedio = pesoPromedio + 2		
	}
}