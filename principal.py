""" 
En este archivo definiremos el menú de opciones.
"""
from usuario_predio import menu_predio
from opciones_predio import actualizar_horarios, actualizar_precios
from usuario_jugador import menu_jugador
from opciones_jugador import organizar_partido, buscar_partido

import time

# Definimos una función con el menú de opciones
def menu_principal():
    print("¡Bienvenido a SEJUEGA!")
    print("----------------------------")
    print("1. Si sos JUGADOR")
    print("2. Si sos USUARIO PREDIO.")
    print("3. Salir")
    time.sleep(0.5)

# Definimos una función 'main' para controlar el flujo del programa, muestra el menú, recibe la entrada del usuario
# y llama a la función según corresponda
def main():
    while True:
        menu_principal()
        opcion = input("Seleccione una opción: ")
        time.sleep(0.5)
        if opcion == "1":
            while True:
                menu_jugador()
                opcion = input("Seleccioná una opción: ")
                time.sleep(0.5)
                if opcion == "1":
                    organizar_partido()
                    break
                elif opcion == "2":
                    buscar_partido()
                    break
                else:
                    print("Opción no válida. Intentá nuevamente.")
        elif opcion == "2":
            while True:
                menu_predio()
                opcion = input("Seleccioná una opción: ")
                time.sleep(0.5)
                if opcion == "1":
                    actualizar_horarios()
                    break
                elif opcion == "2":
                    actualizar_precios()
                    break
                else:
                    print("Opción no válida. Intentá nuevamente.")
        elif opcion == "3":
            print("Saliendo...")
            break
        else:
            print("Opción no válida. Intenta nuevamente.")
            time.sleep(0.5)
        break

# Esto asegura que 'main()' se ejecute solo cuando el archivo se ejecute directamente
# no se importa como un módulo
if __name__ == "__main__":
    main()