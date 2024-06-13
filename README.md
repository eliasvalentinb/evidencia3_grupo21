### SEJUEGA! ###

En esta ocasión, un predio de canchas de fútbol nos pidió que hagamos una aplicación para que sus clientes interactúen directamente desde ella. Teniendo distintas posibilidades de alquilar y jugar en las canchas sin necesidad de que haya un contacto directo.

El objetivo principal de la aplicación es satisfacer a un usuario la necesidad de jugar al fútbol. El mismo, con un usuario y una clave, ingresa en la aplicación donde, en primera instancia, le consulta si desea crear un partido como anfitrión o unirse a un partido donde falten jugadores. En caso de elegir la primera opción, se le mostrarán los días y horarios disponibles para reservar el turno. En caso de elegir la segunda opción, se le mostrarán los días y horarios disponibles de partidos que no hayan llenado la capacidad de la cancha, y al elegir se le mostrará un mensaje diciendo que al confirmar el anfitrión del partido la solicitud se le enviará un mensaje de confirmación.

Por otro lado, existirá también una opción de ingreso para el usuario administrador del predio, que tenga control sobre distintos datos relevantes del momento. 


### ARCHIVOS FUENTE Y RECORRIDO POR EL REPOSITORIO

**APP_Intro_Programación/**

Esta carpeta contiene los archivos de la pasada evidencia, decidimos cambiarlos por nuevos para una mejor organización de la aplicación final, los conservamos para guiarnos desde ahí.

**ESQUEMA BBDD/**

Acá se concentrarán principalmente los archivos básicos de la base de datos que fuimos escalando para llegar al resultado final.
 
* EER Diagram app_Futbol.sql

* EER Diagram app_futbol.png

* EER diagram app_Futbol.mwb.bak

### ARCHIVOS SQL - PROYECYO_FINAL/BASE DE DATOS/

En esta carpeta está la base de datos que usamos para el proyecto final y el pdf que contiene las consultas hechas en ella.

* base app_canchas.sql

* Base de datos del proyecto sus diagramas y SQL.pdf


### ARCHIVOS PYTHON - PROYECTO_FINAL/APP_final/

El proyecto está organizado en ocho archivos Python (`.py`), cada uno de los cuales contiene diferentes partes de la funcionalidad de la aplicación.

1. **Alquilar_una_cancha.py**
   - Este archivo contiene la lógica de la opción de organizar un partido como anfitrión, desde que se elige la opción hasta que se termina el programa.
   - Las función en este módulo es:
      * *'alquiler()'*: Función que contiene la opción que el usuario elige si desea organizar un partido. 
        
2. **Conectar_desconectar.py**
   - Contiene la definición de las funciones que servirán para concetar y desconectar la base de datos.
   - *'conexion()'*: Función que será llamada cada vez que el usuario interactúe con la base de datos.
   - *'desconexion(conexion1)'*: Función que será llamada al cerrar la conexión a la base de datos.

3. **Editar_Precio_Horarios.py**
   - Contiene la definición de las funciones que serán para el usuario administrador y la gestión de precios y horarios del predio. 
   - *'nuevo_precio(conexion1)'*: Función que será llamada cuando el administrador desee cambiar los precios de las canchas que se muestran en la app.
   - *'modif_horario(conexion1)'*: Función que será llamada cuando el administrador desee cambiar los horarios de las canchas que se muestran en la app.

4. **Login_invitados.py**
      - Contiene la definición de una de las funciones que son llamadas desde el 'Menu_principal.py'.
      - *'invitados()'*: La única opción que tendrá este tipo de usuario será la de buscar un partido al que sumarse simplemente ingresando su DNI, no tendrá la opción de organizar partidos.

5. **Login_Nuevos.py**
      - Contiene la definición de una de las funciones que son llamadas desde el 'Menu_principal.py'.
      - *'Usuario_Nvo'*: Función que será llamada cuando el usuario ingrese a la app y desee registrarse en caso de que aún no lo esté, acá se le pedirán distintos datos que puedan ser relevantes para el registro.
      
6. **Login_registrados.py**
     - Contiene la definición de una de las funciones que son llamadas desde el 'Menu_principal.py'. 
      - *'log_usuarios()'*: Función que será llamada cuando el usuario ya se encuentre registrado y desee loguearse en la app con su usuario y contraseña, este ingreso tiene la opción de organizar un partido y de unirse a uno.

7. **Menu_principal.py**
      - Este módulo contiene el menú principal donde se tendrá la primera interacción con la app al ingresar, EL PROGRAMA SE EJECUTA DESDE ACÁ. En él contiene las opciones de inciar sesión, registrarse o ingresar como invitado.
   
8. **Sumarse_a_partido.py**
         * *'buscar_partido()'*: Función que será llamada cuando el usuario elija la opción de sumarse a un partido.

### ARCHIVOS SQL - PROYECTO_fINAL/BASE DE DATOS/

Aquí encontraremos el archivo principal de la base de datos 'base app_canchas.sql'. En este se concentra la base de datos necesaria para el funcionamiento de la aplicación.

### FUNCIONALIDAD DE LA APLICACIÓN

Detalle del funcionamiento de la aplicación: 

* En primera instancia, al ingresar a la app, el usuario tendrá tres opciones para elegir. Estas serán, ingresar si ya está registrado '**Si TENES un USUARIO**', otra para registrarse '**Si QUERES un USUARIO**', o de ingresar como invitado '**Entrar como INVITADO**'. 

**Ingresando ya REGISTRADO** 
Al ingresar ya registrado, al usuario se le mostrarán dos opciones, la de **'Alquilar una cancha'** o de **'Sumarse a un partido'**, al seleccionar la primera, se le preguntará de qué capacidad es la cancha que está queriendo alquilar, acá se mostrarán las opciones de 5, 7 y 11 jugadores, cada una con un precio diferente. Al elegir una de las opciones le pedirá ingresar el la fecha del día en que le interesa alquilar, luego se le mostrarán los horarios correspondientes a ese día y cada uno con un id de elección diferente, se elige uno con el id. Acá nos preguntará si los equipos están completos, en caso de estar completos se mostrará una pantalla con los datos del partido en donde deberá confirmar la reserva. En caso de que los equipos NO estén completos se le preguntará si quiere dejar el partido abierto a que se sumen otros usuarios. 
En la segunda opción, la de sumarse a un partido, directamente se le mostrarán las opciones que tiene disponibles y al elegir una de ellas se pasará a la pantalla de confirmación, donde al confirmar se le imprimirá un mensaje diciendo que su solicitud fue enviada con éxito y que se le notificará cuando el organizador del partido la acepte.

**Ingresando como INVITADO**

Al ingresar como "Invitado", el usuario podrá interactuar con la aplicación simplemente ingresando su DNI y sin necesidad de dejar otros datos, tendrá una sola opción a elegir y será la de 'Sumarse a un partido'. 

**Para poder organizar un partido debe registrarse.* 

**Ingresando como ADMINISTRADOR**

Para ingresar en rol de "Administrador", el usuario debe ingresar con un usuario en particular, y este tendrá dos opciones a elegir: 

La primera, *Actualizar horarios*, será para que este pueda administrar los horarios del predio.

La segunda, *Actualizar precios*, será para que pueda actualizar los precios del predio. 

**Se asume que el administrador es el dueño/encargado del predio.*

**REGISTRARSE**

Una opción para el usuario que ingresa por primera vez a la aplicación y quiere disfrutar de todos los beneficios y opciones que tenga, esta es la de "Registrarse". En esta opción se podrán registrar diversos datos que se consideren relevantes para la interacción con la aplicación.

### COMO HACER QUE EL PROGRAMA FUNCIONE CORRECTAMENTE

En primera instancia vamos a necesitar tener instalado el sistena de gestión de base de datos MySQL, luego de este debemos instalar el complemento para la conexión con el entorno de desarrollo, este lo hacemos desde la terminal usando 'pip install mysql-connector-python'. 
Luego de tener nuestro SGBD y el complemento instalado, debemos importar la base de datos. Para eso ingresamos a MySQL Workbench 8.0, aquí crearemos una nueva base de datos y sobre ella importaremos el archivo 'base app_canchas-sql'. Una vez hecho esto nos dirigimos a nuestro entorno de desarrollo, en el archivo 'Conexion_desconexion.py' ingresamos nuestros datos de MySQL, como user, password y el nombre de la base de datos que acabamos de crear. Luego de esto ya podremos usar la aplicación eficazmente.

Para ingresar y probar la aplicación hemos creado un usuario genérico, este es 'test_socio' y la contraseña es '1234', con esto será suficiente para probar las funcionalidades de la aplicación de 'Alquilar una cancha' o 'Sumarse a un partido'.
Para ingresar en rol de administrador y probar las funcionalidades de 'Modificar precios' o 'Modificar turnos' debemos ingresar con el usuario 'fcordoba' y la contraseña '123456'.
Y para ingresar como invitado solo es necesario colocar el dni.

**En caso de un error en la importación de la base de datos, se recomienda cambiar el tipo de codificación de caracteres 'utf8mb4_0900_ai_ci' a 'utf8mb4_general_ci' o 'utf8mb4_unicode_ci'. Aunque no debería haber ningún problema.*

### COLABORADORES

**-------- INTEGRANTE 1 ---------**

**Nombre**: Elías Valentin

**Apellido**: Valdez

**DNI**: 42440560

**Correo**: elias.ol333@gmail.com

**Link GitHub**: https://github.com/eliasvalentinb

**-------- INTEGRANTE 2 ---------**

**Nombre**: Anibal Federico

**Apellido**: Cordoba Hereñu

**DNI**: 29208191

**Correo**:federico.cordoba.ispc@gmail.com

**Link GitHub**: https://github.com/fede-cordoba-Ispc

**-------- INTEGRANTE 3 ---------**

**Nombre**: Federico

**Apellido**: Sánchez Carabajal

**DNI**: 37476913

**Correo**: fede.carabajals@gmail.com

**Link GitHub**: https://github.com/fedeSanchezC

**-------- INTEGRANTE 4 ---------**

**Nombre**: Herman Federico Daniel

**Apellido**: Aguilar

**DNI**: 34349529

**Correo**: aguilar.hfd@gmail.com

**Link GitHub**: https://github.com/HermanAguilar

**-------- INTEGRANTE 5 ---------**

**Nombre**: Franco Andres

**Apellido**: Molina

**DNI**: 41152795

**Correo**: francomolina155@gmail.com

**Link GitHub**: https://github.com/Frankin98
