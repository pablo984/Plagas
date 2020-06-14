import plagas.*

class Hogar {
	var property nivelDeMugre
	var property confort
	
		method esBueno() {
		return nivelDeMugre <= confort / 2  
	}
	method recibirAtaque(unaPlaga) {
		nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDanio()		
	}
}

class Huerta {
	var property capacidadDeProduccion
	var property nivelDeProduccion = 80
	
	method esBueno() {
		 return capacidadDeProduccion > nivelDeProduccion
	}
	method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) {
			nivelDeProduccion = nivelDeProduccion - (unaPlaga.nivelDeDanio() * 0.1) - 10
		}
		else {
			nivelDeProduccion = nivelDeProduccion - unaPlaga.nivelDeDanio() * 0.1
		}		
	}	
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno() {
		return nivelDeSalud > 250
	}
	method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) {
			nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())}
		}		 
}




