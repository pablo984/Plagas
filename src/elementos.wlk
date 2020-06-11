class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esHogarBueno() {
		return (confort * 0.5) <= nivelDeMugre  
	}
}

class Huerta {
	var property capacidadDeProduccion
	
	method esHuertaBuena() {
		 
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esMascotaBuena() {
		return nivelDeSalud > 250
	}
}
