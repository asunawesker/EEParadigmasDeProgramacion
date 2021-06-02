from math import floor

from Empleado import *


class Administrador(Empleado):

    def __init__(self, asistencia=0, sueldo=15000, bono=1200, ventas=0):
        self.asistencia = asistencia
        self.sueldo = sueldo
        self.bono = bono
        self.ventas = ventas

    def checarAsistencia(self):
        return self.asistencia + 1

    def bonoMensual(self):
        if (self.ventas / 100000) >= 1:
            return 'SI'
        else:
            return 'NO'

    def sueldoTotal(self):
        ventasMayores = self.round_down(self.ventas / 100000)
        bonoTotal = ventasMayores * self.bono
        sueldoTotal = self.sueldo + bonoTotal
        return sueldoTotal

    def round_down(self, no, decimals=0):
        multiplier = 10 ** decimals
        return floor(no * multiplier) / multiplier
