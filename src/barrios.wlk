import elementos.*

class Barrio {
	const property elementos = []
	
	method agregarElemento(unElemento) {
		elementos.add(unElemento)
	}
	method quitarElemento(unElemento) {
		elementos.remove(unElemento)
	}
	method agregarElementos(variosElementos) {
		elementos.addAll(variosElementos)
	}
	/*método adicional*/
	method cantidadElementosBuenos() {
		return elementos.count({ elem => elem.esBueno() })
	}
	method cantidadElementosMalos() {
		return elementos.count({ elem => not elem.esBueno() })
	}
	method esBarrioCopado() {
		return self.cantidadElementosBuenos() > self.cantidadElementosMalos()
	}
	method atacarElementosCon(unaPlaga) {
		elementos.forEach({ elem => unaPlaga.atacar(elem) })
	}
	
}
