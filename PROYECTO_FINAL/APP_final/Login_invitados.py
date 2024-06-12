def invitados():
 import Conectar_desconectar
 import Sumarse_a_partido
 import mysql.connector 
 from mysql.connector import Error
 dic={}
 conexion= Conectar_desconectar.conexion()

 cursor=conexion.cursor()
 cursor.execute("select * from usuarios;") 
 resultados=cursor.fetchall()
 for fila in resultados:      
  dic[fila[4]] =fila[0]  #se arma un diccionario documento:id_usuario
 print("                            USUARIO INVITADO                                 ") 
 print("=============================================================================")
 dni = int(input("Ingrese si documento"))
 Documentos = dic.keys()  
 if dni in Documentos:
  print("esta registrado")
  Usu_id=dic.get(dni)
  Usuario = Usu_id
  Sumarse_a_partido.buscar_partido(Usuario)
 else:
   print("                      NOS COMPARTIS LOS SIGUIENTES DATOS                     ") 
   print("=============================================================================") 
   mail=input("Ingrese su mail: ") 
   Tel=input("Ingrese su telefono: ") 
   cursor=conexion.cursor() #Genero el insert para completar los campos de la tabla usuarios
   sql="""INSERT INTO Usuarios(Tel_Usuario,DNI,mail,Perfil) 
    VALUES (%s,%s,%s,%s);"""
   valores=(Tel,dni,mail,3)
   cursor.execute(sql,valores)   
   conexion.commit() 
   cursor=conexion.cursor()
   cursor.execute(f"select * from usuarios where dni ={dni} ;") 
   resultados=cursor.fetchall()
   for fila in resultados:      
     Usuario =fila[0]  #se arma un diccionario documento:id_usuario
   Sumarse_a_partido.buscar_partido(Usuario)
   
   Conectar_desconectar.desconexion(conexion)
  










