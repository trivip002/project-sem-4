package com.unisco.service;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;

import java.util.List;

public interface ICourseService {
    List<CourseEntity> getAll();

    CourseEntity getById(Long id);

    List<CourseEntity> getCourseByCat(CategoryEntity categoryEntity);

    void saveOrUpdate(CourseEntity courseEntity);

    List<CourseEntity> getByNameLike(String key);
}

