package com.unisco.repository;

import com.unisco.entity.CourseEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseRepository extends JpaRepository<CourseEntity,Long> {
    List<CourseEntity> findAll();
}
