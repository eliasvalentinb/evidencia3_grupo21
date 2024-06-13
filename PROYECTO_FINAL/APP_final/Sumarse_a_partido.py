def buscar_partido(Usuario):
 import datetime
 import Conectar_desconectar
 import mysql.connector 
 from mysql.connector import Error
 conexion= Conectar_desconectar.conexion() 
 
 if conexion.is_connected():
      
        fechaAct = datetime.datetime.now().date()
        formato_fecha = "%Y%m%d"   
        Fecha_ok = datetime.datetime.strftime(fechaAct,formato_fecha) # convierte fecha a str
        sql =f"""select p.id_partido
                        ,p.Fecha
                        ,t.Turno
                        ,c.capacidad
                        ,p.q_faltan
                    from partido p 
                    INNER JOIN turnos t on (p.Id_turno = t.Id_turno)
                    INNER JOIN canchas c on (p.Id_cancha = c.id_cancha)
                    ;"""
        cursor=conexion.cursor()
        cursor.execute(sql) 
        resultados=cursor.fetchall()
        print("                     SUMARSE A UN PARTIDO                           ")
        print("====================================================================")
        print ("Podemos ofrecerte las siguientes opciones: ")
        print("--------------------------------------------------------------------")
        dic_partido={}
        for fila in resultados:
          dic_partido[fila[0]]=[fila[1],fila[2],fila[3],fila[4]]
          print("El dia",fila[1], "de",fila[2]," hs. Una cancha de "
                 ,fila[3]," jugadores (quedan ",fila[4]," lugares). Ingresa el cod.: ",fila[0]) 
        #print(dic_partido)
        print( " ")
        print("--------------------------------------------------------------------")
        eleccion = input("Ingresá el código: ")
        datos_part = dic_partido.get(int(eleccion))
        print( )
        print("--------------------------------------------------------------------")
        print("  Elejiste sumarte al partido de: ")
        print("--------------------------------------------------------------------")
        print("- El dia ",datos_part[0])
        print("- En el horario de: ",datos_part[1])
        print("- En una cancha de ",datos_part[2],"jugadores.")

        print("--------------------------------------------------------------------")
        confirmacion = input("¿Confirmamos tu solicitud? (si - no): ").lower()
        print("--------------------------------------------------------------------")
         
        if confirmacion == "si":
            #sql1=f"""Select id_usuario from usuarios where nombre_usuario={USU} """
            #cursor=conexion.cursor()
            #cursor.execute(sql1)
            #id_usuario = cursor.fetchall()
            cursor=conexion.cursor()
            sql = f"""INSERT INTO jugadores (Id_partido,id_usuario)VALUES (%s,%s) """
            valores = (int(eleccion) ,int(Usuario))
            cursor.execute(sql,valores)
            conexion.commit()
            print("Tu solicitud fue enviada al organizador, te estaremos notificando cuando él acepte.")
        else: print("¡Gracias!") 
 else : print("¡Gracias!")

 Conectar_desconectar.desconexion(conexion)