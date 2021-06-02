class Calculator():

    def __init__(self, number1, number2):
        self.__number1 = number1
        self.__number2  = number2

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

    def addition(self):
        return self.number1 + self.number2
    
    def subtracrtion(self):
        return self.number1 - self.number2
    
    def multiplication(self): 
        return self.number1 * self.number2
    
    def division(self):
        return self.number1 / self.number2



def main():

    calculadora = Calculator(2,1)

    print("Número 1: {}".format(calculadora.number1))
    print("Número 2: {}".format(calculadora.number2))

    print("\nSuma: {}".format(calculadora.addition()))
    print("Resta: {}".format(calculadora.subtracrtion()))
    print("Multiplicación : {}".format(calculadora.multiplication()))
    print("División: {}".format(calculadora.division()))


if __name__ == "__main__":
    main()