from Punto import Punto
from Rectangulo import Rectangulo
from Linea import Linea

def main():

    punto1 = Punto(1,4)
    punto2 = Punto(4,4)
    punto3 = Punto(1,2)
    punto4 = Punto(4,2)

    rectangulo = Rectangulo(punto1, punto2, punto3, punto4)
    linea = Linea(punto1, punto2)

    linea.mueveDerecha()
    linea.mueveIzquierda()
    linea.mueveArriba()
    linea.mueveAbajo()

    rectangulo.mostrarPuntos()
    rectangulo.desplazar()
    rectangulo.mostrarPuntos()

    rectangulo2 = Rectangulo (base = 10, altura = 20)

    print(rectangulo2.superficie())
    rectangulo2.mostrarPuntos()


if __name__ == "__main__":
    main()