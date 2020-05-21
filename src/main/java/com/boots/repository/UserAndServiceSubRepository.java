package com.boots.repository;

import com.boots.entity.UserAndServiceSub;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserAndServiceSubRepository extends JpaRepository<UserAndServiceSub, Long> {
    Optional<UserAndServiceSub> findById(Long id);
}
