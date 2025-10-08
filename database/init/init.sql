-- Este script se ejecuta al iniciar la base de datos para crear el esquema inicial.
-- Por ahora, creamos una tabla simple para verificar la conexión.

CREATE TABLE health_check (
    id NUMBER(10) NOT NULL,
    status VARCHAR2(50) NOT NULL,
    check_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO health_check (id, status) VALUES (1, 'Database Ready');
COMMIT;