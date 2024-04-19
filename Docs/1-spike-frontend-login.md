# Conceptos y Ejemplos de Componentes Flotantes en el Frontend

## Que es un un componente flotante modal y como se utiliza en el Frontend

Un componente flotante modal es un elemento de la interfaz de usuario que se superpone en la pantalla principal para mostrar información adicional o solicitar una acción específica al usuario. Estos modales son "flotantes" en el sentido de que aparecen encima del contenido existente sin afectarlo directamente. Son muy comunes en el desarrollo frontend para mostrar mensajes de confirmación, formularios de ingreso de datos, detalles de productos, etc.

## Ejemplo de aplicacion en Dart:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal de Flutter'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Mostrar el modal cuando se hace clic en el botón
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Este es un modal'),
                  content: Text('Aquí puedes poner tu contenido modal.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Cerrar el modal
                        Navigator.of(context).pop();
                      },
                      child: Text('Cerrar'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Mostrar Modal'),
        ),
      ),
    );
  }
}

```
>Este codigo crea una aplicación Flutter simple con un botón. Cuando se hace clic en el botón, se muestra un modal utilizando el widget showDialog. El contenido del modal está definido dentro del constructor builder. El modal contiene un título, un contenido y un botón para cerrarlo.

## Overlays y sus aplicaciones

El concepto de overlay se refiere a una capa visual que se superpone en la interfaz de usuario existente para mostrar información adicional o proporcionar funcionalidad específica sin afectar directamente al contenido principal. Los overlays son útiles para mostrar elementos temporales, como modales, notificaciones, menús desplegables, pop-ups, etc. Se utilizan comúnmente en el desarrollo de interfaces de usuario para mejorar la experiencia del usuario y proporcionar interacciones contextuales.

Las aplicaciones mas comunes, aparte de los flotantes modales, son los siguientes

* Notificaciones: Los overlays se pueden utilizar para mostrar notificaciones temporales, como mensajes de éxito, advertencias o errores. Estas notificaciones pueden aparecer en la parte superior o inferior de la pantalla y desaparecer automáticamente después de un tiempo determinado.
* Menús desplegables: Tambien se utilizan para mostrar menús desplegables que contienen opciones adicionales o acciones disponibles para el usuario. Estos menús pueden aparecer cuando se hace clic en un botón o icono específico y proporcionar funcionalidades como compartir, eliminar, editar, etc.
* Pop-ups de ayuda o información:Y por ultimo, se pueden utilizar para mostrar información adicional o proporcionar ayuda contextual al usuario cuando sea necesario. Estos pop-ups pueden aparecer al hacer clic en un elemento específico o al realizar ciertas acciones.

## Ejemplos de implementaciones basicas de componentes flotantes.

*Formulario de inicio de sesión/modal de registro: Puedes utilizar un modal para mostrar un formulario de inicio de sesión o de registro cuando un usuario hace clic en un botón "Iniciar sesión" o "Registrarse".

![Formulario de inicio de sesion](https://www.esthersola.com/wp-content/uploads/2020/10/screenshot-2-1024x780.jpg)
>Ventana modal para un formulario de login.

* Notificación emergente de cookies: Puedes utilizar un overlay para mostrar una notificación emergente sobre el uso de cookies y obtener el consentimiento del usuario.
![Notificacion sobre cookies](https://notiffy.io/wp-content/uploads/2020/08/notificacion-cookie.jpg)
>Widget de ejemplo de como se veria una notificaion relacionada al uso de cookies.

*Menu desplegable en un Comericio Electronico: Se puede usar un menú desplegable en la parte superior o en el lateral que muestra las diferentes categorías de productos disponibles, como "Ropa", "Electrónica", "Hogar y Jardín", etc. Al hacer clic en una categoría específica, se despliegan subcategorías o se muestra una lista de productos dentro de esa categoría.

```HTML
<nav>
  <ul>
    <li><a href="#">Inicio</a></li>
    <li>
      <a href="#">Categorías</a>
      <ul>
        <li><a href="#">Ropa</a></li>
        <li><a href="#">Electrónica</a></li>
        <li><a href="#">Hogar y Jardín</a></li>
        <!-- Otras categorías -->
      </ul>
    </li>
    <li><a href="#">Ofertas</a></li>
    <li><a href="#">Contacto</a></li>
  </ul>
</nav>
```
>Codigo de ejemplo de un menu desplegable en HTML

## Ventajas y desventajas de diferentes enfoques y bibliotecas para la creación de componentes flotantes.
### Uso de widgets y componentes nativos de Flutter
Ventajas:
* Rendimiento optimizado: Los widgets y componentes nativos de Flutter están optimizados para ofrecer un rendimiento rápido y fluido.
* Personalización total: Puedes personalizar completamente la apariencia y el comportamiento de los widgets según tus necesidades.
* Documentación oficial: La documentación oficial de Flutter proporciona una guía detallada y ejemplos de cómo utilizar los widgets nativos de Flutter.

Desventajas:
* Mayor esfuerzo de desarrollo: Crear componentes personalizados desde cero puede requerir más tiempo y esfuerzo de desarrollo.
* Curva de aprendizaje: Puede haber una curva de aprendizaje pronunciada para dominar la creación de widgets personalizados y comprender todos los aspectos de Flutter.

### Uso de bibliotecas de terceros:
Ventajas:
* Rápida implementación: Las bibliotecas de terceros pueden proporcionar soluciones listas para usar para tareas comunes, lo que acelera el desarrollo.
* Funcionalidad adicional: Las bibliotecas pueden ofrecer funcionalidades adicionales que no están disponibles en los widgets nativos de Flutter.
* Comunidad activa: Las bibliotecas populares suelen tener una comunidad activa que proporciona soporte y actualizaciones regulares.
 
Desventajas:
* Dependencias externas: El uso de bibliotecas de terceros puede introducir dependencias externas en tu proyecto, lo que puede aumentar el tamaño de la aplicación y la complejidad de mantenimiento.
* Problemas de compatibilidad: Pueden surgir problemas de compatibilidad con las actualizaciones de Flutter o de otras bibliotecas, lo que puede requerir ajustes en tu código.

### Uso de frameworks y herramientas adicionales:
Ventajas:
* Facilita el desarrollo: Los frameworks y herramientas adicionales pueden simplificar tareas comunes y proporcionar una estructura organizada para tu proyecto.
* Reutilización de código: Puedes reutilizar componentes y patrones de diseño predefinidos para acelerar el desarrollo.
* Soporte de la comunidad: Los frameworks populares suelen tener una comunidad activa que proporciona soporte y recursos adicionales.

Desventajas:
* Curva de aprendizaje: Algunos frameworks pueden tener una curva de aprendizaje pronunciada para dominar su sintaxis y mejores prácticas.
* Flexibilidad limitada: Pueden imponer ciertas restricciones y convenciones que pueden limitar la flexibilidad y personalización de tu aplicación.
* Posible obsolescencia: Algunos frameworks pueden volverse obsoletos o dejar de mantenerse con el tiempo, lo que puede requerir una migración a nuevas tecnologías.

## ¿Cual es la mejor opcion para nuestro proyecto?

Para poder elegir, hay que considerar 3 puntos importantes

**Tiempo y recursos disponibles, Complejidad, Nivel de experiencia**

En este caso, contamos con tiempo y recursos ilimitados, puesto que, al ser estudiantes, no tenemos una cantidad de tiempo demasiado grande como para dedicarse 100% al proyecto, lo que la inclusion de bibliotecas de terceros o frameworks adicionales es bastante factible, por otro lado, nuestro nivel de experencia es limitado, podemos beneficiarnos de utilizar bibliotecas y frameworks que ofrezcan soluciones predefinidas y una estructura organizada para el proyecto, aunque tambien, por la falta de experencia, poder utilizar este proyecto como un ejercicio para aprender mientras avanzamos.
Por el lado de la complejidad, al proyecto tener una complejdiad media-alta y al no tener pensado escalar a futuro la aplicacion, podrian usarse bibliotecas de terceros para restar complejidad.

Y por ultimo, tomando en cuenta los 3 puntos anteriores, podria concluir que es bastante factible el uso de bibliotecas de terceros y de frameworks adicionales en caso se que se presente una situacion bastante compleja, por lo que, intentaria mantener y priorizar el uso de componentes nativos de Flutter, para desarrollar habilidades importantes a futuro, y dejar el uso de bibliotecas y de frameworks de 3ros, para casos donde se necesite mayor conocimiento y habilidad.
