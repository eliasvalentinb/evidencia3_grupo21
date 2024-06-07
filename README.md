### SEJUEGA! ###

En esta ocasión, un predio de canchas de fútbol nos pidió que hagamos una aplicación para que sus clientes interactúen directamente desde ella. Teniendo distintas posibilidades de alquilar y jugar en las canchas sin necesidad de que haya un contacto directo.

El objetivo principal de la aplicación es satisfacer a un usuario la necesidad de jugar al fútbol. El mismo, con un usuario y una clave, ingresa en la aplicación donde, en primera instancia, le consulta si desea crear un partido como anfitrión o unirse a un partido donde falten jugadores. En caso de elegir la primera opción, se le mostrarán los días y horarios disponibles para reservar el turno. En caso de elegir la segunda opción, se le mostrarán los días y horarios disponibles de partidos que no hayan llenado la capacidad de la cancha, y al elegir se le mostrará un mensaje diciendo que al confirmar el anfitrión del partido la solicitud se le enviará un mensaje de confirmación.

Por otro lado, existirá también una opción de ingreso para el usuario administrador del predio, que tenga control sobre distintos datos relevantes del momento. 

El proyecto está organizado en siete archivos Python (`.py`), cada uno de los cuales contiene diferentes partes de la funcionalidad de la aplicación.

### ARCHIVOS FUENTE 

1. **principal.py**
   - Este es el archivo principal que ejecuta la aplicación. Contiene el menú principal y la lógica para navegar entre las distintas opciones de la aplicación. Utiliza funciones definidas en otros módulos.
   - Las funciones en este módulo son:
      * *'menu_principal()'*: Función que contiene las opciones principales con las que el usuario tendrá la primera interacción la ingresar a la app.
      * *'main()'*: Función que controla el flujo del programa.
2. **usuario_jugador.py**
   - Contiene la definición de una de las funciones que son llamadas desde el 'principal.py'. 
   - *'menu_jugador()'*: Función que será llamada cuando el usuario elija ingresar con el perfil de jugador. La misma mostrará las opciones que tiene el usuario en la primera interacción con el programa.

3. **opciones_jugador.py**
      - Contiene la definición algunas de las funciones que son llamadas desde el 'principal.py'.
      - Este módulo contiene las cuatro funciones que refieren a las princpiales opciones que tendrá el usuario jugador después de haber iniciado sesión. Son las siguientes:
         * *'organizar_partido()'*: Función que será llamada cuando el usuario elija la opción de organizar un partido como anfitrión. Actualmente, solo imprime un mensaje indicando la selección.
         * *'buscar_partido()'*: Función que será llamada cuando el usuario elija la opción de buscar y sumarse a un partido disponible. Actualmente, solo imprime un mensaje indicando la selección.
         * *'modificar_datos()'*: Función que será llamada cuando el usuario elija la opción de modificar los datos de su cuenta. Actualmente, solo imprime un mensaje indicando la selección.
         * *'eliminar_cuenta()'*: Función que será llamada cuando el usuario elija la opción de eliminar la cuenta. Actualmente,solo imprime un mensaje indicando la selección.

4. **usuario_admin.py**
     - Contiene la definición de una de las funciones que son llamadas desde el 'principal.py'. 
      - *'menu_admin()'*: Función que será llamada cuando el usuario elija ingresar con el perfil de administrador. Este usuario tendrá el permiso de modificar precios y horarios del predio.

5. **opciones_admin.py**
      - Contiene la definición algunas de las funciones que son llamadas desde el 'principal.py'.
      - Este módulo contiene las dos funciones que refieren a las princpiales opciones que tendrá el usuario administrador después de haber iniciado sesión. Son las siguientes:
         * *'actualizar_horarios()'*: Función que será llamada cuando el usuario administrador elija la opción de actualizar los horarios del predio.
         * *'actualizar_precios()'*: Función que será llamada cuando el usuario administrador elija la opción de actualizar los precios del predio. Actualmente, solo imprime un mensaje indicando la selección. 

6. **usuario_invitado.py**
      - Contiene la definición de una de las funciones que son llamadas desde el 'principal.py'.
      - *'usuario()'*: La única opción que tendrá este tipo de usuario será la de buscar un partido al que sumarse sin necesidad de registrar sus datos en la app, no tendrá la opción dem organizar partidos. Actualmente, solo imprime un mensaje indicando la selección.
      
   
7. **mody_register.py**
      - Contiene la definición de una de las funciones que son llamadas desde el 'principal.py'.
         * *'menu_registro()'*: Función que será llamada cuando el usuario elija la opción de registrarse sin aún no lo ha hecho. Actualmente, solo imprime un mensaje indicando la selección.


### FUNCIONALIDAD DE LA APLICACIÓN

Detalle del funcionamiento de la aplicación: 

* En primera instancia, al ingresar a la app, el usuario tendrá cuatro opciones para elegir dependiendo de su rol. Estas serán, ingresar en rol de "Jugador", otra en rol de "Administrador", en rol de "Invitado" y para registrarse en caso de no haberlo hecho aún. 

**Ingresando como JUGADOR** 

Al ingresar en rol de "Jugador" el usuario tendrá cuatro opciones a elegir: 

La primera, *Organizar un partido*, esta opción será para que el usuario pueda crear un partido como anfitrión, haciendo de este como "Privado" o "Público" si desea que se le muestre a otros jugadores que busquen sumarse a un partido". 

La segunda, *Buscar un partido*, esta opción será para que el usuario pueda buscar un partido dsponible al cual pueda sumarse. En este caso, deberá enviar una solicitud y esperar a que el anfitrión del partido la confirme para poder participar.

La tercera, *Modifcar datos*, esta opción será para que el usuario pueda actualizar los datos de su cuenta.

La cuarta, *Eliminar cuenta*, esta opción será si el usuario desea eliminar su cuenta y sus datos de la aplicación.

**Ingresando como ADMINISTRADOR**

Al ingresar en rol de "Administrador", el usuario tendrá dos opciones a elegir: 

La primera, *Actualizar horarios*, será para que este pueda administrar los horarios deñ predio.

La segunda, *Actualizar precios*, será para que pueda actualizar los precios del predio. 

**Se asume que el administrador es el dueño/encargado del predio.*

**Ingresando como INVITADO**

Al ingresar como "Invitado", el usuario podrá interactuar cojn la aplicación sin necesidad de registrar sus datos, tendrá una sola opción a elegir, será la de 'Buscar un partido'. Para poder organizar uno debe registrarse. 

**REGISTRARSE**

Una opción para el usuario que ingresa por primera vez a la aplicación y quiere disfrutar de todos los beneficios y opciones que tenga esta es la de "Registrarse". En esta opción se podrán registrar diversos datos que se consideren relevantes para la interacción con la aplicación.

**Las opciones dentro de este menú las expandiremos en el proyecto final.*

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

**Nombre**: Leandro Manuel

**Apellido**: Quiroga Perez

**DNI**: 40386818

**Correo**: quirogaleandromanuel@gmail.com

**Link GitHub**: https://github.com/LeandroQuiroga7

**-------- INTEGRANTE 5 ---------**

**Nombre**: Herman Federico Daniel

**Apellido**: Aguilar

**DNI**: 34349529

**Correo**: aguilar.hfd@gmail.com

**Link GitHub**: https://github.com/HermanAguilar

**-------- INTEGRANTE 6 ---------**

**Nombre**: Franco Andres

**Apellido**: Molina

**DNI**: 41152795

**Correo**: francomolina155@gmail.com

**Link GitHub**: https://github.com/Frankin98
