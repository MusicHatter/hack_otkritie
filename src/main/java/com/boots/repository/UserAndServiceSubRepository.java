package com.boots.repository;

import com.boots.entity.UserAndServiceSub;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserAndServiceSubRepository extends JpaRepository<UserAndServiceSub, Long> {
    Optional<UserAndServiceSub> findById(Long id);

    /*@Modifying
    @Query("update UserAndServiceSub u set u.expire = :status where u.id = :id")
    int setStatusForEARAttachment(@Param("status") Integer status, @Param("id") Long id);*/
}
