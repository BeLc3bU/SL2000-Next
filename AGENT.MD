# AGENT.md — SL2000-Next (Documentación técnica para IAs y desarrolladores)

## Resumen ejecutivo
SL2000-Next es un prototipo técnico que replica la lógica del SL2000 (Sistema de Gestión Logística del Ejército del Aire) y su camino hacia SL2000E. Está pensado para ser una base moderna (Node.js / React / PostgreSQL) que permita:

- Gestionar inventarios (NSN/P/N/S/N), reparables y trazabilidad.
- Planificar y registrar mantenimiento por número de serie.
- Gestionar ciclo de compras y recepción.
- Operar en entornos distribuidos (nodos locales + central).
- Cumplir requisitos de seguridad y auditoría.

## Lecciones tomadas de SL2000 histórico
- Arquitectura monolítica cliente/servidor (PowerBuilder) generó problemas de migración y escalabilidad.
- Distribución original: múltiples BDs locales con replicación periódica; lleva a problemas de sincronización y dependencia de hojas de cálculo cuando la interoperabilidad falla.
- Objetivo SL2000E: migración a arquitectura 3 capas, BD central ORACLE, aplicación web Java y disponibilidad 24x7 (planificada dentro del marco de modernización hasta 2026).

## Principios de diseño SL2000-Next
- Separación clara de capas (API, lógica, persistencia).
- Modelo de datos que conserva trazabilidad por S/N y audit log inmutable.
- Sincronización eventual entre nodos con mecanismos de reconciliación.
- Diseño pensado para migración de datos desde SL2000: herramientas ETL y procesos de reconciliación.
- Cumplimiento de requisitos de seguridad (PECAL, ENS como referencia institucional).

## Entidades críticas (resumen)
- **Item**: nsn, part_number, description, unit_of_issue, lifecycle_code.
- **StockRecord**: item_id, location_id, serial_number (S/N), qty, status, last_inventory_date.
- **WorkOrder**: id, item_id, serial_number, assigned_technician_id, status, planned_date, completion_date.
- **MaintenanceRecord**: workorder_id, actions_taken, parts_used, time_spent, technician_id.
- **PurchaseRequest / Order**: requester_id, item_id, qty, priority, supplier_id, status.
- **AuditLog**: entity, entity_id, action, user_id, timestamp, previous_state.

## Flujo de alto nivel
1. Requisición → Aprobación → Orden de compra → Recepción → Integración en stock → Asignación a OT (si aplica) → Mantenimiento → Historial.
2. Nodo local puede operar offline; al reconectar envía eventos a la central (mensajería) para reconciliación.

## Requisitos no funcionales
- Disponibilidad objetivo para prototipo: alta, diseñable para HA (replicas, backups).
- Latencia: consultas de inventario < 200ms en condiciones nominales (objetivo de diseño).
- Seguridad: TLS everywhere, RBAC, MFA para roles con privilegios.
- Auditoría: logs inmutables con retención configurable.

## Tareas inmediatas para la IA/desarrollador
1. Generar esquema ER inicial y migraciones (PostgreSQL).
2. Crear OpenAPI para Items y StockRecord.
3. Implementar servicio backend básico (auth + CRUD Items + CRUD StockRecord).
4. UI mínima (React) con listado y filtros.
5. Mecanismo simple de mensajería (RabbitMQ local) para pruebas de sincronización.

## Migración / ETL
- Preparar scripts ETL para transformar esquemas legacy (PowerBuilder/DB locales) a esquema central.
- Diseñar utilidades de reconciliación y reportes de variación.

## Pautas operativas
- Antes de integrar datos reales: revisión SINFOSEC y autorización administrativa.
- Para pruebas: usar datos dummy y entornos aislados.

## Referencias (resumen integrado)
- Documento didáctico sobre SL2000 y SL2000E (resumen incluido en README).
- Pliego técnico SL2000E (migración a arquitectura 3 capas y Oracle / Java; objetivo 2026).
- Notas internas: centralización en servidores CESTIC y caducidad de plataformas legacy.

---

**Fin de AGENT.md**
