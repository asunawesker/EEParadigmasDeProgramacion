from math import floor

from Empleado import *

class Itendente(Empleado):

    def __init__(self, mes, horas = 0, sueldo = 8000, bono = 500 ):
        self.horas  = horas
        self.sueldo = sueldo
        self.bono   = bono
        self.mes    = mes

    def checarAsistencia(self):
        turnos = self.round_down(self.horas / 8)
        return turnos


    def bonoMensual(self):
        if (self.mes == 1 or self.mes == 3 or self.mes == 5 or self.mes == 7 or self.mes == 8 or self.mes == 1 or self.mes == 10 or self.mes == 12) and self.checarAsistencia() >= 31:
            return 'SI'
        elif (self.mes == 4 or self.mes == 6 or self.mes == 9 or self.mes == 11) and self.checarAsistencia() >= 30:
            return 'SI'
        elif self.mes == 2 and (self.checarAsistencia() == 28 or self.checarAsistencia() >= 29):
            return 'SI'
        else:
            return 'NO'

    def sueldoTotal(self):
        if (self.mes == 1 or self.mes == 3 or self.mes == 5 or self.mes == 7 or self.mes == 8 or self.mes == 1 or self.mes == 10 or self.mes == 12) and self.checarAsistencia() >= 31:
            return self.sueldo + self.bono
        elif (self.mes == 4 or self.mes == 6 or self.mes == 9 or self.mes == 11) and self.checarAsistencia() >= 30:
            return self.sueldo + self.bono
        elif self.mes == 2 and (self.checarAsistencia() == 28 or self.checarAsistencia() >= 29):
            return self.sueldo + self.bono
        else:
            return self.sueldo

    def round_down(self, n, decimals=0):
        multiplier = 10 ** decimals
        return floor(n * multiplier) / multiplier