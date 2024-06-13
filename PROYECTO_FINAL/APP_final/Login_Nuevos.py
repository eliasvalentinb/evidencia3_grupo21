def  Usuario_Nvo():
 import Conectar_desconectar
 import datetime
 import mysql.connector 
 from mysql.connector import Error
 conexion = Conectar_desconectar.conexion()

 if conexion.is_connected():
            print("=============================================================================")
            print("Por favor, ingresá un usuario para validar si está disponible: ") 
            print("=============================================================================") 
            Lista=[] #creo una lista para contener los usuarios
            USU=input("Ingresá un nombre de usuario: ") #pide el usuario para validar si esta disponible
            cursor=conexion.cursor()
            cursor.execute("select * from Usuarios;") 
            resultados=cursor.fetchall()
            for fila in resultados:       
                Lista.append(fila[7]) # me quedo con los usuarios creados en la tabla Usuarios
            #print(Lista)  #limpiar es para test
            if USU in Lista:
                print("El usuario no está disponible.")
            else: 
                print("=============================================================================")
                print("Por favor, completá los siguientes datos: ") 
                print("=============================================================================")   
                Nombre=input("Ingresá tu nombre: ")
                apellido=input("Ingresá tu apellido: ") 
                Tel=input("Ingresá tu número de teléfono: ") 
                dni=input("Ingresá tu DNI: ")
                fec_nac=input("Ingresá tu fecha de nacimiento: ")
                formato_fecha = "%d/%m/%Y"   #"%Y%m%d"
                Fecha_ok = datetime.datetime.strptime(fec_nac,formato_fecha) # convierte el str a fecha
                Fecha_final = Fecha_ok.date()
                mail=input("Ingresá tu correo: ") 
                pas=input("Ingresá una contraseña: ")   
                cursor=conexion.cursor() #Genero el insert para completar los campos de la tabla usuarios
                sql="""INSERT INTO Usuarios(Nombre,Apellido,Tel_Usuario,DNI,Fecha_Nac,mail,Nombre_Usuario,pass,Perfil) 
                VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
                valores=(Nombre,apellido,Tel,dni,Fecha_final,mail,USU,pas,2)
                cursor.execute(sql,valores)   
                conexion.commit()
                print("=============================================================================")
                print("¡Felicidades! Te registraste con éxito.") 
                print("=============================================================================")
 Conectar_desconectar.desconexion(conexion)
