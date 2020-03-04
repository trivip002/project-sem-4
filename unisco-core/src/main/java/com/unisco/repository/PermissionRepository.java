package com.unisco.repository;

import com.unisco.entity.PermissionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PermissionRepository extends JpaRepository<PermissionEntity, Long> {
    PermissionEntity findByPermissionCode(String permissionCode);
}
