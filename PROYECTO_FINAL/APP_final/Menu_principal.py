import Login_registrados       #contiene funciones de Login para usuarios registrados y ADM
import Login_Nuevos            #contiene la funcion para crear un nuevo usuario
import Login_invitados         #contiene las funciones para los invitados
print("====================================================================")
print("                  BIENVENIDO A HOY SE JUEGA!")
print("====================================================================")
print( )
print("            Si TENES un USUARIO    - ingresa 1")
print("            Si QUERES un USUARIO   - ingresa 2")
print("            Entrar como INVITADO   - ingresa 3")
print( )
print("--------------------------------------------------------------------")
eleccion = int(input("ingresa una opción: "))
print("--------------------------------------------------------------------")
if eleccion == 1:
    #Log_Usuarios_Reg_y_ADM.log_usuarios()
    Login_registrados.log_usuarios()
else: 
    if eleccion ==2:
       #Usuario_Nuevo.Usuario_Nvo()
       Login_Nuevos.Usuario_Nvo()
    else: 
        if eleccion ==3:
            Login_invitados.invitados() 
