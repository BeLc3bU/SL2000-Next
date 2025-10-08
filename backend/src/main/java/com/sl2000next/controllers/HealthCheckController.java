package com.sl2000next.controllers;

import com.sl2000next.models.HealthCheck;
import com.sl2000next.repositories.HealthCheckRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Controlador para verificar el estado de la aplicación y la conexión a la BD.
 */
@RestController
@RequestMapping("/api/health")
public class HealthCheckController {

    @Autowired
    private HealthCheckRepository healthCheckRepository;

    @GetMapping
    public ResponseEntity<List<HealthCheck>> checkDatabaseConnection() {
        List<HealthCheck> healthStatus = healthCheckRepository.findAll();
        return ResponseEntity.ok(healthStatus);
    }
}