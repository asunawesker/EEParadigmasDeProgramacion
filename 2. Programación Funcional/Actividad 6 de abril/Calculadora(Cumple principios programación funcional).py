#Todo el programa cumple con la programación funcional


#No se define con una clase, se está definiendo todo lo que se hará dentro de una función
def operation(operation):

    #Nuestras operaicones están definidas dentro de funciones que retornan un valor numérico como resultado
    def addition(number1, number2):
        return number1 + number2
    
    def subtraction(number1, number2):
        return number1 - number2
    
    def multiplication(number1, number2): 
        return number1 * number2
    
    def division(number1, number2):
        return number2 / number1

    def modulo(number1, number2):
        return number2 % number1

    #Al ser una función, retorna un valor, en este caso retorna una operación del diccionario creado 
    #Este diccionario utiliza las funciones creadas 
    function = {
        'addition': addition, 
        'subtraction': subtraction, 
        'multiplication': multiplication,
        'division': division,
        'modulo': modulo
    }
    
    return function[operation]

# Iniciamos nuestras acciones no con un objeto, sino únicamente llamando a nuestra función que abarca todo el programa
do = operation('addition')
print(do(2, 3))

#Forma más corta de ejecutar una función cuando quiere ejecutar una función dentro de una función
do = operation('addition')(4, 5)
print(do)