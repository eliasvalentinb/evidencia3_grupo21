def  Usuario_Nvo():
 import Conectar_desconectar
 import datetime
 import mysql.connector 
 from mysql.connector import Error
 conexion = Conectar_desconectar.conexion()

 if conexion.is_connected():
            print("=============================================================================")
            print("Por favor, ingresa un usuario para validar si esta disponible: ") 
            print("=============================================================================") 
            Lista=[] #creo una lista para contener los usuarios
            USU=input("ingrese un usuario: ") #pide el usuario para validar si esta disponible
            cursor=conexion.cursor()
            cursor.execute("select * from Usuarios;") 
            resultados=cursor.fetchall()
            for fila in resultados:       
                Lista.append(fila[7]) # me quedo con los usuarios creados en la tabla Usuarios
            #print(Lista)  #limpiar es para test
            if USU in Lista:
                print("El Usuario no esta Disponible.")
            else: 
                print("=============================================================================")
                print("Por favor, completa los siguientes datos: ") 
                print("=============================================================================")   
                Nombre=input("ingrese su nombre: ")
                apellido=input("Ingrese su apellido: ") 
                Tel=input("Ingrese su telefono: ") 
                dni=input("Ingrese su documento: ")
                fec_nac=input("Ingrese su fecha de nacimiento: ")
                formato_fecha = "%d/%m/%Y"   #"%Y%m%d"
                Fecha_ok = datetime.datetime.strptime(fec_nac,formato_fecha) # convierte el str a fecha
                Fecha_final = Fecha_ok.date()
                mail=input("Ingrese su mail: ") 
                pas=input("Ingrese su password: ")   
                cursor=conexion.cursor() #Genero el insert para completar los campos de la tabla usuarios
                sql="""INSERT INTO Usuarios(Nombre,Apellido,Tel_Usuario,DNI,Fecha_Nac,mail,Nombre_Usuario,pass,Perfil) 
                VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
                valores=(Nombre,apellido,Tel,dni,Fecha_final,mail,USU,pas,2)
                cursor.execute(sql,valores)   
                conexion.commit()
                print("=============================================================================")
                print("sus datos se registraron correctamente") 
                print("=============================================================================")
 Conectar_desconectar.desconexion(conexion)
