from Obrero import *
from Administrador import *
from Itendente import *

class Data:

    def obreros(self):
        obrero1 = Obrero(30, 2500, 150)
        obrero2 = Obrero(30, 5000, 200)
        obrero3 = Obrero(30, 8000, 100)
        obrero4 = Obrero(30, 3000, 350)

        obreros = [obrero1, obrero2, obrero3, obrero4]



        for obrero in obreros:
            print('Salario: {}'.format(obrero.sueldo))
            print('Bono: {}'.format(obrero.bonoMensual(6)))
            print('Salario total: {}'.format(obrero.sueldoTotal(6)))
            print('\n')

    def administradores(self):
        administrador1 = Administrador(31, 20000, 3000, 506089)
        administrador2 = Administrador(30, 15000, 2000, 732900)
        administrador3 = Administrador(31, 10000, 1000, 360789)
        administrador4 = Administrador(30, 8000, 800, 90000)

        administradores = [administrador1, administrador2, administrador3, administrador4]

        for administrador in administradores:
            print('Salario: {}'.format(administrador.sueldo))
            print('Bono: {}'.format(administrador.bonoMensual()))
            print('Salario total: {}'.format(administrador.sueldoTotal()))
            print('\n')

    def intendentes(self):
        intendente1 = Itendente(2, 250, 5000, 400)
        intendente2 = Itendente(6, 300, 5000, 400)
        intendente3 = Itendente(10, 200, 5000, 400)
        intendente4 = Itendente(12, 240, 5000, 400)

        intendentes = [intendente1, intendente2, intendente3, intendente4]

        for intendente in intendentes:
            print('Salario: {}'.format(intendente.sueldo))
            print('Bono: {}'.format(intendente.bonoMensual()))
            print('Salario total: {}'.format(intendente.sueldoTotal()))
            print('\n')