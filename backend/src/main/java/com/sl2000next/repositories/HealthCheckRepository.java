package com.sl2000next.repositories;

import com.sl2000next.models.HealthCheck;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositorio para acceder a los datos de la tabla health_check.
 */
@Repository
public interface HealthCheckRepository extends JpaRepository<HealthCheck, Long> {
}