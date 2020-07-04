package com.unisco.repository;
import com.unisco.entity.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<CategoryEntity, Long>{
    List<CategoryEntity> findAll();
}
