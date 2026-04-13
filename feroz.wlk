import caperucita.*

/*1. Averiguar si feroz está saludable, 
lo que se deduce de que su peso esté entre 20 y 150 unidades. 
Se sabe que inicialmente pesa 10 unidades,
 por lo que no está saludable.*/
object feroz {
    var peso = 10 //inicialmente pesa 10 unidades

    method estaSaludable() {
      return peso > 20 and peso < 150 //esta saludable si peso mayor a 20 y menor a 150
    }

    method subirPeso(aumenta) {
      peso += aumenta
    }

    method bajarPeso(disminuye) {
      peso -= disminuye
    }

    method sufreUnaCrisis() {
      peso = 10 // si sufre una crisis, vuelve al peso inicial
    }

    method comer(pesoIngerido) {
      self.subirPeso(pesoIngerido * 0.1)
    }

    method correr() {
      self.bajarPeso(1)
    }

    method comerACaperucitaConCanasta(personaje) {
            self.comer(personaje.peso())
            self.comer(personaje.canasta() * manzanas.peso()) 
    }
}