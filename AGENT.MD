# 🧠 AGENT.md — SL2000-Next

## 🎯 Objetivo del Proyecto

**SL2000-Next** es una reconstrucción moderna del sistema **SL2000** utilizado por el *Ejército del Aire y del Espacio (España)*, orientado al **seguimiento logístico, control de mantenimiento y gestión de recursos aéreos y terrestres**.

Este nuevo sistema busca aprovechar tecnologías actuales para mejorar:
- Seguridad y trazabilidad de datos.
- Integración entre módulos (logística, mantenimiento, operaciones, personal).
- Interfaz moderna y responsive.
- Automatización de procesos y notificaciones.
- Compatibilidad con despliegue en **entornos Docker**.

---

## ⚙️ Arquitectura Técnica
> **Nota:** Esta arquitectura debe ser consistente con `README.md`.

- **Frontend:** React + Vite
- **Backend:** Node.js (TypeScript) + Express/Fastify
- **Base de datos:** PostgreSQL + Prisma ORM
- **Mensajería / sincronización:** RabbitMQ / Kafka
- **Autenticación:** OpenID Connect + Keycloak
- **Infraestructura:** Docker + Kubernetes + CI/CD
- **Documentación API:** OpenAPI 3.1

---

## 🧩 Estructura del Proyecto

SL2000-Next/
├── backend/
│ ├── src/
│ ├── tests/
│ ├── package.json
│ └── Dockerfile
│
├── frontend/
│ ├── src/
│ ├── public/
│ ├── vite.config.js
│ ├── package.json
│ └── Dockerfile
│
├── docs/
│ ├── architecture.md
│ └── data_model.png
│
├── openapi/
│ └── openapi.yaml
│
├── infra/
│ ├── docker-compose.yml
│ └── kubernetes/
│
├── README.md
└── agent.md

---

## 🤖 Instrucciones para IAs Colaboradoras

**Rol del Agente IA:**
- Asistir en la **generación, revisión y documentación del código.**
- Proponer **mejoras estructurales** y **optimizaciones de rendimiento**.
- Mantener coherencia entre **backend**, **frontend**, **base de datos** y la especificación **OpenAPI**.
- Documentar automáticamente las rutas, esquemas y flujos críticos en JSDoc y Markdown.
- Evitar la generación de datos sensibles o reales relacionados con defensa.

**Pautas de desarrollo:**
- Mantener una arquitectura **limpia y modular**.
- Aplicar principios **SOLID y DRY**.
- Comentar el código clave y generar documentación JSDoc para funciones y clases.
- Validar todas las entradas de la API y sanitizar los datos.
- Priorizar **seguridad**, **rendimiento** y **mantenibilidad**.

---

## 🔐 Roles y Permisos

| Rol | Descripción | Permisos principales |
|-----|--------------|----------------------|
| **Administrador** | Superusuario del sistema | CRUD completo de todos los módulos |
| **Técnico** | Responsable de mantenimiento | Registro y actualización de operaciones |
| **Operador** | Personal de apoyo o piloto | Lectura y solicitud de operaciones |
| **Invitado** | Observador limitado | Lectura parcial de datos |

---

## 🧠 Funcionalidades Clave

- Gestión integral de aeronaves, vehículos y equipos.
- Seguimiento de inventario, piezas y mantenimiento.
- Registro de incidencias y reportes técnicos.
- Panel de control con métricas en tiempo real.
- Sistema de roles con autenticación JWT.
- Exportación de datos (PDF, CSV).
- Soporte multilingüe (ES/EN).

---

## 🧩 Integraciones Futuras

- API REST pública (para sistemas externos).
- Módulo IA predictiva (fallos de mantenimiento).
- Panel táctico para centros operativos.
- Conexión segura con sistemas OTAN y EDA (entorno simulado).

---

## 🧭 Flujo de Desarrollo

1. Crear una rama por feature o módulo:  
   `feature/nombre-modulo`
2. Hacer commits descriptivos:  
   `git commit -m "feat(mantenimiento): añade validación de incidencias"`
3. Testear antes de hacer push:
   ```bash
   npm run test
Crear Pull Request y solicitar revisión de IA o humano.

📘 Estándares de Código
Frontend: ESLint + Prettier + Hooks Rules

Backend: Express + Sequelize ORM

Testing: Jest + Supertest

Commits: Conventional Commits

Documentación: JSDoc + Markdown

💡 Ejemplo de Tarea para la IA
“Crea un módulo en el backend que gestione el inventario de piezas.
Debe incluir rutas REST (GET, POST, PUT, DELETE), validación de datos,
y conexión con PostgreSQL usando Sequelize.”

🚀 Objetivo Final
Desarrollar un sistema modular, seguro y escalable que sirva como base para futuras plataformas de gestión logística militar o civil, preservando la filosofía del SL2000 original con tecnología Next-Gen.

🏷️ Metadatos del Proyecto
Nombre: SL2000-Next

Versión: 1.0.0

Estado: En desarrollo (Pre-Alpha)

Autor: Proyecto colaborativo IA + Humano

Licencia: MIT (personalizable según uso institucional)

yaml
Copiar código

---

¿Quieres que le añada también un **bloque YAML inicial (para agentes como GitHub Copilot o ChatGPT Code Interpreter)** que defina el contexto automáticamente?  
Por ejemplo, algo así:

```yaml
# agent.yaml
context: "Full-stack project: React + Node + PostgreSQL + Docker"
objectives:
  - "Recrear el sistema SL2000 del Ejército del Aire"
  - "Seguridad, trazabilidad y modularidad"
  - "IA colaborativa para desarrollo asistido"