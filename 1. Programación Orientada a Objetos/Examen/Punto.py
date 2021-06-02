class Punto:
    def __init__(self, x = 0, y = 0):
        self.x = x
        self.y = y

    def mostrarPunto(self):
        return '({},{})'.format(self.x, self.y)