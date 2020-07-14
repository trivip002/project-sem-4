package com.unisco.service.impl;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.repository.CourseRepository;
import com.unisco.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CourseService implements ICourseService {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    public List<CourseEntity> getAll() {
        return courseRepository.findAll();
    }

    @Override
    public List<CourseEntity> getAllCourseActive() {
        return courseRepository.findAll().stream().filter(item->item.getIsActive()==1).collect(Collectors.toList());
    }

    @Override
    public CourseEntity getById(Long id) {
        return courseRepository.findOne(id);
    }

    @Override
    public List<CourseEntity> getCourseByCat(CategoryEntity categoryEntity) {
        return courseRepository.findByCategory(categoryEntity);
    }

    @Override
    public void saveOrUpdate(CourseEntity courseEntity) {
        courseRepository.save(courseEntity);
    }

    @Override
    public List<CourseEntity> getByNameLike(String key) {
        return courseRepository.findByCourseNameLike(key);
    }

    @Override
    public List<CourseEntity> getByUserName(String userName) {
        return courseRepository.findByCreatedBy(userName);
    }

}
