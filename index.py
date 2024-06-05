""" 
En este archivo definiremos el menú de opciones.
"""

from modulo_opcion1 import organizar_partido
from modulo_opcion2 import buscar_partido
import time

# Definimos una función con el menú de opciones
def menu_principal():
    print("¡Bienvenido a la aplicación!")
    print("----------------------------")
    print("1. Organizar un partido")
    print("2. Unirse a un partido.")
    print("3. Salir")
    time.sleep(0.5)

# Definimos una función 'main' para controlar el flujo del programa, muestra el menú, recibe la entrada del usuario
# y llama a la función según corresponda
def main():
    while True:
        menu_principal()
        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            organizar_partido()
            break
        elif opcion == "2":
            buscar_partido()
            break
        elif opcion == "3":
            print("Saliendo...")
            break
        else:
            print("Opción no válida. Intenta nuevamente.")
            time.sleep(0.5)

# Esto asegura que 'main()' se ejecute solo cuando el archivo se ejecute directamente
# no se importa como un módulo
if __name__ == "__main__":
    main()