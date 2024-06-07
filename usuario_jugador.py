# Función para menú de usuario JUGADOR

def menu_jugador(tipo):
    # Tipo de usuario (regitrado o invitado)
    if tipo == "a":
        print("1. Para organizar un partido.")
        print("2. Para unirse a un partido.")
    else:
        print("1. Para unirse a un partido.")