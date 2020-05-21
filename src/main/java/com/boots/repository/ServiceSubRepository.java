package com.boots.repository;

import com.boots.entity.ServiceSub;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceSubRepository extends JpaRepository<ServiceSub, Long> {
    ServiceSub findByName(String name);
}
