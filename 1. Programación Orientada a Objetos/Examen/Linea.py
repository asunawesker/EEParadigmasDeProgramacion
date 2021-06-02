class Linea:
    def __init__(self, punto1, punto2):
        self.punto1 = punto1
        self.punto2 = punto2

    def mueveDerecha(self):
        self.punto1.x = self.punto1.x + 1
        self.punto2.x = self.punto2.x + 1
        return self.mostrarPuntos()

    def mueveIzquierda(self):
        self.punto1.x = self.punto1.x - 1
        self.punto2.x = self.punto2.x - 1
        return self.mostrarPuntos()

    def mueveArriba(self):
        self.punto1.y = self.punto1.y + 1
        self.punto2.y = self.punto2.y + 1
        return self.mostrarPuntos()

    def mueveAbajo(self):
        self.punto1.y = self.punto1.y - 1
        self.punto2.y = self.punto2.y - 1
        return self.mostrarPuntos()

    def mostrarPuntos(self):
        print('{}, {}'.format(self.punto1.mostrarPunto(), self.punto2.mostrarPunto()))
