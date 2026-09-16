# Campañas, Automatizaciones e Integraciones

Este capítulo explica cómo WhatsMarketing envía campañas por la vía oficial de WhatsApp Business Platform, cómo funcionan las plantillas de Meta, en qué se diferencia el producto clásico de mensajes masivos (Campañas Masivas), cómo se arman las automatizaciones y cómo se conecta la plataforma con otros sistemas.
- Fuente: páginas públicas de whatsmarketing.es sobre campañas, mensajes masivos, reglas de Meta, plantillas, automatización e integraciones. WhatsMarketing es Meta Tech Provider con 11 años de trayectoria; sin costo de alta de plataforma.
- Todo lo relativo a tarifas se rige por la tarifa vigente de Meta por país y categoría; los importes se tratan en el capítulo 7.

***

# Campañas oficiales de WhatsApp: qué son y cómo se crean

- Una campaña oficial es un envío a muchos contactos a través de WhatsApp Business API, la vía oficial de Meta.
- Cada mensaje sale de una plantilla que Meta aprobó previamente.
- Las respuestas caen en la bandeja compartida y las atiende el equipo o un agente IA.
- Promesa de la página: campañas de WhatsApp marketing con la API oficial, listas en minutos.

De la idea al envío, en 5 pasos (cada paso muestra cómo va a verse el mensaje):
1. **Nombre de campaña**: un solo campo para identificarla y seguir.
2. **Audiencia**: eliges el segmento desde tu CRM, el mismo que ya usas para todo lo demás.
3. **Canal**: WhatsApp por defecto, con espacio para Email y SMS más adelante.
4. **Contenido**: escribes con vista previa en vivo y validación de límites de WhatsApp mientras tipeas.
5. **Revisión y envío**: confirmas y programas, o envías ahora mismo.

***

# Segmentación, programación y estados de una campaña

- La audiencia es un segmento del CRM, siempre actualizado; las variables se completan con campos del contacto y se ven en la vista previa.
- Las etiquetas sincronizadas desde otros sistemas sirven para segmentar con criterios propios.
- Se envía ahora mismo o se programa a una fecha y hora, a uno o a miles de contactos, sin tener el teléfono encendido.
- Estados: **Borrador → Programada → Enviando → Completada**.
- Si algo falla, la campaña pasa a **Fallida** con el detalle exacto. Nunca se queda "enviando" para siempre.

***

# Métricas, validación y simulador

Informe de campaña:
- Entrega, apertura (leídos), respuesta y conversión, cruzados con la etapa del Lifecycle de cada contacto.
- Mensajes enviados, entregados, leídos, respuestas únicas y consumo de la campaña.
- Comparación de la tasa de lectura de tu plantilla contra plantillas similares del sector.
- Clics por botón: tipo (respuesta rápida o ir a sitio web), cantidad de clics y tasa.
- Los informes son en vivo: entregados y leídos aparecen a medida que ocurren.

Validación de límites de WhatsApp mientras escribes (los contadores cambian de color antes de quedarte sin espacio):
- Encabezado hasta 60 caracteres; cuerpo hasta 1.024; pie de página hasta 60; texto de cada botón hasta 25.
- Tipos de botón: respuesta rápida, ir a sitio web, llamar por teléfono, copiar código de oferta.
- Hasta 3 botones de respuesta rápida, o hasta 2 de acción (web, llamada o copiar código). Meta no permite combinar ambos tipos en la misma plantilla.

Seguridad de envío:
- Nunca se manda una prueba a un número real por error: el simulador es 100% visual. Si el envío no está disponible (plan de prueba, canal sin conectar), se avisa de forma clara, no con un error críptico.

***

# Plantillas de Meta: cuándo hacen falta y cómo se componen

WhatsApp protege a la gente del spam con una regla simple: la empresa solo puede escribir libremente mientras la conversación está abierta. Fuera de eso, plantilla.
- **El cliente te escribe** (consulta, respuesta a un anuncio, clic en un botón): se abre una ventana de 24 horas.
- **Las 24 horas siguientes**: tu equipo o tu agente responde con texto, fotos, audios o documentos, sin plantilla. Cada mensaje del cliente reinicia el reloj.
- **Pasadas las 24 h**: para volver a escribir, o para escribir primero, hace falta un mensaje aprobado antes por Meta. Ese mensaje es la plantilla.
- Las plantillas son la base de campañas, recordatorios y notificaciones: la única puerta de entrada cuando el cliente no escribió primero.

Anatomía de una plantilla (cuatro partes; solo el cuerpo es obligatorio):
1. **Encabezado (opcional)**: texto corto, imagen, documento o video, para reconocer el mensaje de un vistazo.
2. **Cuerpo, con variables**: las variables {{1}}, {{2}}… se completan al enviar con el nombre, el número de pedido o la fecha de cada cliente. El texto fijo no se puede cambiar sin volver a aprobar.
3. **Pie (opcional)**: una línea pequeña para firma, aviso de baja o referencia. Va en gris y no admite variables.
4. **Botones (hasta 3)**: respuesta rápida, ir a un enlace o llamar. Un botón bien puesto evita que el cliente tenga que escribir.
- Cada plantilla se aprueba por idioma: la versión en español y la versión en portugués son dos aprobaciones distintas.

***

# Categorías de plantilla: Marketing, Utility y Authentication

Meta clasifica cada plantilla según para qué sirve. Si el contenido no coincide con la categoría, la reclasifica o la rechaza.

**Marketing**
- Sirve para promociones, lanzamientos, novedades, recuperación de carritos y cualquier mensaje cuyo fin sea vender.
- Meta exige consentimiento previo y explícito. Es la categoría más vigilada y la que más afecta la calidad si molesta.
- Se cobra siempre, incluso con la ventana de 24 h abierta. Es la categoría más cara.
**Utility (utilidad)**
- Sirve para avisos atados a algo que la persona ya hizo: confirmaciones, envíos, turnos, cuotas, cambios de estado, suscripciones.
- Meta exige que exista una transacción real detrás. Si es una promoción disfrazada, se recategoriza a marketing.
- Se cobra siempre desde el 1 de octubre de 2026, también dentro de la ventana de 24 h. Es la categoría más económica.
**Authentication (autenticación)**
- Sirve para códigos de un solo uso: login, recuperación de contraseña, confirmación de una operación.
- Meta exige formato fijo, sin enlaces ni texto libre. Tiene su propia plantilla con botón de copiado.
- Se cobra siempre, con una tarifa propia distinta a las otras dos.
- La categoría no la eliges tú del todo: la propones al crear la plantilla y Meta la confirma o la corrige.
- Meta no cobra por campaña ni por contacto: cobra por mensaje entregado, según tarifa vigente de Meta por país y categoría.

***

# Aprobación, estados y motivos de rechazo de una plantilla

Meta revisa cada plantilla antes de dejarte usarla. Normalmente tarda minutos; a veces, hasta un día.
- **En revisión**: todavía no se puede usar; solo queda esperar o eliminar el borrador.
- **Aprobada**: lista para campañas y automatizaciones. Es la única que aparece al armar una campaña. Si cambias el texto fijo, vuelve a revisión.
- **Rechazada**: Meta dice por qué en lenguaje simple; corriges y la vuelves a enviar.
- **Deshabilitada**: Meta la retiró por quejas o bloqueos acumulados. Se gestiona con Meta; no se reactiva desde el panel.
- Un rechazo no penaliza el número. Lo que sí penaliza es aprobarla y que después la gente la reporte.

Por qué Meta rechaza una plantilla:
- **Categoría equivocada**: el motivo número uno. Una promoción presentada como utilidad se rechaza o se recategoriza sola.
- **Variables mal armadas**: empezar o terminar con una variable, poner dos seguidas o saltear la numeración.
- **Ejemplos que faltan**: cada variable necesita un ejemplo real.
- **Contenido prohibido**: rubros que Meta no permite, promesas de resultados o pedir datos sensibles por chat.
- **Enlaces sospechosos**: acortadores genéricos y dominios sin relación con el negocio verificado.
- **Redacción descuidada**: errores gruesos, mayúsculas de más o texto que parece sin terminar.

***

# Plantillas de ejemplo y editor de WhatsMarketing

Seis plantillas que casi todo negocio necesita (cortas, claras y con una sola intención):
- **Confirmación de pedido (Utility)**: "Hola {{1}}, recibimos tu pedido {{2}} por {{3}}. Te avisamos cuando salga. ¡Gracias por comprar!". Botón: "Ver mi pedido".
- **Recordatorio de turno (Utility)**: "Hola {{1}}, te recordamos tu turno el {{2}} a las {{3}} con {{4}}. ¿Confirmas?". Botones: "Confirmo" y "Reprogramar".
- **Aviso de envío (Utility)**: "Tu pedido {{1}} ya salió. Llega el {{2}}. Seguimiento: {{3}}". Botón: "Seguir el envío" (enlace).
- **Cuota que vence (Utility)**: "Hola {{1}}, el {{2}} vence la cuota {{3}} por {{4}}. Puedes pagar aquí: {{5}}". Es la base del agente de cobranzas.
- **Código de verificación (Authentication)**: "{{1}} es tu código de verificación. Por tu seguridad, no lo compartas." Formato fijo de Meta; el botón copia el código.
- **Novedad con opción de baja (Marketing)**: "Hola {{1}}, esta semana {{2}} tiene {{3}} de descuento para clientes. Válido hasta el {{4}}." Pie con "Responde STOP para no recibir ofertas". Solo a quien dio su consentimiento.

Plantillas de inicio del constructor de campañas: Bienvenida (Marketing, primer contacto tras compra, registro o suscripción), Recuperación (Marketing, carritos abandonados y pagos pendientes), Seguimiento (Utility, después de una demo, cotización o visita) y Verificación (Authentication, solo se edita el código).

Editor de plantillas, sin adivinar si Meta las va a aprobar:
- **Vista previa en vivo**: ves el mensaje en una pantalla de WhatsApp con las variables completadas con datos de ejemplo.
- **Límites mientras escribes**: caracteres, cantidad de botones y variables sin usar se marcan en el momento.
- **Estado siempre a la vista**: en revisión, aprobada o rechazada con su motivo. En campañas solo aparecen las aprobadas.

***

# Límites de envío de Meta y calidad del número

Meta no deja escribirle a 100.000 personas el primer día: da un escalón y lo sube según cómo respondan los clientes.
- **250 clientes / 24 h**: donde arranca todo número nuevo. Alcanza para probar plantillas y afinar la segmentación.
- **1.000 / 24 h**: el primer salto real; permite sostener una campaña semanal a una base mediana.
- **10.000 / 24 h**: volumen de empresa con base propia trabajada. Conviene automatizar la gestión de bajas.
- **100.000 / 24 h**: requiere negocio verificado con Meta y calidad alta sostenida en el tiempo.
- **Sin límite**: levanta el tope de clientes distintos por día; la calidad se sigue midiendo igual.
- El límite cuenta clientes distintos por 24 h, no mensajes totales. Responder a quien te escribió no consume límite.
- Para subir hacen falta calidad alta y haber escrito a la mitad del límite actual en 7 días. La subida es automática; Meta también baja escalones.
- De la verificación del negocio se ocupa WhatsMarketing como Meta Tech Provider.

Calificación de calidad del número (la ponen tus clientes):
- **Alta**: todo normal; desde aquí se sube de escalón. **Media**: aviso por bloqueos o reportes. **Baja**: zona de riesgo; bajan el límite o restringen el número.
- Qué la baja: bloqueos y reportes, escribir sin consentimiento, promociones a bases viejas o compradas, frecuencia alta sin aporte, ignorar a quien pide la baja.
- Cómo se recupera: bajar el volumen unos días, segmentar, respetar las bajas de inmediato y de forma automática, cambiar promoción por utilidad real, revisar qué plantilla disparó los bloqueos.

***

# Consentimiento (opt-in)

Para escribirle primero a alguien necesitas su permiso. Meta no pide subirlo a ningún lado, pero sí poder demostrarlo si aparece un reclamo.
- Sirve: casilla no premarcada en web o checkout; formulario donde la persona deja su número a propósito; que te escriba primero por WhatsApp; alta presencial o telefónica registrada; anuncio de clic a WhatsApp que la persona tocó.
- No sirve: base comprada o alquilada; números de un directorio público; permiso dado para otro canal (email, SMS); casilla marcada por defecto; consentimiento genérico que no menciona WhatsApp.
- El permiso tiene que decir qué negocio va a escribir y que va a ser por WhatsApp. Un "acepto recibir comunicaciones" a secas no alcanza.
- Los mensajes que el cliente te escribe a ti no se cobran nunca.

***

# El cambio de Meta del 1 de octubre de 2026

- Hasta el 30 de septiembre de 2026: responder dentro de la ventana de servicio de 24 h no tenía costo, lo escribiera una persona o un bot. Las plantillas de utilidad dentro de esa ventana, tampoco.
- Desde el 1 de octubre de 2026: las respuestas de una empresa a un usuario se cobran, sean de una persona o de un BOT IA, una vez superada la franquicia mensual de mensajes de servicio que Meta define por número, a la tarifa de utilidad. Las plantillas de utilidad dentro de la ventana también pasan a cobrarse.
- La franquicia se cuenta por mensaje, no por conversación: importa que cada respuesta resuelva.
- En la bandeja compartida se ve cuántos mensajes de servicio lleva cada número en el mes.

***

# Mensajes masivos: Campañas Masivas (versión clásica)

Campañas Masivas es el producto clásico de WhatsMarketing, anterior a WhatsApp Business API.
- No usa plantillas aprobadas por Meta ni la vía oficial de envío.
- Se mantiene porque hay clientes que lo usan hace años y funciona. Si estás empezando hoy, conviene la vía oficial.
- Se paga con créditos: los compras y los usas cuando quieres.
- Permite enviar también por **Telegram**, con créditos propios.

El circuito, tal como es:
1. **Subes la lista**: Excel .xls 1997-2003 de hasta 10 MB, con plantilla descargable. Cuatro columnas: teléfono, nombre y dos variables libres. Es una foto de tu base; no se sincroniza con el CRM.
2. **Escribes el mensaje**: variables por posición de columna ({value0} teléfono, {value1} nombre, {value2} y {value3} libres). Negrita, emojis, un enlace y un botón de llamada a la acción con seguimiento de clics. No hay plantilla que aprobar ni categoría que elegir.
3. **Programas el envío**: fecha y rango de horas, no un horario exacto. Se define el país para respetar el huso horario.
4. **Se envía**: la campaña aparece con estado, cantidad de mensajes y fecha programada. Sin seguimiento en vivo. Es un envío, no una conversación: las respuestas no caen en una bandeja.
5. **Llega el informe**: entre 24 y 48 horas después, descargable, con estadísticas del botón. Los créditos se descuentan cuando se sube el informe, no al enviar.

Para clientes actuales no cambia nada:
- Sigue funcionando igual; no se da de baja ni se cambia el proceso de envío. Créditos, campañas programadas e informes siguen donde estaban. El módulo se moderniza por fuera (se ve mejor y se usa más cómodo), pero por dentro es el mismo.
- Pasarse a la vía oficial no es obligatorio ni tiene fecha; WhatsMarketing acompaña si el cliente lo decide.

***

# Clásica u oficial: cuál te conviene

| Aspecto | Campañas Masivas (clásica) | Campañas oficiales (API) |
|---|---|---|
| Vía de envío | No oficial | WhatsApp Business API |
| Aprobación previa | No hace falta | Plantilla aprobada por Meta |
| Contactos | Excel 1997-2003, hasta 10 MB | Segmentos del CRM, siempre actualizados |
| Variables | Por columna: {value0} a {value3} | Campos del contacto, con vista previa |
| Informes | Diferidos, 24 a 48 h después | En vivo |
| Cuándo se cobra | Créditos al subirse el informe | Por mensaje, según tarifa vigente de Meta |
| Otros canales | Telegram, con créditos aparte | Instagram, Messenger, webchat y más, desde la misma bandeja |
| Respuestas | Sin bandeja de conversación | Caen en la bandeja compartida |

- Si la campaña necesita que la gente conteste y alguien atienda esa respuesta, la vía oficial es la única de las dos que lo resuelve.
- Si el cliente no sabe cuál le sirve, se le pregunta qué quiere enviar y a cuánta gente, y se recomienda la que convenga.

***

# Automatizaciones: disparador, condición, acción

Un flujo es una secuencia que se lee de arriba abajo. Ejemplo de la página:
- **Disparador: llega un mensaje nuevo**. Se activa cuando un contacto escribe por cualquier canal conectado (WhatsApp, Instagram, Webchat o todos a la vez), solo en el primer mensaje de la conversación.
- **Condición: ¿dice "precio" o "cotización"?** Evalúa el texto sin distinguir mayúsculas ni acentos (contiene: precio, cotización, cuánto sale, presupuesto). Si no cumple, sigue por otra rama o deja la conversación al equipo.
- **Acción: responder con la lista de precios**, con el catálogo en PDF adjunto si quieres. Dentro de las 24 h responde con texto libre; fuera de las 24 h usa automáticamente una plantilla aprobada por Meta.
- **Acción: cambiar la etapa a Calificado** en el CRM y asignar un vendedor. Puede disparar otro flujo, como la secuencia de seguimiento. La ejecución se guarda con fecha, disparador y resultado.
- Hoy los flujos se arman desde un formulario guiado, paso a paso. El constructor visual de arrastrar y soltar llega en Fase 2.
- Las automatizaciones vienen dentro del plan: sin cuota extra, sin costo por tarea ejecutada, errores visibles en el mismo panel y los datos no salen de la plataforma. Sin abrir cuenta en otro servicio ni escribir código.

***

# Disparadores y casos de uso

Cuanto más específico el disparador, menos mensajes de más recibe el cliente.
- Disponibles hoy: mensaje recibido; se agrega una etiqueta; cambia la etapa; se envía un formulario; llega un webhook.
- Fase 2 (comportamiento de e-commerce): se confirma un pago; carrito abandonado; producto visto sin comprar.
- Mientras tanto, cualquiera de esos eventos se puede conectar vía webhook desde la tienda.

Qué puedes automatizar hoy mismo, conectando tu web, tienda online, formularios o CRM:
- **E-commerce**: envío automático del tique de compra y del código de seguimiento del envío, en tiempo real.
- **Agendamiento**: recordatorio automático de la cita 24 horas antes, para reducir el ausentismo.
- **Ventas**: saludo inmediato con el catálogo en PDF adjunto cuando un prospecto llena el formulario de la web.

***

# Flujo de reglas o Agente IA, y programación de mensajes

No todo necesita inteligencia artificial. Un flujo de reglas es más barato, más rápido y más predecible; la IA entra cuando la conversación se vuelve abierta.
- **Flujo de reglas** (determinista, siempre responde igual): recordatorios y confirmaciones; envío de tiques y comprobantes; respuestas a preguntas frecuentes exactas.
- **Agente IA** (entiende contexto, deriva a un humano): consultas abiertas sobre productos; calificación de leads por conversación; objeciones y negociación.
- El Agente IA arranca aislado: no toca los canales de producción hasta que se conecta explícitamente. Se prueba sin riesgo de escribirle a un cliente real.

¿Se pueden programar mensajes en WhatsApp? Depende de qué WhatsApp uses.
- **La app (WhatsApp y WhatsApp Business)**: un mensaje de bienvenida y uno de ausencia; respuestas rápidas enviadas a mano; no programa envíos ni contesta según lo que pregunten. Manual, depende del teléfono.
- **WhatsApp Business API (WhatsMarketing)**: mensajes programados a fecha y hora, a uno o a miles; respuestas automáticas según lo que escriba el cliente, con reglas o con IA; recordatorios y confirmaciones que salen solos desde tu sistema. Automático, sin el teléfono.

***

# Pruebas y controles de una automatización

- Modo prueba: ves la conversación como la vería el cliente, sin gastar una conversación de Meta. Cada paso queda registrado para ver por qué el bot respondió lo que respondió.
- El modo sandbox con preview en vivo llega en Fase 2.

Una automatización tiene que saber cuándo frenar:
- **Corte a humano**: si el cliente lo pide o el flujo no sabe seguir, pasa a un agente con todo el historial.
- **Reintentos**: si un sistema externo no responde, se reintenta con espera progresiva antes de darlo por fallido.
- **Tope de mensajes**: un mismo contacto no recibe la misma automatización dos veces por error.
- **Registro de ejecución**: cada corrida guarda qué se disparó, qué se ejecutó y qué falló.

***

# Integraciones: catálogo, estado y webhooks

Conecta WhatsMarketing con lo que ya usas.
- Hoy funcionan las tres integraciones con sistemas propios: Todo en Uno, Campañas Masivas y la bandeja de conversaciones.
- Catálogo previsto, en este orden. Fase 2: Webhooks, n8n, Zapier / Make, Google Sheets, Formularios web, HubSpot, Salesforce. Enterprise: Tiendas online.
- Se priorizan los webhooks antes que los conectores cerrados: con un webhook se conecta hasta un sistema hecho a medida.

Webhooks (Fase 2):
- **Entrante**: tu sistema avisa a WhatsMarketing de un evento (por ejemplo, "pago_confirmado" con teléfono, nombre y monto) en una URL con tu clave, y se dispara el flujo que definiste.
- **Saliente**: cuando pasa algo en la plataforma (por ejemplo, "etapa_cambiada" de "Nuevo Lead" a "Calificado"), se envía a la URL que indiques.
- Si tu sistema no responde, se reintenta con espera progresiva y el error queda visible en el panel, sin perderse en silencio.

***

# Qué se sincroniza y en qué dirección (diseño Fase 2)

| Dato | Entra | Sale | Detalle |
|---|---|---|---|
| Contactos | Sí | Sí | Alta y actualización en ambos sentidos, con el teléfono como identificador |
| Etapa del contacto | Sí | Sí | Cambiarla de un lado la actualiza del otro y puede disparar automatizaciones |
| Etiquetas | Sí | Sí | Útil para segmentar campañas con criterios de tu propio sistema |
| Conversaciones | No | Sí | Se envían como eventos. No se importan historiales de otras plataformas |
| Opt-out | Sí | Sí | Si alguien se da de baja en cualquiera de los dos lados, se respeta en ambos |
| Eventos de negocio | Sí | No | Pagos, pedidos o turnos entran por webhook y disparan flujos |

Lo que resuelve estar conectado:
- **Tienda online**: el pedido se confirma y el cliente recibe el tique y el seguimiento por WhatsApp, sin que nadie lo escriba.
- **ERP y facturación**: se emite la factura y sale por WhatsApp o email al instante, con el comprobante adjunto.
- **Formularios web**: quien completa el formulario entra como contacto con su etapa, listo para que un agente lo tome.
- **Planillas**: los contactos se sincronizan con la hoja de cálculo sin exportar ni importar a mano. Conectar es la mitad; la otra mitad es automatizar: los datos sirven cuando algo se dispara con ellos.

***

# Control de integraciones y lo que ya tienes

Una integración es una puerta; conviene saber quién tiene la llave.
- **Permisos acotados**: cada conexión recibe solo lo que necesita. Una que lee contactos no puede enviar mensajes.
- **Revocación inmediata**: se corta el acceso desde el panel, sin depender del proveedor del otro lado.
- **Registro de actividad**: queda asentado qué integración hizo qué y cuándo.
- **Prueba antes de conectar**: igual que los Agentes IA, se prueba aislada antes de tocar producción.

Lo que ya tienes con WhatsMarketing no se toca; la plataforma nueva se suma, no reemplaza:
- **Todo en Uno**: misma lógica y mismos flujos. Se abre desde el panel nuevo, sin volver a aprenderlo. Se conserva sin cambios.
- **Campañas Masivas**: los envíos siguen tal cual, sin migrar bases ni rehacer campañas. Se conserva sin cambios.
- **Bandeja de conversaciones**: la bandeja compartida del equipo, en el mismo menú que el resto de la plataforma. Integrada.

***

# Preguntas frecuentes

- **¿Puedo enviar una campaña sin plantilla aprobada?** No por la vía oficial: toda campaña sale de una plantilla que Meta aprueba antes. Sin aprobación previa solo existe Campañas Masivas (clásica).
- **¿Cómo se cobra una campaña oficial?** Por mensaje entregado, según tarifa vigente de Meta por país y categoría. El consumo se ve en el panel antes de enviar. Importes en el capítulo 7.
- **¿Puedo probar sin gastar?** Sí: el simulador de campañas es 100% visual y el modo prueba de automatizaciones no consume conversaciones de Meta.
- **¿Necesito Zapier para conectar mi tienda o CRM?** No. Las automatizaciones vienen dentro del plan, sin segunda factura. Los conectores externos y n8n están en el plan de desarrollo (Fase 2).
- **¿Las respuestas de mi campaña llegan a la bandeja?** Con la vía oficial, sí: caen en la bandeja compartida y las atiende tu equipo o un agente IA. Con Campañas Masivas no hay bandeja asociada.

***

# Próximo capítulo

Capítulo 7: Planes y precios públicos.
