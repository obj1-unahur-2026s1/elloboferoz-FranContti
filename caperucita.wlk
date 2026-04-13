object caperucita {
    var canasta = 6
    method peso() = 60
    
    method perderManzanas(cantidad) {
      canasta -= cantidad
    }

    method canasta() = canasta 
}

object manzanas {
  method peso() = 0.2 
}