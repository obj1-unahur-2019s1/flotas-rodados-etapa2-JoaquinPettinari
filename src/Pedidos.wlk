class Pedidos {
	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	const property coloresIncompatibles = []
	
	method velocidadRequerida(){
		return distancia / tiempoMaximo
	}
	method puedeSatisfacer(auto){
		return auto.velocidadMaxima() - self.velocidadRequerida() >= 10
		and auto.capacidad() >= cantPasajeros
		and (not coloresIncompatibles.contains(auto.color()))
	}
	method acelerar(){
		tiempoMaximo --
	}
	method relajar(){
		tiempoMaximo++
	}
	

	
	
}
