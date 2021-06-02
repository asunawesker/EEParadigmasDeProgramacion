from abc import ABC, abstractmethod

class Calculator(ABC):

    @abstractmethod
    def addition(self):
        pass
    
    @abstractmethod
    def subtracrtion(self):
        pass
    
    @abstractmethod
    def multiplication(self): 
        pass
        