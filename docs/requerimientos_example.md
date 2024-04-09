# Historias de Usuario Sprint 08-04-2024
## Este es un documento que se creó en conjunto durante una reunión del Managament Team. Será refinado y estructurado para separarse por issues y asignárselas a cada compañero de trabajo.
# Vista de Inicio de Sesión y Registro de Usuario (Login)
## Inicio de sesión
* Corresponde a una vista (Scaffold) en donde viven cuatro elementos:
     - [ ] **TextField**: Username
     - [ ] **TextField**: Password
     - [ ] **Button**: Submit
     - [ ] **Text**: Olvidaste tu contraseña
 - **Función Login**: es una función que permite validar a un usuario de prueba, por ahora sólo es una condición (**if-else**) para validar a un usuario de prueba tal como ***admin@utem.cl*** y ***12345*** como password. Si pasa la prueba. ***se redireccionará a la vista **Home*****. 
    ```js
        function validate(user, password){
            if(user === "admin@utem.cl"){
            if(password == "12345"){
                return true;
                }
            }
            return false;
        }
    ```
> Ejemplo básico de uso en Javascript de una sentencia if-else.
## Feature (Frontend): Registro de usuario
* Registro de usuario es una vista que cuenta con un formulario.
    ### Formulario
    - Formulario es un componente que cuenta con distintos campo de texto **TextField** que rellenar, a continuación se detallan:
    - [ ] **TextField**: Nombre
    - [ ] **TextField**: Correo electrónico ***(validación)***
    - [ ] **TextField**: Contraseña
    - [ ] **DatePicker**: Fecha de nacimiento
    - [ ] **TextField**: Número de documento
    - [ ] **Términos y Condiciones**: es un **Text** que al clickear despliega un ***overlay*** o ***flotante*** que muestra los términos y condiciones. Por ahora se espera un texto cualquiera como por ejemplo ***Lorem ipsum***.
    - [ ] **Buton**: Es el botón para confirmar el registro, por ahora se espera que guarde el objeto que se construye en el formulario y lo imprima en consola. 
        ```js
        const data = {
            name: "John Doe",
            email: "johny@foo.cl",
            password: "5f4dcc3b5aa765d61d8327deb882cf99"
            date: April 1, 2024 15:30:00 UTC,
            rut: "1234567-8",
            acceptTerms: true
        }
        ```
    > Observación:  La password podría estar hasheada por temas de seguridad.
    * Detalles de Términos y condiciones:
        - [ ] Al hacer click en el **Text** que es simple, renderizará un overlay.
        - [ ] El overlay se compone de un texto largo, por ejemplo ***Lorem ipsum...*** y en la parte inferior un botón para confirmar los términos.
        - [ ] Se deberá manejar una variable **isAccepted** que maneje el estado ***true-false*** de aceptar o no los términos.


## Olvidaste tu contraseña
* Olvidaste tu contraseña es un **text** que vive en la ***vista de Login***. Al clickearlo tiene sus propias características las cuales se detallan aquí:
    *  Abre un **modal** en el cual se pide lo siguiente:
        1. [ ] **TextField**: Correo electrónico, solicita el correo electrónico para enviarle la restauración de contraseña.
        2. [ ] **Button**: botón de confirmar, que previamente valida el correo y envía la restauración.
        3. [ ] **Funcion**: función que valide el correo, por ahora, en estado de prueba, se espera una función del tipo **(if-else)**, que compruebe que el correo sea uno de prueba nada más ***admin@utem.cl***, si el correo es este mostrará un componente ***MensajeExitoso*** y sino, ***MensajeFracaso***.
            ```js
            function myFunction(email) {
                if(email === "admin@utem.cl"){
                return true;
            }
            return false;
            }
            ```
            > Ejemplo básico de uso en Javascript de una sentencia if-else.
    * [ ] **Mensaje exitoso**: Es un pequeño componente que cuenta con una UI que representa el caso de éxito. Se espera un icono, un mensaje ***y podría tener una animación.***
    * [ ] **Mensaje fracaso**: Es un pequeño componente que cuenta con una UI que representa el caso de fracaso. Se espera un icono, un mensaje ***y podría tener una animación.***

## Spikes
- ### Se harán investigaciones correspondientes para avanzar pensando en el desarrollo continuo y la implementación continua para lograr avances en el segundo sprint.
    - ### Backend:
        - [ ] Cómo implementar un servicio de Autenticación?
        - [ ] Cuál usaremos?
    - ### Frontend:
        - [ ] Qué es un componente flotante **modal**?
        - [ ] Qué es un **overlay**?
        - [ ] Implementaciones básicas, **ejemplos**.

# Vista principal: (Home)
* El home se compone de un Scaffold  con 5 componentes, se detallarán por separado para dividir responsabilidades. Estos componentes viven en el Scaffold Home, se distribuyen en una columna, y todos usan el ancho de la pantalla. A continuación se enumeran y detallan requerimientos:
    1. **TopBar**: es un componente que contiene 3 elementos esenciales:
        1. [ ]  **Icono de la App**, redirecciona a la vista **Ajustes**.
        2. [ ] **Icono de Lupa**, redirecciona a la vista **BuscarMonedas**
        3. [ ] **Icono de AboutUS**, redirecciona a la vista **AboutUs**
    2. **Saldo**: es un componente el cual informa al usuario su **Saldo Total**.
        1. [ ] **Text**: título, debe decir "Saldo Total"
        2. [ ] **Icon**: debe contar con un ícono que **togglea** con otro, pueden utilizar alguna librería de iconos como FontAwesome. 
            - [ ] El **click** del ícono hace que cambie el icono de ser el (***eye***) a (***eye slash***)
            - [ ] También maneja un estado ***isVisible***, por ejemplo, que ayuda a la dependencia del saldo para visualizarse.
        3.  [ ] **Text**: Saldo, corresponde a ver el saldo, si el estado ***isVisible*** es *false*, por ejemplo el estado debería verse, visualmente como __********__. Sino, se visualizará el saldo como tal, formateado a la moneda chilena ***(por ahora)***.
        4.  [ ] **Button**: Botón Depositar: es un botón que te redirige a la vista __Depositar__. 
    5.  __Recomendaciones__: es un componente que indica al usuario ciertas sugerencias, descuentos, promociones provenientes de la marca. 
        _Esto lo entregaría eventualmente el servidor, por ahora se trabajará con un **mockup**_.
        1. [ ]  **Text**: Título del anuncio
        2. [ ]  **Text**: Subtítulo
        3. [ ] **Icon**: El icono
        4.  La distribución de estos elementos es la siguiente:
            1. [ ] Título, Subtítulo y Icono, están en un **contenedor** como **filas**.  
            1. [ ] Título y Subtítulo están en un **contenedor**, como **columnas** y ocupan el 80% del **ancho**. 
            2. [ ] Icono ocupa el 20% restante
        * _Sugerencia de uso_: podría pensarse, que el **servidor** *eventualmente* entregará esta información envuelta en un array de objetos, para así facilitar el mapeo del **Slider**, como por ejemplo:
         ```js
        const  data = 
        [
            {
                "titulo": "¡No gastes de más!",
                "subtitulo": "Aprovecha esta promoción",
                "icono": "http://google.com/images/icono1.png"
            },
            {
                "titulo": "¡Descuento especial!",
                "subtitulo": "Solo por tiempo limitado",
                "icono": "http://google.com/images/icono2.png"
            },
            {
                "titulo": "¡Oferta exclusiva!",
                "subtitulo": "No te lo pierdas",
                "icono": "http://google.com/images/icono3.png"
            }
        ]
        ```
        > Supuesta repuesta de un servidor, se sugiere y requiere, que actualmente trabajen con un esquema así, para luego reemplazarlos por la verdadera respuesta del server.
        
    4. **ListaMonedas**: es el componente principal del home, el cual se sirve de la información que entrega el servidor, y la renderiza en un listado de elementos, o también podría decirse, una tabla de una sóla fila, distribuida en columna. Cuenta con los siguientes requisitos:
        1. [ ] Filtros en la parte superior: cuenta con una barra _TopBar_ en la parte superior del componente que refiere a los filtros de la tabla. Por ahora se esperan 3 filtros, escritos como texto, pero no su lógica:
            * [ ] Top
            * [ ] Top decliners
            * [ ] Nuevos

        2. Debajo de los filtros,se renderizarán los elementos como lista. Los elementos corresponden a tres elementos: 
            * [ ] **Text**: corresponde al nombre de la moneda.
            * [ ] **Text** corresponde al valor de la moneda.
            * [ ] **Text** corresponde al ratio de cambio.
        * _Sugerencia de uso_: podría pensarse, que el **servidor** *eventualmente* entregará esta información envuelta en un array de objetos, para así facilitar el mapeo de la **Lista**, como por ejemplo:
        ```js
        const data = [
            {
                "moneda": "BTC",
                "value": 69350.08,
                "ratio": -1.0900
            },
            {
                "moneda": "ETH",
                "value": 2350.67,
                "ratio": 0.7600
            },
            {
                "moneda": "LTC",
                "value": 182.54,
                "ratio": 2.1500
            }
        ]
        ```
        [Aquí hay un ejemplo con este mockup en Svelte](https://github.com/SmnZin/example)
    5. __Navbar__: es el componente que permanece en todas las vistas principales ___(no sólo en Home)___. Cuenta con tres elementos, que deberán tener un icono y un título, por ellos se puede navegar, se espera que las tres vistas también estén, pero en blanco. Las vistas e iconos para el **navbar** son los siguientes:
        1. [ ] Mercado (Gráfico de Barras)
        2. [ ] Descubrir (Diamante)
        3. [ ] Carteras (Icono de Billetera)

> Observación: se pide en más de un requisito redireccionar a vistas que no se mencionan, lo único que se pide hacer en esas vistas es crearla, que esté en blanco y que tenga un título dentro de ella con su nombre.        



## Spikes
- ### Se harán investigaciones correspondientes para avanzar pensando en el desarrollo continuo y la implementación continua para lograr avances en el segundo sprint.
    - ### Backend:
        - [ ] Servir la información en un servicio Backend.
        - [ ] Consumo de API.
        - [ ] Creación de una API Rest para la comunicación para el frontend.
       
    - ### Frontend:
        - [ ] Qué es un slider?
        - [ ] Ejemplos de uso de Slider en Flutter
        - [ ] Reactividad y carga dinámica de datos

