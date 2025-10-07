# SL2000-Next

![SL2000-Next Logo](docs/logo.png)

[![Estado del Build](https://img.shields.io/github/actions/workflow/status/TU_USUARIO/SL2000-Next/main.yml?branch=main&style=for-the-badge)](https://github.com/TU_USUARIO/SL2000-Next/actions)
[![Cobertura de Código](https://img.shields.io/codecov/c/github/TU_USUARIO/SL2000-Next?style=for-the-badge)](https://codecov.io/gh/TU_USUARIO/SL2000-Next)
[![Issues Abiertas](https://img.shields.io/github/issues/TU_USUARIO/SL2000-Next?style=for-the-badge)](https://github.com/TU_USUARIO/SL2000-Next/issues)
[![Licencia](https://img.shields.io/github/license/TU_USUARIO/SL2000-Next?style=for-the-badge)](LICENSE)

> **Nota:** No olvides reemplazar `TU_USUARIO` en las URLs de los badges con tu nombre de usuario de GitHub.

---

## 🚀 Objetivo del proyecto
SL2000-Next es un sistema logístico integral inspirado en el **SL2000 del Ejército del Aire**, modernizado con arquitectura modular, segura y escalable.  
Su propósito es gestionar inventario, mantenimiento, aprovisionamiento y trazabilidad de equipos de manera eficiente.

---

## 🏗️ Arquitectura general
- **Backend:** Node.js (TypeScript) + Express/Fastify  
- **Frontend:** React + Vite  
- **Base de datos:** PostgreSQL + Prisma ORM  
- **Mensajería / sincronización:** RabbitMQ / Kafka  
- **Autenticación:** OpenID Connect + Keycloak  
- **Infraestructura:** Docker + Kubernetes + CI/CD  
- **Documentación API:** OpenAPI 3.1  

---

## 📂 Estructura de carpetas sugerida
```bash
SL2000-Next/
│
├─ backend/ # Código del servidor
│ ├─ src/
│ ├─ tests/
│ └─ package.json
│
├─ frontend/ # Aplicación web React
│ ├─ src/
│ ├─ public/
│ └─ package.json
│
├─ docs/ # Documentación técnica y diagramas
│ ├─ architecture.md
│ ├─ data_model.png
│ └─ README.md
│
├─ openapi/ # Especificaciones API
│ └─ openapi.yaml
│
├─ infra/ # Docker, Kubernetes y CI/CD
│ ├─ docker-compose.yml
│ └─ kubernetes/
```

---

## 🛠️ Cómo empezar

### Prerrequisitos
- Docker y Docker Compose
- Node.js (versión recomendada: 20.x o superior)
- Git

### Instalación y ejecución
1.  **Clona el repositorio:**
    ```bash
    git clone https://github.com/TU_USUARIO/SL2000-Next.git
    cd SL2000-Next
    ```

2.  **Levanta los servicios con Docker Compose:**
    ```bash
    docker-compose up --build
    ```

3.  **Accede a los servicios:**
    - **Backend:** `http://localhost:3000`
    - **Frontend:** `http://localhost:5173`

---

## 🗂️ Gestión de Tareas (Issues)
El desarrollo está organizado por sprints (0–6). Todas las tareas, bugs e hitos se gestionan directamente en **GitHub Issues**.

Utilizamos etiquetas (`labels`) para organizar las issues por sprint (ej: `sprint-0`, `sprint-1`) y por tipo (ej: `bug`, `feature`, `documentation`).

Sprint destacados:
- **Sprint 0:** Planificación y diseño técnico
- **Sprint 1:** Inventario y autenticación
- **Sprint 2:** Mantenimiento y trazabilidad
- **Sprint 3:** Aprovisionamiento y compras
- **Sprint 4:** Sincronización distribuida
- **Sprint 5:** Seguridad y cumplimiento
- **Sprint 6:** Optimización y visualización

---

## 📖 Cómo Contribuir
1.  Haz un **fork** de este repositorio.
2.  Crea una nueva rama para tu feature o bugfix (`git checkout -b feature/nombre-feature`).
3.  Realiza tus cambios y haz **commit** (`git commit -m 'feat: Agrega nueva funcionalidad'`).
4.  Envía tus cambios a tu fork (`git push origin feature/nombre-feature`).
5.  Abre un **Pull Request** hacia la rama `main` de este repositorio.

⚡ Notas adicionales
Mantén consistencia en commits y mensajes (feat:, fix:, docs:)

Todas las APIs deben documentarse en /openapi/openapi.yaml

Los tests deben pasar antes de mergear a main

📜 Licencia
MIT License © 2025
