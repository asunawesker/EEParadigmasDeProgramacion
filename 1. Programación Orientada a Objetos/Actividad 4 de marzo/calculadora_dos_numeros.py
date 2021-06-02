from calculadora import Calculator

class CalculatorTwoNumbers(Calculator):

    def __init__(self, number1, number2):
        self.__number1 = number1
        self.__number2  = number2

    # Getters y setters
    @property
    def number1(self): 
        return self.__number1 
       
    @number1.setter 
    def number1(self, number1): 
        self.__number1 = number1 

    @property
    def number2(self): 
        return self.__number2 
       
    @number2.setter 
    def number2(self, number2): 
        self.__number2 = number2 

    # Funciones operaciones
    def addition(self):
        return self.number1 + self.number2
    
    def subtracrtion(self):
        return self.number1 - self.number2
    
    def multiplication(self): 
        return self.number1 * self.number2
    
    def division(self):
        return self.number2 / self.number1

    def modulo(self):
        return self.number2 % self.number1
