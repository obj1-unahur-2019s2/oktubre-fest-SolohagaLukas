import marcas.*
import primeraParte.*

class Carpa {
	var property limiteGente = 50
	var property marca
	var property tieneMusica = false
	var property personasAdentro //numero, no lista
	
	method dejaIngresar(persona) {
		return self.hayLugar() and not persona.estaEbria()
	}
	method puedeEntrar(persona) {
		return persona.quiereEntrar(self) and self.dejaIngresar(persona)
	}
	method hayLugar() {
		return self.personasAdentro() < limiteGente 
	}
}