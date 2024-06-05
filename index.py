""" 
En este archivo definiremos el menú de opciones.
"""

from modulo_opciones import organizar_partido, buscar_partido

def menu_principal():
    print("¡Bienvenido a la aplicación!")
    print("----------------------------")
    print("1. Organizar un partido")
    print("2. Unirse a un partido.")
    print("3. Salir")

def main():
    while True:
        menu_principal()
        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            organizar_partido()
        elif opcion == "2":
            buscar_partido()
        elif opcion == "3":
            print("Saliendo...")
            break
        else:
            print("Opción no válida. Intenta nuevamente.")

if __name__ == "___main___":
    main()