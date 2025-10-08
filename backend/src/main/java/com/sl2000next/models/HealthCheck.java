package com.sl2000next.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDateTime;

/**
 * Entidad que mapea la tabla 'health_check' para verificar la conexión a la BD.
 */
@Entity
@Table(name = "health_check")
public class HealthCheck {

    @Id
    private Long id;

    @Column(name = "status")
    private String status;

    @Column(name = "check_time")
    private LocalDateTime checkTime;

    // Getters y Setters

    public Long getId() {
        return id;
    }

    public String getStatus() {
        return status;
    }

    public LocalDateTime getCheckTime() {
        return checkTime;
    }
}