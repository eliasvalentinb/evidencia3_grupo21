
def nuevo_precio(conexion1): #en conexion1 le pasamos los parametros de la conexion
   conexion = conexion1
   cursor=conexion.cursor()
   cursor.execute("select * from Canchas;") 
   tabla_canchas = cursor.fetchall() 
   print("                         MODIFICAR PRECIOS                          ")
   print("====================================================================")      
   for filas in tabla_canchas:
      print("Id: ",filas[0]," - ",filas[1],"(",filas[2]," jugadores) - Precio de Alquiler: ",filas[3])
   print("--------------------------------------------------------------------")
   modificar = input("¿Qué precio quisieras modificar? (Ingresá el Id) ")
   Nuevo_precio = input("¿Cuál es el nuevo precio? ")
   sql= f"""UPDATE Canchas SET precio_alquiler = {Nuevo_precio} WHERE Id_cancha = {modificar}; """
   cursor=conexion.cursor()
   cursor.execute(sql) 
   conexion.commit()
   print("--------------------------------------------------------------------")
   print("El cambio fue registrado con éxito.")
   print()
   cursor=conexion.cursor()
   cursor.execute(f"""select * from Canchas WHERE Id_cancha = {modificar};""") 
   tabla_canchas = cursor.fetchall()       
   for filas in tabla_canchas:
      print("Id: ",filas[0]," - ",filas[1],"(",filas[2]," jugadores) - Precio de Alquiler: ",filas[3])


   
   
def modif_horario(conexion1): #en conexion1 le pasamos losparametros de la conexion
   conexion=conexion1
   cursor=conexion.cursor()
   cursor.execute("select * from Turnos;") 
   tabla_Turnos = cursor.fetchall()
   print("                          MODIFICAR TURNOS                          ")       
   print("====================================================================")
   for filas in tabla_Turnos:
      print("Id: ",filas[0]," - Turno: (",filas[1],") Habilitado: ",filas[4])
   print("--------------------------------------------------------------------")
   Modificar = int(input("¿Qué turno quisieras modificar? (Ingresá el Id): "))
            #usamos el Case para cambiar al estado opuesto al que trae
   sql = f"""UPDATE Turnos SET Activo = CASE WHEN Activo = "SI" THEN "NO" ELSE "SI" END  
                      WHERE Id_turno = {Modificar}; """
   cursor.execute(sql) 
   conexion.commit()
   print("El cambio fue registrado con éxito.")
   print("--------------------------------------------------------------------")
   cursor=conexion.cursor()
   sql = f"""SELECT * FROM Turnos WHERE id_turno = {Modificar};"""
   cursor.execute(sql) 
   tabla_Turnos = cursor.fetchall()       
   for filas in tabla_Turnos:
    print("Id: ",filas[0]," - Turno: (",filas[1],") Habilitado: ",filas[4])


