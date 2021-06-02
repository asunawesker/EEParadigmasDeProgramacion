from calculadora_dos_numeros import CalculatorTwoNumbers
from calculadora_tres_numeros import CalculatorThreeNumbers

def main():

    calculadora1 = CalculatorTwoNumbers(3,1)
    calculadora2 = CalculatorThreeNumbers(3,2,1)

    print('\n.:USANDO CALCULADORA 1:.')
    print("Número 1: {}".format(calculadora1.number1))
    print("Número 2: {}".format(calculadora1.number2))

    print("\nSuma: {}".format(calculadora1.addition()))
    print("Resta: {}".format(calculadora1.subtracrtion()))
    print("Multiplicación : {}".format(calculadora1.multiplication()))
    print("División (n2/n1): {}".format(round(calculadora1.division(), 2)))
    print("Módulo (n2%n1): {}".format(calculadora1.modulo()))

    print('\n.:USANDO CALCULADORA 2:.')
    print("Número 1: {}".format(calculadora2.number1))
    print("Número 2: {}".format(calculadora2.number2))
    print("Número 2: {}".format(calculadora2.number3))

    print("\nSuma: {}".format(calculadora2.addition()))
    print("Resta: {}".format(calculadora2.subtracrtion()))
    print("Multiplicación : {}".format(calculadora2.multiplication()))


if __name__ == "__main__":
    main()