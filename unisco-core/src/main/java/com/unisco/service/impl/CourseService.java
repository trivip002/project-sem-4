package com.unisco.service.impl;

import com.unisco.entity.CourseEntity;
import com.unisco.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepository;
    public List<CourseEntity> getAll() {
        return courseRepository.findAll();
    }
}
