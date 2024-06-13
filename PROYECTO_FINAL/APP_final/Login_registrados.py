def log_usuarios():
 import Conectar_desconectar
 import Editar_Precio_Horarios
 import Alquilar_una_cancha
 import Sumarse_a_partido
 import mysql.connector 
 from mysql.connector import Error
 conexion= Conectar_desconectar.conexion()
 dic={}
 if conexion.is_connected():
            cursor=conexion.cursor()
            cursor.execute("select * from Usuarios;") 
            resultados=cursor.fetchall()
            for fila in resultados:       
             dic[fila[7]] =[fila[8] ,fila[9],fila[0]]  #se arma un diccionario  con lista usuario:password,perfil,id_usuario
            #print(dic)                #limpiar solo es para test  
            cu = 0                
            while True:
                print("                               LOGIN                                ")
                print("====================================================================")
                USU=input("Ingresá tu usuario: ") #pide el usuario para validar 
                pass_perfil = dic.get(USU)
                #print(pass_perfil)
                pass_reg = pass_perfil[0]
                perfil = pass_perfil[1]
                id_Usu = pass_perfil[2]  
                #print(pass_reg)           #limpiar solo es para test
                usuarios=dic.keys()       #listado de las claves del diccionario     
                if USU not in usuarios:
                    print("Usuario no válido.")
                    cu = cu + 1
                    if cu == 3:
                        break
                else:
                    cp = 0
                    while True:
                        PAS=input("Ingresá tu contraseña: ")
                        #print("====================================================================")
                        print("********************************************************************")
                        if PAS != pass_reg:
                            print("Contraseña incorrecta. Intentá nuevamente.")
                            cp = cp +1
                            if cp == 3:
                                break
                        else:
                            print(f"¡Bienvenido, {USU}!")
                            if perfil == 1:
                                print("********************************************************************")
                                #print("====================================================================")
                                print("             Para MODIFICAR los PRECIOS  - Ingresá 1                ")
                                print("             Para MODIFICAR los HORARIOS - Ingresá 2                ")
                                print("--------------------------------------------------------------------")
                                llamar=int(input("Ingresá una opción: "))
                                print("--------------------------------------------------------------------")
                                print( )
                                if llamar == 1:
                                    Editar_Precio_Horarios.nuevo_precio(conexion)
                                else:  Editar_Precio_Horarios.modif_horario(conexion)
                            if perfil == 2:
                                print("********************************************************************")
                                #print("====================================================================")
                                print("             Para ALQUILAR una CANCHA   - Ingresá 1                 ")
                                print("             Para SUMARTE a un PARTIDO  - Ingresá 2                 ")
                                print("--------------------------------------------------------------------")
                                llamar2=int(input("Ingresá una opción: "))
                                print("--------------------------------------------------------------------")
                                print( )
                                #llamar2 = int(input("1 para alquiar cancha, 2 para sumarte a un partido "))
                                if llamar2 == 1:
                                    Alquilar_una_cancha.alquiler()
                                else:  Sumarse_a_partido.buscar_partido(id_Usu)

                            break #sale del while del password
                    break #sale del while del usuario                           
           
 Conectar_desconectar.desconexion(conexion)


   