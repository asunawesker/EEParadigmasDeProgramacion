from Empleado import *

class Obrero(Empleado):

    def __init__(self, asistencia = 0, sueldo = 10000, bono = 600):
        self.asistencia = asistencia
        self.sueldo     = sueldo
        self.bono       = bono

    def checarAsistencia(self):
        return self.asistencia + 1

    def bonoMensual(self, mes):
        if (mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8 or mes == 1 or mes == 10 or mes == 12) and self.asistencia == 31:
            return 'SI'
        elif (mes == 4 or mes == 6 or mes == 9 or mes == 11) and self.asistencia == 30:
            return 'SI'
        elif mes == 2 and (self.asistencia == 28 or self.asistencia == 29):
            return 'SI'
        else:
            return 'NO'

    def sueldoTotal(self, mes):
        if (mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8 or mes == 1 or mes == 10 or mes == 12) and self.asistencia == 31:
            return self.sueldo + self.bono
        elif (mes == 4 or mes == 6 or mes == 9 or mes == 11) and self.asistencia == 30:
            return self.sueldo + self.bono
        elif mes == 2 and (self.asistencia == 28 or self.asistencia == 29):
            return self.sueldo + self.bono
        else:
            return self.sueldo