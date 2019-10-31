import primeraParte.*
import carpas.*

class Cerveza{
	var property gramosLupulo
	var property pais
}
class Rubia inherits Cerveza {
	var property graduacion
}
class Negra inherits Cerveza {
	var property graduacionReglamentaria = graduacion.cantidad()
	method graduacion() {
		var variable = [gramosLupulo * 2, graduacionReglamentaria]
		return variable.min() 
	}
}
class Roja inherits Negra {
	override method graduacion() {
		return super() * 1.25
	}
}
object graduacion {
	var property cantidad = 5
}

