package com.unisco.repository;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.awt.print.Pageable;
import java.util.List;

public interface CourseRepository extends JpaRepository<CourseEntity,Long> {
    List<CourseEntity> findByCategory(CategoryEntity cate);

    List<CourseEntity> findByCourseNameLike(String key);

    List<CourseEntity> findByCreatedBy(String createdBy);
}
