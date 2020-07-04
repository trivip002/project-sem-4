package com.unisco.repository;
import com.unisco.entity.BlogCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogCategoryRepository extends JpaRepository<BlogCategoryEntity,Long> {
    List<BlogCategoryEntity> findAll();
}
