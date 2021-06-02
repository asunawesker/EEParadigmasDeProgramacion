from abc import ABC, abstractmethod

class Empleado(ABC):

    @abstractmethod
    def checarAsistencia(self):
        pass

    @abstractmethod
    def bonoMensual(self):
        pass

    @abstractmethod
    def sueldoTotal(self):
        pass