package com.unisco.repository;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SectionRepository extends JpaRepository<SectionEntity, Long> {
    List<SectionEntity> findByCourseOrderBySectionId(CourseEntity courseEntity);
}
