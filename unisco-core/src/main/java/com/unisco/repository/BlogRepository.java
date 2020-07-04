package com.unisco.repository;
import com.unisco.entity.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
public interface BlogRepository extends JpaRepository<BlogEntity,Long> {
    List<BlogEntity> findAll();
}
