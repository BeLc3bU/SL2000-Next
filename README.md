# SL2000-Next

![SL2000-Next Logo](docs/logo.png)  <!-- opcional si tienes logo -->

## 🚀 Objetivo del proyecto
**SL2000-Next** es una reconstrucción técnica moderna del **SL2000** (Sistema de Gestión Logística Integrado del Ejército del Aire y del Espacio, España).  
El objetivo es modelar y prototipar la funcionalidad operativa del SL2000/SL2000E usando tecnologías actuales (Node.js, PostgreSQL, React, Docker), con énfasis en:

- Gestión de inventario (NSN / P/N / S/N), reparables y trazabilidad.
- Órdenes de trabajo y mantenimiento por número de serie.
- Ciclo de aprovisionamiento y compras.
- Arquitectura distribuida (nodo central + nodos locales) con sincronización.
- Seguridad, auditoría y cumplimiento normativo (PECAL / ENS como referencia).

> Nota: SL2000 es un sistema real con décadas de operación. Este repositorio implementa una **versión técnica/prototipo** que replica la lógica funcional (no acceso a datos clasificados ni integración con infraestructuras reales).

---

## 🏛 Contexto histórico (resumen técnico)
- SL2000 entró en servicio a finales de los años 90 para sustituir limitaciones del SND y centralizar la gestión logística de flotas y material.  
- Arquitectura original: cliente/servidor (PowerBuilder), con múltiples bases de datos distribuidas (originalmente ~46 BD, creciendo a ~50+), replicación periódica y nodos locales.  
- Estado: obsolescencia tecnológica por uso de tecnologías antiguas (PowerBuilder, Windows Server antiguas) y necesidad de migración a solución moderna (SL2000E).  
- SL2000E: planificado para migración completa con arquitectura 3 capas, base de datos central Oracle, aplicación web Java y entrada en servicio prevista en el marco de modernización (hitos hasta 2026). SL2000E pretende 24x7 de disponibilidad, interoperabilidad con bases de datos conjuntas (ej.: NH90) y capacidad de incorporar tecnologías 4.0 (IA, Big Data, AR, 5G).

---

## 🏗️ Arquitectura técnica propuesta (SL2000-Next)
- **Backend:** Node.js (TypeScript) + Express/Fastify  
- **Frontend:** React + Vite  
- **Base de datos:** PostgreSQL (esquema multi-tenant / particionado; posibilidad de réplica y sincronización)  
- **Mensajería / sincronización:** Kafka o RabbitMQ para replicación y colas de eventos entre nodos  
- **Autenticación:** OpenID Connect / JWT + MFA; RBAC por roles (Administrador, Técnico, Operador, Invitado)  
- **Infra:** Docker + Kubernetes (manifests/Helm) + GitHub Actions para CI/CD  
- **Observability:** Prometheus + Grafana + ELK/Opensearch para logs y auditoría inmutable  
- **Testing:** Jest + Supertest (backend), Vitest (frontend)

---

## 📂 Estructura de carpetas sugerida
SL2000-Next/
│
├─ backend/
│ ├─ src/
│ ├─ tests/
│ └─ Dockerfile
│
├─ frontend/
│ ├─ src/
│ └─ Dockerfile
│
├─ docs/ # Diagramas, pliegos y referencias
│ ├─ architecture.md
│ ├─ data_model.png
│ └─ SL2000_references.md # resumen de SL2000/SL2000E incorporado
│
├─ openapi/
│ └─ openapi.yaml
│
├─ infra/
│ └─ docker-compose.yml
│
├─ project_issues/
│ └─ SL2000-Next_Issues.docx
│
├─ agent.yaml
├─ agent.md
├─ prompt_master.txt
└─ README.md


---

## ⚙️ Cómo usar (rápido)
1. Clona el repositorio:
   ```bash
   git clone https://github.com/TU_USUARIO/SL2000-Next.git
   cd SL2000-Next
   ```
2. Arranca con Docker Compose (la configuración se encuentra en la carpeta `/infra`):
   ```bash
   docker-compose -f infra/docker-compose.yml up --build
   ```
   - **Backend:** http://localhost:3000
   - **Frontend:** http://localhost:5173

🗂 Issues por Sprint
El desarrollo está organizado por sprints (0–6). Consulta project_issues/SL2000-Next_Issues.docx para copiar/pegar las tareas en GitHub Issues.

🔐 Seguridad y cumplimiento
Este prototipo no conecta con sistemas reales ni datos clasificados.

En un despliegue real se deben cumplir normas aplicables (PECAL, Esquema Nacional de Seguridad (ENS), y otras políticas MINISDEF).

Toda integración con infraestructuras reales requiere autorización administrativa y revisiones SINFOSEC.

📜 Licencia
MIT License © 2025
