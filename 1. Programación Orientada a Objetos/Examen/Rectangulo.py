import math

from Punto import Punto

class Rectangulo:
    """
        Python no permite la sobrecarga de métodos pero se puede especificar
        con valores definidos y condicionales la forma en que queremos que se
        comporte nuestro constructor
    """
    def __init__(self, punto1 = None, punto2 = None, punto3 = None, punto4 = None, base = None, altura = None):
        if (base != None and altura != None):
            self.punto1 = Punto(0,0)
            self.punto2 = Punto(0, altura)
            self.punto3 = Punto(base, altura)
            self.punto4 = Punto(base, 0)
        else:
            self.punto1 = punto1
            self.punto2 = punto2
            self.punto3 = punto3
            self.punto4 = punto4
        self.base = base
        self.altura = altura

    def superficie(self):
        return self.base * self.altura
        
    def desplazar(self):
        self.punto1.x = self.punto1.x + 1
        self.punto2.x = self.punto2.x + 1
        self.punto3.x = self.punto1.x + 1
        self.punto4.x = self.punto2.x + 1
        self.punto1.y = self.punto1.y + 1
        self.punto2.y = self.punto2.y + 1
        self.punto3.y = self.punto1.y + 1
        self.punto4.y = self.punto2.y + 1

    def mostrarPuntos(self):
        print('{}, {}, {}, {}'.format(self.punto1.mostrarPunto(), self.punto2.mostrarPunto(), self.punto3.mostrarPunto(), self.punto4.mostrarPunto()))