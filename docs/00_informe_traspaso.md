# Informe de traspaso: Base de Conocimiento WhatsMarketing

Documento para reutilizar esta base de conocimiento en otro proyecto de Claude Code (por ejemplo, el bot de WhatsApp de ventas +51 920 960 232 o el BOT IA Casi Humano de la web).

- **Repositorio:** `whatsmarketinges/whatsmarketing-knowledge-base`
- **Rama estable:** `main` (último cambio de contenido: 2026-09-16, "plataforma omnicanal propia y capítulos 5 a 11 desde la web nueva; sin Respond.io")
- **Fecha del informe:** 2026-10-03
- **Tamaño:** 11 capítulos, aproximadamente 2.800 líneas de Markdown en español neutro.
- **Fuente del contenido:** páginas de la web renovada whatsmarketing.es (proyecto `whatsmarketing-renovacion`, 2026-09-16) más el manual maestro v1.0 de julio de 2026.

***

# 1. Qué es y para qué sirve

Fuente única de conocimiento de WhatsMarketing para alimentar agentes de IA (el BOT IA Casi Humano de la plataforma propia, ChatGPT, Gemini, Claude, agentes n8n) y a los equipos humanos (Comercial, Customer Success, Soporte, Partners).

Está escrita para RAG: secciones cortas, un tema por bloque, listas de bullets, separadores `***` entre bloques, y respuestas listas para copiar ("Respuestas rápidas para ventas", "Guion rápido para el bot y el comercial", "Cómo hablar de estos casos").

**Importante:** este repositorio es solo Markdown. No contiene ningún pipeline, webhook ni conexión con `chat.whatsmarketing.es`. La carga de estos archivos en la base de conocimiento del bot la hace un proceso externo al repo.

***

# 2. Estructura

```
whatsmarketing-knowledge-base/
├── README.md                                            Cap. 1  Empresa, Meta Tech Provider, índice, roadmap
└── docs/
    ├── 00_informe_traspaso.md                           Este documento
    ├── 02_soluciones_whatsapp.md                        Cap. 2  API Oficial vs Campañas Masivas
    ├── 03_plataforma_omnicanal.md                       Cap. 3  Plataforma Omnicanal WhatsMarketing (propia)
    ├── 04_meta_business_api.md                          Cap. 4  WhatsApp Business Platform / Cloud API
    ├── 05_bot_ia_y_agentes.md                           Cap. 5  BOT IA Casi Humano y Agentes IA
    ├── 06_campanas_automatizaciones_integraciones.md    Cap. 6  Campañas, plantillas, automatizaciones, integraciones
    ├── 07_planes_y_precios.md                           Cap. 7  Planes, precios públicos, cambio de proveedor
    ├── 08_soluciones_por_sector.md                      Cap. 8  Soluciones por sector
    ├── 09_casos_de_exito_y_clientes.md                  Cap. 9  Casos de éxito y clientes
    ├── 10_preguntas_frecuentes_y_objeciones.md          Cap. 10 FAQ y objeciones comerciales
    └── 11_contacto_demo_y_alta.md                       Cap. 11 Contacto, demo en vivo, alta, migración, soporte
```

Convenciones: un archivo por capítulo numerado `NN_tema.md`; títulos `#` por bloque; cada capítulo cierra con "Próximo capítulo".

***

# 3. Historial

| Fecha | Cambio |
|-------|--------|
| 2026-07-14 | v1.0: README (empresa), cap. 2 (soluciones), cap. 3 (Respond.io), cap. 4 (Meta API). 11 commits. |
| 2026-09-16 | v2.0: cap. 3 reescrito para la plataforma propia, se elimina `03_respondio.md`, README y cap. 4 sin Respond.io, nuevos caps. 5 a 11. |
| 2026-10-03 | Se agrega este informe de traspaso. |

**Respond.io ya no forma parte de la propuesta.** Cualquier copia de la base anterior al 16 de septiembre de 2026 está desactualizada y no debe usarse.

***

# 4. Contenido por capítulo

## Cap. 1 · README: Empresa
- WhatsMarketing: comunicación conversacional, automatización e IA sobre WhatsApp Business API y campañas masivas. Desde 2015, 11 años, Argentina, España y Latinoamérica. Webs whatsmarketing.es y whatsmarketing.com.ar.
- Misión, visión, valores. Meta Verified Tech Provider (implementaciones oficiales sobre Cloud API).
- Dos líneas de servicio: WhatsApp Business Platform (API Oficial) y Campañas Masivas WhatsApp.
- Índice de los 11 capítulos y roadmap.

## Cap. 2 · Soluciones de Comunicación Conversacional
- Metodología consultiva: diagnóstico previo (objetivos, volumen, automatización, CRM/ERP, IA, presupuesto, escalabilidad).
- API Oficial: características, casos de uso, beneficios. Campañas masivas: casos de uso, beneficios.
- Tabla comparativa de 16 criterios y reglas de recomendación: atención continua e integraciones → API Oficial; difusión puntual y volumen → Masivas; muchos proyectos combinan ambas.

## Cap. 3 · Plataforma Omnicanal WhatsMarketing (propia)
- Multicanal vs omnicanal vs omnicanal con IA.
- Canales: WhatsApp (principal, API oficial), Instagram, Messenger, Telegram, TikTok, Webchat, Email, SMS, Voz. El Agente IA opera como capa sobre todos con la misma base de conocimiento.
- Bandeja compartida: asignación automática, manual y por reglas de equipo. Roles Agente y Supervisor. Recomendaciones según tamaño de equipo (1-2, 4, 5 o más).
- Notas internas y pase bot-persona. CRM integrado en la conversación: etapas Nuevo Lead, Calificado, Cliente, Perdido; etiquetas, segmentos, baja; automatizaciones desde la ficha.
- Reportes: por equipo, por canal, por franja horaria, cumplimiento de SLA, exportables CSV/Excel/PDF programados.
- Ventana de 24 horas y plantillas en 1 a 1. Por qué la app WhatsApp Business no alcanza para un equipo (6 diferencias).
- Integraciones con el CRM actual. Clientes de antes de 2026: panel clásico (whatsmarketing.es/servidordedicado), tienda de créditos (whatsmarketing.es/shop), Campañas Masivas clásicas. FAQ.

## Cap. 4 · WhatsApp Business Platform (API Oficial de Meta)
- Qué es, diferencias con WhatsApp Business App, cuándo migrar a la API Oficial, beneficios.
- Arquitectura recomendada: Cliente → WhatsApp → Cloud API Meta → Plataforma WhatsMarketing → AI Agents → Automatizaciones → CRM → ERP → BD → Dashboards → BI.
- Cambio de Meta desde el 1 de octubre de 2026: el modelo por categorías de conversación evoluciona a uno que contempla automatizaciones e IA dentro de la ventana de servicio.

## Cap. 5 · BOT IA Casi Humano y Agentes IA
- Tres niveles de autonomía: Nivel 1 Bot IA Inicial (FAQ con tono de marca, deriva si no sabe); Nivel 2 Agente IA Comercial (califica leads, CRM, agenda, cotiza con lista de precios, objeciones, seguimiento); Nivel 3 Agente IA Casi Humano (cotiza en firme, pedidos y stock desde ERP, acciones en herramientas, voz, memoria larga, reglas de derivación obligatorias).
- Personalidad, conocimiento (FAQ, catálogo, documentos propios; nada inventado) y memoria entre conversaciones.
- Manejo de objeciones ("es caro", "lo tengo que pensar", "mándame info", "estoy viendo otras opciones") y cadencia de seguimiento (mismo día, 48 h, pasada la semana con plantilla aprobada).
- Reglas de derivación en lenguaje simple: enojo, reclamo formal, caso fuera de la base de conocimiento, el cliente lo pide.
- Casos de uso: atención al cliente, calificación de leads, cobranzas ("ya pagué", "esa deuda no es mía", "no puedo ahora").
- Por qué un agente IA en WhatsApp no es un chatbot de web. Onboarding en 4 pasos con simulador. Sistema interno de 13 agentes especializados. Demo en vivo: es el mismo agente de producción conectado a esta base de conocimiento.

## Cap. 6 · Campañas, Automatizaciones e Integraciones
- Campañas oficiales: creación, segmentación, programación, estados, métricas, validación y simulador.
- Plantillas de Meta: cuándo hacen falta, composición, categorías Marketing / Utility / Authentication, aprobación, estados y motivos de rechazo, ejemplos y editor propio.
- Límites de envío de Meta y calidad del número. Consentimiento (opt-in). Cambio de Meta del 1 de octubre de 2026.
- Campañas Masivas clásicas (no oficiales) y criterio "clásica u oficial".
- Automatizaciones: disparador, condición, acción; disparadores y casos de uso; flujo de reglas o Agente IA; programación de mensajes; pruebas y controles.
- Integraciones: catálogo, estado, webhooks, qué se sincroniza y en qué dirección (diseño Fase 2). FAQ.

## Cap. 7 · Planes y Precios Públicos
- Estructura: plan fijo mensual + mensajes según tarifa de Meta (precio visible antes de enviar) + Agente IA premium opcional. Sin costo de alta, sin permanencia. Precios fijos por moneda, sin impuestos.
- Planes de plataforma:

| Plan | USD | EUR | ARS | MXN |
|------|-----|-----|-----|-----|
| Starter | 19 / mes | 17 € / mes | 29.000 / mes | 329 / mes |
| Pyme (recomendado) | 110 / mes | 95 € / mes | 169.000 / mes | 1.899 / mes |
| Enterprise | a medida | | | |

- Agentes IA premium (USD, iguales en España, Argentina y México):

| Nivel | Puesta en marcha | Mensualidad |
|-------|------------------|-------------|
| BOT IA Premium | USD 190 | USD 69 / mes |
| Agente IA Comercial (el más elegido) | USD 490 | USD 159 / mes |
| Agente IA Casi Humano | USD 750 | USD 295 / mes |

- Qué se paga a Meta: mensajes Service (franquicia de 1.000 por número), plantillas salientes, calculadora en la página de Precios, guía PDF gratuita con tarifas del 1 de octubre de 2026.
- Llamadas por WhatsApp con Voz IA: minutos adicionales USD 0,25.
- Campañas Masivas clásicas: USD 349 por 1.000 mensajes (USD 0,35 por mensaje), plantilla de utilidad.
- Cambio de proveedor sin perder el número: qué se conserva, 4 pasos, qué tener listo. "Respuestas rápidas para ventas" con frases de cierre.

## Cap. 8 · Soluciones por Sector
Para cada sector: situaciones que resuelve, conversación de ejemplo, piezas de la solución y llamada a la acción. Sectores: Laboratorios, Comercio electrónico, Servicios profesionales y legales, Finanzas y seguros, Viajes y turismo, Educación y empleo.

## Cap. 9 · Casos de Éxito y Clientes
- Clientes que muestra la web. Caso Belchamp Automotriz (concesionario). Caso Pontificia Universidad Javeriana (educación). Cobranzas en bancos, fintech y telecomunicaciones.
- Qué tienen en común y cómo hablar de los casos.

## Cap. 10 · Preguntas Frecuentes y Objeciones
Bloques: WhatsApp Business API y Meta; plataforma omnicanal y multiagente; BOT IA y agentes; campañas y plantillas; integraciones y automatizaciones; seguridad y cumplimiento; alta, migración y clientes actuales; soporte y contacto; objeciones frecuentes con respuesta sugerida.

## Cap. 11 · Contacto, Demo en Vivo y Alta
- Formas de contacto: formulario por motivo (Comercial por defecto), WhatsApp de ventas `wa.me/51920960232`, chat con el BOT IA en la web (escribir, audio o llamada), agenda de reunión. No hay email publicado.
- Oficinas: España, Calle Maestra Ángeles Aspiazu, Fuengirola, Málaga (29640), +34 902 992 686. Argentina, Av. del Libertador 1417, Olivos, Buenos Aires, +54 9 11 2679 9730. México: apertura comercial en curso.
- Horarios: el agente IA atiende 24 horas; una persona responde en horario comercial.
- Alta: registro y primer acceso, verificación del número con Meta (Embedded Signup), plantillas y primeros pasos, cambio de proveedor, acceso de clientes anteriores al panel clásico, soporte.
- "Guion rápido para el bot y el comercial".

***

# 5. Reglas de uso para el bot que consuma esta base

1. Respetar el tono consultivo: diagnosticar antes de recomendar; no empujar una sola tecnología.
2. Usar solo los precios del capítulo 7. No calcular márgenes ni inventar descuentos. Para Enterprise o migraciones, derivar a "Hablar con ventas".
3. Si la respuesta no está en la base, decirlo y derivar a una persona. No improvisar.
4. Derivar siempre cuando hay enojo, reclamo formal, deuda disputada o el cliente pide hablar con alguien.
5. Cierre recomendado en conversaciones de precio: demo con la información del cliente o alta gratuita ("Empezar gratis" / "Crear mi cuenta").
6. No mencionar Respond.io. La plataforma es propia: chat.whatsmarketing.es.
7. Datos de contacto y número de WhatsApp: solo los del capítulo 11.

***

# 6. Cómo cargarlo en otro proyecto de Claude Code

```bash
git clone https://github.com/whatsmarketinges/whatsmarketing-knowledge-base.git
cd whatsmarketing-knowledge-base
cat README.md docs/0[2-9]_*.md docs/1[01]_*.md
```

Prompt sugerido para el proyecto destino:

> Usa README.md y docs/02 a docs/11 del repositorio whatsmarketing-knowledge-base como base de conocimiento del bot de WhatsApp de WhatsMarketing. Sigue las "Reglas de uso para el bot" de docs/00_informe_traspaso.md. La plataforma es propia (chat.whatsmarketing.es); Respond.io no existe en la oferta. Precios y contactos: solo los de los capítulos 7 y 11.

***

# 7. Pendientes y limitaciones conocidas

- La base no contiene métricas ni estadísticas del bot. Esas viven en chat.whatsmarketing.es y en Meta Business Manager.
- Los precios y tarifas de Meta cambian; el capítulo 7 refleja la página de Precios al 2026-09-16. Revisar tras cada actualización de la web.
- México: dirección y teléfono a confirmar.
- Integraciones: el detalle de sincronización está marcado como "diseño Fase 2".
- Capítulos previstos y aún no escritos: Gobierno y Licitaciones, arquitectura técnica Enterprise, playbook comercial completo.
