from calculadora import Calculator

class CalculatorThreeNumbers(Calculator):

    def __init__(self, number1, number2, number3):
        self.__number1 = number1
        self.__number2 = number2
        self.__number3 = number3

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

    @property
    def number3(self): 
        return self.__number3 
       
    @number3.setter 
    def number3(self, number3): 
        self.__number3 = number3 


    # Funciones operaciones
    def addition(self):
        return self.number1 + self.number2 + self.__number3
    
    def subtracrtion(self):
        return self.number1 - self.number2 - self.__number3
    
    def multiplication(self): 
        return self.number1 * self.number2 * self.__number3 