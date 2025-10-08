# SL2000-Next

## 1. Introducción

**SL2000-Next** es una reconstrucción moderna del sistema de gestión logística y mantenimiento aeronáutico **SL2000**, utilizado por el Ejército del Aire español. Este proyecto tiene como objetivo replicar la funcionalidad del sistema original utilizando una arquitectura tecnológica contemporánea, robusta y escalable.

El sistema está diseñado para gestionar:
- Mantenimiento aeronáutico integral.
- Trazabilidad de repuestos y materiales.
- Control de inventario por base o unidad.
- Planificación de trabajos técnicos.
- Generación de informes y auditorías.

## 2. Arquitectura Tecnológica

El proyecto sigue una arquitectura por capas, desacoplando el frontend, el backend y la persistencia de datos.

- **Frontend:** **React** para una interfaz de usuario web moderna e interactiva.
- **Backend:** **Java** con **Spring Boot**, proporcionando una API RESTful robusta y segura.
- **Base de Datos:** **Oracle Database**, gestionada con **JPA/Hibernate** para la persistencia de datos.
- **Infraestructura y Despliegue:** **Docker** y **Docker Compose** para crear un entorno de desarrollo y producción consistente y reproducible.

## 3. Estructura del Proyecto

El repositorio está organizado en los siguientes módulos principales:

```
SL2000-Next/
│
├── backend/         # Lógica de negocio (API REST con Spring Boot)
├── frontend/        # Interfaz de usuario (React)
├── database/        # Scripts de base de datos y configuración de Docker
├── docs/            # Documentación del proyecto
└── .gitignore
```

## 4. Puesta en Marcha (Getting Started)

Para levantar el entorno completo (backend, frontend y base de datos), solo necesitas tener **Docker** y **Docker Compose** instalados.

1.  **Clona el repositorio:**
    ```bash
    git clone <URL-DEL-REPOSITORIO>
    cd SL2000-Next
    ```

2.  **Levanta los servicios con Docker Compose:**
    Desde la raíz del proyecto, ejecuta el siguiente comando. Se encargará de construir las imágenes y orquestar los contenedores.
    ```bash
    docker-compose up --build
    ```

3.  **Verifica el estado:**
    - La API del **backend** estará disponible en `http://localhost:8080`.
    - Puedes probar la conexión con la base de datos accediendo a `http://localhost:8080/api/health`.
    - El **frontend** estará disponible en `http://localhost:3000`.

## 5. Flujo de Trabajo

El desarrollo se guía por un **proceso ágil por sprints**, donde cada sprint se enfoca en un conjunto de funcionalidades específicas, desde la configuración inicial hasta el despliegue final. Puedes consultar el estado de los sprints en el archivo `project_issues.yml`.