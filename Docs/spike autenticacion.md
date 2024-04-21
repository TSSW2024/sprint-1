# Documentación

## ¿Qué es el token web JSON?

JSON Web Token (JWT) es un estándar abierto que define una forma compacta y autónoma de transmitir información de forma segura 
entre partes como un objeto JSON. Esta información se puede verificar y confiar porque está firmada digitalmente. 
Los JWT se pueden firmar usando un secreto o un par de claves pública/privada usando RSA o ECDSA. Básicamente es una estructura 
de datos que contiene información que es codificada usando algoritmos de firma criptográfica.
Aunque los JWT se pueden cifrar para proporcionar también secreto entre las partes, nos centraremos en los tokens firmados. 
Los tokens firmados pueden verificar la integridad de los reclamos contenidos en ellos, mientras que los tokens cifrados ocultan 
esos reclamos a otras partes. Cuando los tokens se firman utilizando pares de claves pública/privada, la firma también certifica
que solo la parte que posee la clave privada es la que la firmó.

## ¿Cuándo debería utilizar tokens web JSON?

A continuación se muestran algunos escenarios en los que los tokens web JSON son útiles:

- **Autorización:** este es el escenario más común para usar JWT. Una vez que el usuario haya iniciado sesión, cada solicitud 
posterior incluirá el JWT, lo que permitirá al usuario acceder a rutas, servicios y recursos permitidos con ese token. 
El inicio de sesión único es una característica que JWT utiliza ampliamente hoy en día, debido a su pequeña sobrecarga y su 
capacidad para usarse fácilmente en diferentes dominios.

## ¿Cómo funcionan los tokens web JSON?

En la autenticación, cuando el usuario inicia sesión correctamente con sus credenciales, se devolverá un token web JSON. 
Dado que los tokens son credenciales, se debe tener mucho cuidado para evitar problemas de seguridad. En general, no debes 
conservar los tokens más tiempo del necesario.

### Ventajas:

- **Seguridad:** Los JWT pueden ser firmados digitalmente, lo que garantiza la integridad de los datos. 
También pueden ser cifrados para mayor seguridad.
- **Escalabilidad:** Los JWT son ligeros y fáciles de transportar, lo que los hace ideales para entornos distribuidos o 
microservicios.
- **Mantenimiento:** Una vez emitidos, los JWT no requieren almacenamiento en el servidor, lo que simplifica el mantenimiento.
Esto quiere decir que el servidor no necesita almacenar información adicional sobre ese token, ya que los JWT son estructuras 
autocontenidas, que llevan la información necesaria para validar al usuario.

### Desventajas:

- **Persistencia:** Los JWT son válidos hasta que expiren, lo que puede ser un problema si un token es comprometido ya que
  recordemos el token es una firma digital y cualquier firma se puede falsificar. Mientras más tiempo esté activo el token,
  más posibilidades hay de obtenerlo o falsificarlo.
- **Tamaño:** A medida que se agregan más reclamos al JWT, su tamaño puede aumentar, lo que puede afectar el rendimiento de
  las solicitudes HTTP.

## Sesiones:

Las sesiones son una herramienta fundamental en el desarrollo web para mantener el estado de autenticación y la infor
mación del usuario a través de múltiples solicitudes HTTP. A diferencia de las cookies tradicionales, que son simplemente datos 
almacenados en el navegador del cliente, las sesiones utilizan una combinación de cookies y almacenamiento en el servidor para 
proporcionar una capa adicional de seguridad y control.

### Funcionamiento:

Cuando un usuario inicia sesión en una aplicación web, el servidor autentica las credenciales del usuario y, si son válidas, 
crea una sesión única asociada con ese usuario. Esta sesión se almacena en el servidor y se identifica mediante un identificador
de sesión único.

Al mismo tiempo, se envía una cookie al navegador del usuario que contiene el identificador de sesión. 
Esta cookie se utiliza para identificar al usuario en cada solicitud subsiguiente. El identificador de sesión no contiene
información sensible y solo se utiliza para vincular al usuario con su sesión en el servidor.

Cuando el navegador del usuario realiza una solicitud al servidor, como acceder a una página o enviar datos de formulario, 
incluye automáticamente la cookie de sesión en la solicitud. El servidor utiliza esta cookie para recuperar la sesión 
correspondiente del almacenamiento en el servidor y cargar el estado de autenticación y la información del usuario asociada.

### Seguridad:

Una de las principales ventajas de las sesiones es su seguridad inherente. Al almacenar la información de la sesión en 
el servidor, en lugar de en el navegador del cliente, se reduce el riesgo de exposición de datos confidenciales. Además,
las cookies de sesión suelen estar configuradas con atributos de seguridad como HTTP Only y Secure, lo que las hace
menos susceptibles a ataques como la suplantación de sesiones (session hijacking) y el robo de cookies.

### Tiempo de Vida de la Sesión:

Es importante configurar adecuadamente el tiempo de vida de las sesiones para equilibrar la seguridad y la comodidad del usuario.
Las sesiones pueden configurarse para expirar después de un período de inactividad o después de un tiempo predeterminado, lo 
que ayuda a mitigar el riesgo de sesiones inactivas y a proteger la privacidad del usuario.

### Gestión de Sesiones en el Backend:

En el backend, el servidor es responsable de gestionar las sesiones de los usuarios, incluyendo la creación, actualización y 
eliminación de sesiones según sea necesario. Esto puede implicar el almacenamiento de información de sesión en una base de datos
o en memoria, dependiendo de los requisitos de la aplicación y el rendimiento deseado.

#### Ventajas:

- Son fáciles de implementar y entender en aplicaciones monolíticas.
- Permiten un control granular sobre el tiempo de vida de la sesión y la gestión de usuarios autenticados.

#### Desventajas:

- Pueden ser difíciles de escalar en aplicaciones distribuidas o microservicios.
- Requieren almacenamiento en el servidor para mantener el estado de la sesión, lo que puede afectar la escalabilidad.

## OAuth2.0

OAuth2.0 es un método de autenticación de Apis que permite compartir información entre sitios sin compartir la identidad. 
Un ejemplo en el que este método de autenticación puede servir es cuando en una página te piden ingresar tu usuario y
contraseña, y te dan la opción de ingresar con Google, Facebook, etc.

En este método de autenticación existen 4 roles:

- **Dueño del recurso:** es el propietario que da la autorización a una aplicación, para acceder a su cuenta. Se les llama dueños
  ya que los datos que maneja la API son suyos. El acceso a la cuenta se limita al alcance de la autorización otorgada, por
  ejemplo, una autorización de lectura le permite a la aplicación leer la información de la red social que hayas seleccionado
  para rellenar los espacios en blanco con sus datos respectivos en caso de que sea para registrarse en una página.

- **Cliente:** es la aplicación que desea acceder a la cuenta de usuario. Antes de que pueda hacerlo, debe ser autorizado por
  el usuario, y dicha autorización debe ser validada por la API.

- **Servidor de recursos protegidos:** será nuestra API, el servidor que aloja el recurso protegido al que queremos acceder.
  Puede formar parte de la misma aplicación que el servidor de autenticación.

- **Servidor de autorización:** es el responsable de gestionar las peticiones de autorización, verifica la identidad de los
usuarios y emite tokens de acceso a la aplicación cliente. En muchas ocasiones estará implementado por un tercero y puede formar
parte de la misma aplicación de recursos protegidos.

### ¿Cómo funciona?

El dueño del recurso desea ingresar a una página web a través de una API, por ejemplo, Google. Luego de registrarse, dicen que
el último paso es verificar su correo, en ese momento le llega un código al Gmail, que tiene que ingresar en la página web.
La página web compara ese código con el token que le dieron y si son iguales, la página crea tu cuenta o te deja ingresar a su
contenido.

#### Ventajas:

- Proporciona un marco estándar para la autenticación y autorización en aplicaciones web y móviles.
- Permite a los usuarios conceder acceso selectivo a sus recursos protegidos sin compartir sus credenciales.

#### Desventajas:

- Puede ser complejo de implementar y entender, especialmente para aplicaciones pequeñas o simples.
- Requiere una infraestructura adicional para el servidor de autorización y la gestión de tokens.

### Opción más adecuada:

Ok, ahora viendo las características, ventajas y desventajas de cada una, vamos a ver cuál de todas las opciones de autenticación
se ajusta mejor a nuestra página web. Primero que nada, el método de sesiones quedaría descartado ya que si bien se puede
manejar en Go, la mejor forma de usar este método es PHP y, por ende, no se puede encontrar mucha información sobre cómo manejar
este método en Go.

El método de JWT es un método que se puede usar en Go, pero que puede ser vulnerado si se tiene el token activo por mucho tiempo.
Además, si se quiere ingresar a la cuenta con APIs de terceros, este método no sirve de mucho.

Por último, está el método OAuth2.0. Siento que este método es el más indicado ya que si se quiere añadir una API para que
se pueda ingresar con Facebook o Gmail (que creo es lo que buscan), esta es la opción más segura y adecuada para estos casos 
ya que el método de verificación es mucho más complejo que los anteriores y, por ende, más seguro. Sin embargo, al mismo tiempo
es el más difícil de implementar. Por lo tanto, en caso de que no se quieran añadir las APIs para ingresar a través 
de terceros, lo mejor sería utilizar el método JWT. Bajo mi punto de vista, si se quiere crear una página web completa y 
con métodos de autenticación seguros, lo mejor será usar OAuth2.0.

El método OAuth2.0 tiene distintos flujos de autenticación:

- **Flujo de Autorización de Código:** Este flujo es utilizado por aplicaciones web server-side. El proceso comienza con la
redirección del usuario al servidor de autorización, donde el usuario proporciona su consentimiento para que la aplicación
acceda a sus datos. El servidor de autorización responde con un código de autorización que la aplicación intercambia por un
token de acceso y un token de actualización en el servidor de autorización. En términos simples, es cuando se quiere ingresar a
una página y antes de ingresar te nombran una lista con la información a la que van a acceder y se debe apretar en permitir.

- **Flujo Implícito:** Este flujo es utilizado por aplicaciones de cliente, como las aplicaciones de una sola página, que se
ejecutan en el navegador del usuario. En este flujo, el token de acceso se proporciona directamente al cliente como parte de
la respuesta de redirección del servidor de autorización, sin pasar por el paso intermedio de obtener un código de autorización.
Este flujo es considerado como el menos seguro ya que el token se transmite directamente a través del navegador del usuario y
esto puede traer problemas de seguridad como, por ejemplo, que el token quede expuesto en el historial del navegador. También está
 el hecho de que el token tenga una duración indefinida, ya que aumenta el riesgo de que sea interceptado.

- **Flujo de Credenciales de Cliente (Client Credentials Grant):** Este flujo es utilizado por aplicaciones de servicios backend
que necesitan acceder a recursos protegidos en su propio nombre (es decir, sin implicar a un usuario final).
La aplicación envía sus propias credenciales (ID de cliente y secreto) al servidor de autorización y recibe un token de acceso que
puede usar para acceder a los recursos protegidos. Este flujo se suele utilizar, por ejemplo, en las webs donde tienen que hacer
transacciones ya que al recibir un token de acceso puede acceder a los recursos protegidos sin que el trámite sea tan tardado.

- **Flujo de Contraseña (Resource Owner Password Credentials Grant):** Este flujo permite que las aplicaciones soliciten
  tokens de acceso en nombre de un usuario, utilizando el nombre de usuario y la contraseña del usuario. Este flujo es menos
  seguro que otros flujos, ya que requiere que la aplicación obtenga y maneje las credenciales de usuario directamente,
  lo que puede ser riesgoso.

Estos flujos de autenticación permiten a las aplicaciones interactuar con los servidores de autorización de manera segura y 
eficiente, adaptándose a una variedad de escenarios de uso y requisitos de seguridad. Es importante seleccionar el flujo 
de autenticación adecuado para tu aplicación según sus necesidades específicas y el nivel de confianza entre los distintos 
componentes del sistema.

### Conclusión del flujo:
esta spike proporciona una guía detallada para la implementación del servicio de autenticación en el backend de nuestra 
aplicación, con un enfoque en la selección y justificación de la opción más adecuada, OAuth 2.0. El plan de implementación 
establece los pasos necesarios para llevar a cabo esta tarea, y las pruebas de concepto asegurarán la viabilidad y el 
rendimiento de la solución seleccionada.
