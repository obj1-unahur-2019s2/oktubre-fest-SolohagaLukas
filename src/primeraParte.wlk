import marcas.*
import carpas.*

class Jarra {
	var property capacidadLitros
	var property marca
	
	method contenidoDeAlcohol() {
		return capacidadLitros * marca.graduacion()
	}
}

class Persona { 
	var property peso
	var property jarrasCompradas = []
	var property leGustaMusica = false
	var property nivelAguante
	
	method estaEbria() {
		return self.totalAlcoholIngerido() * peso > nivelAguante
	}
	method totalAlcoholIngerido() {
		return jarrasCompradas.sum({jar => jar.contenidoDeAlcohol()})
		//return jarrasCompradas.contenidoDeAlcohol().sum() MAL
	}
	method comprarJarra(nombre) {
		jarrasCompradas.add(nombre)
	}
	method quiereEntrar(carpa) {		
		return self.leGustaCerveza(carpa.marca()) and leGustaMusica == carpa.tieneMusica()
	}
	//método abstracto
	method leGustaCerveza(birra)
}
class Belga inherits Persona {
	method leGustaCerveza(birra) {
		return birra.gramosLupulo() > 4
	}
}
class Checo inherits Persona {
	method leGustaCerveza(jarra) {
		return jarra.marca().graduacion() > 8
	}
}
class Aleman inherits Persona {
	method leGustaCerveza(birra) {
		return true
	}
	override method quiereEntrar(carpa) {
		return super(carpa) and carpa.personasAdentro().even()
		//para hacer par => % 2 == 0  
	}
}
