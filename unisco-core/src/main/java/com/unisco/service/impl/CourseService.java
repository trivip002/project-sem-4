package com.unisco.service.impl;

import com.unisco.entity.CourseEntity;
import com.unisco.repository.CourseRepository;
import com.unisco.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService implements ICourseService {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    public List<CourseEntity> getAll() {
        return courseRepository.findAll();
    }
}
