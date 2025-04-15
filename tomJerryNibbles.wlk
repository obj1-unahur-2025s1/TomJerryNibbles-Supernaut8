object tom {
    var energia = 50
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distancia){
        energia = 0.max(energia - distancia / 2)
    }
    method energia() = energia
    method velocidadMax() = energia
    method puedeCazarA(distancia) = energia >= distancia / 2
    method cazarAUbicadoA(unRaton, distancia) {
        if(self.puedeCazarA(distancia)) {
            self.correr(distancia)
            self.comer(unRaton)
        }          
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method cumplirAnios() {
        edad += 1
    }
}

object nibbles {
    method peso() = 35
}

object splinter {
    method peso() = 50
}