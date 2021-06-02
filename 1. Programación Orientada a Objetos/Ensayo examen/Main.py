from Data import *


def main():

    datos = Data()

    print('.:SISTEMA EMPLEADOS:.')
    print('Seleccione el tipo de empleado')
    print('1. Obreros \n2. Administradores \n3. Intendentes')
    opcion = int(input('Opción: '))

    if(opcion == 1):
        datos.obreros()
    elif(opcion == 2):
        datos.administradores()
    elif(opcion == 3):
        datos.intendentes()

if __name__ == "__main__":
    main()
