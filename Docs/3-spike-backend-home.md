# Spike N°3

## Descripción de la spike

En este issue de Spike, nos enfocaremos en documentar los pasos necesarios para preparar el backend de nuestra aplicación de trading para la implementación de la vista Home. Esto incluye la investigación y documentación sobre cómo servir la información requerida, consumir APIs y crear una API REST para la comunicación con el frontend.

### Descripcion de las tareas

1. Investigar y documentar los requisitos de datos y funcionalidades necesarios para la vista Home de una aplicación de trading.

2. Documentar las mejores prácticas y consideraciones para el diseño e implementación de un servicio backend para una aplicación de trading.

3. Investigar y documentar cómo consumir APIs externas o internas para obtener datos relevantes para la vista Home.

4. Documentar el proceso de creación de una API REST para la comunicación entre el frontend y el backend.
 
5. Proporcionar ejemplos y casos de uso para ilustrar cada paso del proceso de preparación del backend para la vista Home.

6. Crear una guía paso a paso que sirva como referencia para los desarrolladores encargados de implementar el backend.

# 1: Investigar y documentar los requisitos de datos y funcionalidades necesarios para la vista Home de una aplicación de trading.

1. **Precios en Tiempo Real**: La vista Home debe mostrar los precios en tiempo real de los instrumentos financieros que los usuarios están siguiendo, como acciones, divisas, criptomonedas, materias primas, etc.

2. **Datos de Portafolio del Usuario**: Si los usuarios han iniciado sesión, la vista Home podría mostrar un resumen de su portafolio actual, incluyendo el valor total de sus inversiones, el rendimiento diario y el rendimiento total.

3. **Noticias Financieras**: Integrar un feed de noticias financieras relevantes para mantener a los usuarios informados sobre eventos y tendencias que podrían afectar al mercado.

4. **Gráficos de Rendimiento**: Mostrar gráficos de rendimiento de los instrumentos financieros más importantes, como índices bursátiles, pares de divisas y acciones individuales, para permitir a los usuarios realizar un análisis técnico rápido.

5. **Listas de Vigilancia Personalizadas**: Permitir a los usuarios crear listas de vigilancia personalizadas para seguir de cerca los instrumentos financieros que les interesan particularmente.

6. **Calendario Económico**: Incluir un calendario económico que enumere los eventos económicos y financieros importantes que están programados para el día o la semana, como anuncios de políticas monetarias, informes de empleo y datos de inflación.

### Funcionalidades:

1. **Personalización de Contenido**: Permitir a los usuarios personalizar la vista Home para mostrar los datos y las funcionalidades que más les interesan y que sean relevantes para su estilo de trading.

2. **Notificaciones en Tiempo Real**: Implementar notificaciones en tiempo real para alertar a los usuarios sobre cambios significativos en los precios de los instrumentos financieros que están siguiendo o sobre eventos importantes en el mercado.

3. **Búsqueda y Filtros Avanzados**: Proporcionar herramientas de búsqueda y filtros avanzados para que los usuarios puedan encontrar rápidamente los instrumentos financieros que están buscando y realizar un análisis detallado.

4. **Acciones Rápidas**: Incluir acciones rápidas, como la capacidad de comprar o vender un instrumento financiero directamente desde la vista Home con solo unos pocos clics.

5. **Análisis Técnico Integrado**: Integrar herramientas de análisis técnico directamente en la vista Home para que los usuarios puedan realizar un análisis técnico básico sin salir de la aplicación.

6. **Acceso a Recursos Educativos**: Proporcionar acceso fácil a recursos educativos, como artículos, tutoriales y videos, para ayudar a los usuarios a mejorar sus habilidades de trading y comprender mejor los mercados financieros.


# 2: Documentar las mejores prácticas y consideraciones para el diseño e implementación de un servicio backend para una aplicación de trading

1. **Escalabilidad**: Utilizar arquitecturas escalables como microservicios, contenedores (por ejemplo, Docker) y orquestación de contenedores (por ejemplo, Kubernetes) para distribuir la carga de manera eficiente.

2. **Seguridad**: Implementar autenticación sólida, autorización basada en roles y cifrado de extremo a extremo. Considera el uso de servicios de seguridad en la nube y herramientas de monitoreo de seguridad.

3. **Fiabilidad**: Utilizar prácticas de desarrollo robustas como pruebas unitarias, integración continua y despliegue continuo (CI/CD), así como redundancia y recuperación ante desastres.

4. **Rendimiento**: Utilizar técnicas como almacenamiento en caché, optimización de consultas de bases de datos y distribución geográfica de servidores para minimizar los tiempos de carga.

5. **APIs bien diseñadas**: Diseñar APIs REST claras y coherentes. Documenta exhaustivamente estas APIs, incluyendo ejemplos de solicitudes y respuestas.

6. **Monitoreo y análisis**: Implementar herramientas de monitoreo en tiempo real para supervisar el rendimiento, la disponibilidad y la integridad del sistema.

7. **Cumplimiento normativo**: Asegúrar de cumplir con todas las regulaciones y normativas aplicables en el sector financiero, como GDPR, MiFID II, y otras normativas locales y regionales.

8. **Resiliencia**: Planificar para situaciones de fallo, implementando estrategias de respaldo y recuperación ante desastres.

9. **Flexibilidad y adaptabilidad**: Utilizar arquitecturas modulares y diseño orientado a servicios para facilitar la incorporación de nuevas funcionalidades y la actualización de sistemas existentes.

10. **Documentación exhaustiva**: Documentar todos los aspectos del diseño, la implementación y el funcionamiento del servicio backend.
 


# 3: Investigar y documentar cómo consumir APIs externas o internas para obtener datos relevantes para la vista Home.

### **Objetivos**

 **Selección de APIs:**

- Identificar cuáles APIs, tanto internas como externas, son las más adecuadas para proporcionar los datos necesarios para la vista Home.

**Autenticación:**

 - Documentar cómo autenticarse de manera segura en estas APIs para garantizar que sólo los usuarios autorizados tengan acceso.

**Implementación:** 

- Proveer ejemplos básicos de cómo realizar solicitudes a estas APIs y cómo manejar las respuestas.

**Manejo de Errores:**

- Establecer un método simple para manejar errores en las solicitudes a las APIs para mantener la funcionalidad de la vista Home en caso de problemas.

**Pruebas:**

- Esbozar un plan básico para probar la correcta integración y funcionamiento de las APIs en la aplicación.

# Contenido Detallado 

## A. **Selección de APIs**

**Descripción:** La API de Binance es una interfaz proporcionada por el intercambio de criptomonedas Binance que permite a los desarrolladores integrar funcionalidades de seguimiento del mercado, gestión de cuentas y operaciones de trading en sus aplicaciones. Esta API ofrece una amplia gama de endpoints para acceder a datos de mercado en tiempo real, datos históricos de transacciones, información de cuentas y ejecución de órdenes.

### Razones para la Selección:

**Relevancia de los Datos:**

- La API de Binance proporciona datos esenciales para una aplicación de trading, incluyendo precios actuales de criptomonedas, datos de órdenes de libro (order book), y fluctuaciones de mercado, todos cruciales para la vista Home de nuestra aplicación.

**Fiabilidad:**

- Binance es uno de los intercambios de criptomonedas más grandes y confiables del mundo, lo que asegura un acceso constante a información actualizada y precisa.

**Documentación y Soporte:**

- Binance ofrece una documentación detallada y actualizada que facilita la integración y el mantenimiento de su API. Además, el soporte comunitario y oficial está ampliamente disponible.

**Funcionalidades Adicionales:** 

- Aparte de los datos de mercado, la API también permite acceder a información de cuentas y ejecutar operaciones, lo que puede ser útil para futuras expansiones de nuestra aplicación.

## B.  Autenticación


### **Autenticación en la API de Binance**

**Descripción General:** Para interactuar de manera segura con la API de Binance, especialmente cuando se requiere acceso a información privada o realizar operaciones de trading, es necesario autenticarse utilizando un esquema basado en claves API y firmas digitales.

### **Claves API:**

**Obtención de Claves:**  Para comenzar a utilizar la API de Binance, primero debes registrar tu aplicación en el portal de usuario de Binance y generar un par de claves API (clave pública y clave privada). Estas claves te identificarán y autorizarán tus llamadas a la API.

**Configuración:** Una vez generadas, debes configurar estas claves en tu aplicación, asegurándote de mantener la clave privada en un entorno seguro y nunca exponerla públicamente.

### **Firma Digital:**

**Propósito:** La firma digital es requerida para todas las solicitudes que acceden a información sensible o realizan operaciones de trading. Esto garantiza que la solicitud ha sido enviada por el poseedor de la clave API y que los parámetros de la solicitud no han sido modificados en tránsito.

**Método:** La firma se genera mediante el algoritmo HMAC SHA256, usando la clave privada como la clave para el algoritmo. Los parámetros de la solicitud deben ser ordenados alfabéticamente y concatenados para formar la cadena de consulta que será firmada.

### **Uso de las Claves API y Firmas en Solicitudes:**

**Encabezados HTTP:** Generalmente, la clave API se incluye en los encabezados de las solicitudes HTTP para identificar al usuario. La firma, si es requerida, también se incluye en los encabezados o como parte de los parámetros de la solicitud.

### Ejemplo de Uso de la API de Binance con Autenticación en Go

```go
package main

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"net/http"
	"net/url"
	"strconv"
	"time"
	"io/ioutil"
)

func main() {
	apiKey := "tu_api_key"
	secretKey := "tu_secret_key"
	baseUrl := "https://api.binance.com"

	// Crear el timestamp
	timestamp := strconv.FormatInt(time.Now().UnixNano()/int64(time.Millisecond), 10)

	// Preparar la cadena de consulta con el timestamp
	queryString := fmt.Sprintf("timestamp=%s", timestamp)

	// Crear la firma HMAC SHA256
	mac := hmac.New(sha256.New, []byte(secretKey))
	mac.Write([]byte(queryString))
	signature := hex.EncodeToString(mac.Sum(nil))

	// Preparar la URL completa con la firma
	fullUrl := fmt.Sprintf("%s/api/v3/account?%s&signature=%s", baseUrl, queryString, signature)

	// Crear la solicitud HTTP
	client := &http.Client{}
	req, err := http.NewRequest("GET", fullUrl, nil)
	if err != nil {
		fmt.Println("Error creating request:", err)
		return
	}

	// Agregar el API Key en los encabezados
	req.Header.Add("X-MBX-APIKEY", apiKey)

	// Realizar la solicitud
	resp, err := client.Do(req)
	if err != nil {
		fmt.Println("Error sending request:", err)
		return
	}
	defer resp.Body.Close()

	// Leer y mostrar la respuesta
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("Error reading response:", err)
		return
	}

	fmt.Println("Response from Binance API:", string(body))
} 
```

### **Recomendaciones de Seguridad:**
- Asegúrate de que solo las partes de tu aplicación que necesitan realizar llamadas a la API tengan acceso a tus claves API.
- Nunca incluyas claves privadas directamente en el código fuente. Utiliza variables de entorno o servicios de gestión de secretos para manejarlas de manera segura.


## C. Implementación

### **Ejemplo de Código en Go para Solicitar Datos de la API de Binance**

```go
package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	apiUrl := "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT"
	response, err := http.Get(apiUrl)
	if err != nil {
		fmt.Println("Error haciendo la solicitud:", err)
		return
	}
	defer response.Body.Close()

	body, err := ioutil.ReadAll(response.Body)
	if err != nil {
		fmt.Println("Error leyendo la respuesta:", err)
		return
	}

	fmt.Println("Respuesta de la API de Binance:", string(body))
}
```

### Descripción del Código

- **Establecer la URL de la API:** Define la URL completa para el endpoint deseado (api/v3/ticker/price), incluyendo el símbolo del par de trading que quieres consultar (en este caso, BTCUSDT).
- **Realizar la Solicitud HTTP:** Utiliza la función http.Get para hacer una solicitud GET al servidor de Binance. Asegúrate de manejar cualquier error que pueda ocurrir durante la solicitud, como problemas de red o URLs incorrectas.
- **Leer la Respuesta:** Una vez recibida la respuesta, lee el cuerpo del mensaje con ioutil.ReadAll. Es importante manejar posibles errores en la lectura, como la desconexión inesperada del servidor.
- **Imprimir la Respuesta:** Finalmente, imprime la respuesta que en este caso será el precio actual de Bitcoin en formato JSON. Puedes parsear este JSON para extraer y utilizar específicamente el precio en tu aplicación.

## D. Manejo de Errores

**Estrategias Básicas para Responder a Fallos Comunes y Problemas de Conectividad**

- **Validación de Respuestas:** Siempre verifica el código de estado HTTP de las respuestas para asegurarte de que la solicitud fue exitosa. Trata los códigos de error comunes (como 400, 401, 404, 500) con mensajes claros para los usuarios o reintentos automáticos si es apropiado.

- **Manejo de Excepciones:** Implementa bloques de manejo de excepciones para capturar y tratar errores durante las solicitudes. Esto incluye errores de tiempo de conexión, fallos en la decodificación de datos, y cualquier otra excepción de red.

- **Logs de Errores:** Registra los detalles de los errores para permitir un diagnóstico y corrección efectivos. Asegúrate de que los logs contengan suficiente información sobre el contexto del error sin exponer datos sensibles como claves API.

- **Estrategias de Reintento:** Implementa una lógica de reintento con backoff exponencial para manejar intermitencias en la conectividad o problemas temporales del servidor de la API.


### Ejemplo de Manejo de Errores en Go
```go
if response.StatusCode != http.StatusOK {
	fmt.Println("Error en la solicitud:", response.Status)
	switch response.StatusCode {
	case http.StatusUnauthorized:
		fmt.Println("Verifica tus credenciales")
	case http.StatusNotFound:
		fmt.Println("Recurso no encontrado")
	default:
		fmt.Println("Error no manejado")
	}
}
```

## E. Pruebas

**Pasos Básicos para Asegurar que las Solicitudes a las API Funcionen como se Espera en la Aplicación**

- **Pruebas Unitarias:** Escribe pruebas unitarias para cada función que realice solicitudes a la API. Asegúrate de que manejen correctamente tanto las respuestas esperadas como los posibles errores.

- **Mocking:** Utiliza bibliotecas de mocking para simular respuestas de la API durante las pruebas. Esto te permite probar cómo tu aplicación maneja diferentes datos sin tener que realizar solicitudes reales.

- **Pruebas de Integración:** Configura pruebas de integración que ejecuten escenarios completos usando la API. Esto ayudará a asegurar que las integraciones entre tu aplicación y la API funcionen como se espera.

- **Monitorización Continua:** Implementa herramientas de monitorización para rastrear el rendimiento y la salud de las interacciones de la API en producción.

## F. Conclusión

**Importancia de Integrar Correctamente las APIs para la Funcionalidad de la Vista Home**

Integrar correctamente las APIs en la vista Home es crucial para asegurar que los usuarios reciban datos precisos y actualizados. Esto no solo mejora la experiencia del usuario, sino que también fortalece la confiabilidad y la utilidad de la aplicación.

**Recomendaciones para Futuras Mejoras o Expansiones Basadas en los Resultados de la Spike**

- **Expansión de Funcionalidades:** Considera la posibilidad de agregar más datos relevantes y funcionalidades interactivas a la vista Home, como gráficos en tiempo real o herramientas de análisis.

- **Optimización del Rendimiento:** Continúa optimizando el manejo de solicitudes y respuestas para mejorar la velocidad y la eficiencia de la aplicación.

- **Actualización de Seguridad:** Mantén una revisión continua de las prácticas de seguridad, especialmente en lo que respecta a la gestión de autenticación y claves API.


# 4: Documentar el proceso de creación de una API REST para la comunicación entre el frontend y el backend.

### Crear una API REST efectiva es crucial para la comunicación fluida entre el frontend y el backend de una aplicación. Este proceso implica diseñar endpoints que sean claros, eficientes y seguros. A continuación, te explico los pasos clave para desarrollar esta API:


## A. Planificación de Endpoints

- **Identificación de Requerimientos:** Se define qué datos necesita el frontend y qué operaciones debe soportar el backend, como obtener datos o enviar comandos.

- **Diseño de Endpoints:** Se crea una lista de endpoints necesarios, especificando el método HTTP apropiado para cada uno (GET, POST, PUT, DELETE) y la estructura de los recursos.


## B. Definición de Contratos

- **Especificaciones de Entradas y Salidas:** Para cada endpoint, se definen los parámetros de entrada y el formato de los datos de salida, generalmente en formato JSON.

- **Documentación:** Se utiliza Swagger u OpenAPI para documentar la API. Esto facilita la comprensión y la integración por parte de otros desarrolladores y stakeholders.


## C. Implementación

- **Configuración del Servidor:** Se configura un servidor capaz de manejar solicitudes HTTP, utilizando el paquete net/http en Go.

- **Desarrollo de Endpoints:** Se implementa la lógica para cada endpoint, asegurando que los datos se procesen y devuelvan correctamente.


## D. Seguridad

- **Autenticación y Autorización:** Se implementan mecanismos para verificar que los usuarios tienen permisos para realizar operaciones, utilizando tokens JWT para la autenticación.

- **Validación de Entradas:** Se valida todas las entradas para evitar vulnerabilidades como inyecciones SQL.


## E. Pruebas

- **Pruebas Unitarias y de Integración:** Se desarrollan pruebas para cada endpoint, asegurando que funcionen correctamente tanto en escenarios esperados como en situaciones de error.

- **Pruebas de Carga:** Se evalúa el rendimiento de la API bajo diversas cargas para garantizar su capacidad de manejar el tráfico de usuarios esperado.


## F. Despliegue y Monitoreo

- **Implementación en Producción:** La API se despliega en un entorno de producción.
Monitoreo Continuo: Se utilizan herramientas de monitoreo para seguir el uso y el rendimiento de la API y hacer ajustes conforme sea necesario.
## G. Mantenimiento
- **Actualizaciones Regulares:** La API se mantiene actualizada con nuevas funcionalidades y correcciones de seguridad.

- **Documentación Actualizada:** La documentación se mantiene al día para reflejar cualquier cambio en la API.

## **Ejemplo de Implementación de un Endpoint en Go**

```go
func handleGetPrice(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodGet {
		http.Error(w, "Unsupported HTTP method", http.StatusMethodNotAllowed)
		return
	}

	price, err := getPriceFromDB() // Simula obtener un precio de la base de datos
	if err != nil {
		http.Error(w, "Error retrieving price", http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(struct {
		Price float64 `json:"price"`
	}{Price: price})
}
```
 

### Explicacion de ejemplo de implementación

- **Verificación del Método HTTP:** Inicialmente, se verifica si el método de la solicitud es GET, ya que el endpoint está configurado exclusivamente para responder a solicitudes GET. Si se utiliza otro método, se devuelve un error indicando que el método no es compatible.

- **Recuperación de Datos:** Si el método es correcto, el servidor intenta recuperar el precio actual desde una base de datos simulada. Si hay algún error durante la recuperación, como un fallo en la conexión, se envía una respuesta de error al cliente.

- **Envío de la Respuesta:** En caso de éxito en la recuperación de datos, el servidor prepara una respuesta que incluye el precio en formato JSON. Configura el tipo de contenido a application/json y utiliza funciones de Go para codificar el precio y enviarlo de vuelta al cliente.

- **Limpieza de Recursos:** Finalmente, se asegura que todos los recursos utilizados sean cerrados o liberados correctamente después de enviar la respuesta, utilizando la instrucción defer para manejar la limpieza automáticamente.


# 5: Proporcionar ejemplos y casos de uso para ilustrar cada paso del proceso de preparación del backend para la vista Home.


**Para ilustrar cada paso del proceso de preparación del backend para la vista Home, se detallarán ejemplos y casos de uso específicos que reflejen situaciones comunes en el desarrollo de aplicaciones. Esto ayuda a visualizar cómo los componentes del backend interactúan y soportan la funcionalidad de la vista Home.**

### A. Identificación de Funcionalidades y Datos Necesarios

- **Ejemplo:** Supongamos que la vista Home necesita mostrar los precios más recientes de varias criptomonedas y las noticias relacionadas con el mercado.

- **Caso de Uso:** El backend debe ser capaz de consultar y recuperar estos datos de las APIs de Binance para los precios y, posiblemente, una API de noticias para las actualizaciones del mercado.

### B. Diseño e Implementación del Servicio Backend

- **Ejemplo:** Crear endpoints en el backend que sirvan estos datos específicos al frontend. Por ejemplo, un endpoint podría ser /api/prices para precios y /api/news para noticias de mercado.

- **Caso de Uso:** Cuando un usuario accede a la vista Home, el frontend hace una solicitud GET a estos endpoints. El backend procesa estas solicitudes, realiza las consultas necesarias a las APIs externas, y retorna los datos en formato JSON.

### C. Consumo de APIs Externas

- **Ejemplo:** Integración con la API de Binance para obtener los precios actuales de criptomonedas.

- **Caso de Uso:** El backend utiliza librerías de HTTP para hacer solicitudes a la API de Binance, parsea los datos recibidos y los formatea para su uso en la vista Home.

### D. Creación de una API REST para Comunicación Frontend-Backend

- **Ejemplo:** Definición de la API REST con Swagger que incluye todos los endpoints necesarios, parámetros, respuestas esperadas y posibles errores.

- **Caso de Uso:** Un desarrollador frontend consulta la documentación Swagger para entender cómo consumir los endpoints del backend, facilitando la integración y minimizando errores en el desarrollo.

### E. Manejo de Errores y Seguridad

- **Ejemplo:** Implementación de autenticación basada en tokens y manejo de errores para los endpoints que requieren acceso seguro.

- **Caso de Uso:** Un usuario intenta acceder a información personalizada y el sistema verifica su token de autenticación antes de permitir el acceso a los datos. Si el token es inválido o ha expirado, el backend retorna un error de autenticación.

### F. Pruebas y Monitorización

- **Ejemplo:** Creación de pruebas unitarias y de integración para los endpoints. Uso de herramientas de monitorización para observar el rendimiento y la salud de la API en tiempo real.

- **Caso de Uso:** Durante una prueba de carga, se detecta un cuello de botella en el endpoint /api/prices. El equipo utiliza los datos de monitorización para diagnosticar y resolver el problema, optimizando el código para manejar un mayor número de solicitudes simultáneas.


