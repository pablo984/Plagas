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
	//Se quitó el atributo "nivelDeProduccion" para agregar el objeto "valoresHuertas"
	
	method esBueno() {
		 return capacidadDeProduccion > valoresHuertas.nivelMinimoDeProduccion()
	}
	/*Se agrega al método el "max.0" para que no de valores negativos*/
	method recibirAtaque(unaPlaga) { //Se quitó el "else" y se colocó, lo que decía allí, como una indicación al principo.
		capacidadDeProduccion = 0.max(capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1) // (Esto antes estaba en el "else")
		if (unaPlaga.transmiteEnfermedades()) {
			capacidadDeProduccion = 0.max(capacidadDeProduccion - (unaPlaga.nivelDeDanio() * 0.1) - 10)
		}
	}	
}

object valoresHuertas {
	var property nivelMinimoDeProduccion = 0
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




