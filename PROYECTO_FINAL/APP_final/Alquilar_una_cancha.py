def alquiler():
 import datetime
 import Conectar_desconectar
 import mysql.connector 
 from mysql.connector import Error
 conexion = Conectar_desconectar.conexion()
 Turno = {}
 if conexion.is_connected():
        
        # ---------Damos las opciones de canchas----------------------------------
        print("                     ALQUILER de CANCHAS                            ")
        print("====================================================================")
        print("cancha para cuantos jugadores estas buscando?")
        print("====================================================================")
        cursor=conexion.cursor() 
        cursor.execute("select * from Canchas;") 
        tabla_canchas = cursor.fetchall()       
        for filas in tabla_canchas:
         print("Id: ",filas[0]," - ",filas[1],"(",filas[2]," jugadores) - precio Alquiler: ",filas[3])
 print( )
 print("--------------------------------------------------------------------")
 Cancha = input("Que cancha te gustaria? (ingresa el Id): ")
 print("--------------------------------------------------------------------")
        #--------Evaluamos si esta la fecha habilitada para reservas--------------
 salir ="no"
 while True:
            fechaAct = datetime.datetime.now().date()
            print("                        DEFINIR FECHA                               ")
            print("====================================================================")
            Fecha=input("Que fecha te interesa alquilar?(dd/mm/aaaa): ")
            formato_fecha = "%d/%m/%Y"  
            Fecha_ok = datetime.datetime.strptime(Fecha,formato_fecha) # convierte el str a fecha
            Fecha_final = Fecha_ok.date()  #formato de fecha
            formato="%Y%m%d"
            Fec=datetime.datetime.strftime(Fecha_final,formato) #formato de str
            sql = f"""select activo
                        from periodo
                        where {Fec} between Fecha_desde and Fecha_hasta; """
            cursor=conexion.cursor()
            cursor.execute(sql) 
            resultados=cursor.fetchall()
            for fila in resultados:
                if fila[0] == 0 or Fecha_final < fechaAct :
                    print("esa fecha no esta disponible") 
                else: salir="si"
            if salir == "si":
             break
 
 cursor=conexion.cursor() 
        #redactar la consulta sql, f-string formatea cadena
 sql= f"""SELECT  par.Fecha        
                        ,par.Id_turno
                        ,turnos.Id_turno
                        ,turnos.turno 
                FROM ( SELECT fecha
                             ,Id_turno 
	                   FROM partido  
                       WHERE partido.Fecha = {Fec} and partido.Id_cancha = {Cancha}) par
                RIGHT JOIN  turnos ON (par.Id_turno = turnos.Id_turno )
                WHERE par.Fecha is null
                and turnos.activo = "SI"
                ;"""
 cursor.execute(sql) 
 resultados=cursor.fetchall()
 print( )
 print("                        DEFINIR HORARIOS                            ")
 print("====================================================================")
 print("los horarios libres para este dia son: ")
 for fila in resultados: 
            Turno[fila[2]] = fila[3]  #guardo el id_turno y el turno para despues mostrar la eleccion   
            print("para el turno de ",fila[3]," ingresa ",fila[2] )
 print( )
 print("--------------------------------------------------------------------")
 Id_turno = int(input("Que horario vas a reservar? (ingresa el Id): "))
 print("--------------------------------------------------------------------")
    # ------ Consulta el estado de los equipos-----------------------------------------
 equipo_completo = input("Tenes los esquipos completos? (si - no): ") 
 if equipo_completo == "no":
           sumar_jugadores = input("Queres sumar jugadores? (si - no): ")
           if sumar_jugadores=="si":
            Q_faltan = input("Cuantos jugadores te faltan?: ")
 else:
        sumar_jugadores= "no"
        Q_faltan = 0

    #----- damos un resumen de la reserva antes de confirmar ---------------------------
 print("                        VALIDAMOS RESERVA                           ")
 print("====================================================================")
 print("tu reserva seria:")
 print("para el dia ",Fecha)
 print("Una cancha para 7 Jugadores")
 print("en el turno ",Turno.get(Id_turno)," horas")
 print("--------------------------------------------------------------------")
 confirma= input("CONFIRMAMOS TU RESERVA? (SI - NO): ")
 print("--------------------------------------------------------------------")
 print()
 if confirma == "si":
      sql = """ INSERT INTO partido (Fecha,Id_turno,id_usuario,Id_cancha,Equipo_completo,Sumar_Jugador,Q_Faltan) VALUES
                (%s,%s,%s,%s,%s,%s,%s)""" 
      valores= (Fec,Id_turno,1,int(Cancha),equipo_completo,sumar_jugadores,int(Q_faltan))
      cursor.execute(sql,valores)   
      conexion.commit() 
 else: print("Gracias")
