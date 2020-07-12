package com.unisco.service.impl;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;
import com.unisco.repository.SectionRepository;
import com.unisco.service.ISectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectionService implements ISectionService {

    @Autowired
    private SectionRepository sectionRepository;

    @Override
    public List<SectionEntity> getAll() {
        return sectionRepository.findAll();
    }

    @Override
    public SectionEntity getOneById(Long id) {
        return sectionRepository.findOne(id);
    }

    @Override
    public void saveOrUpdate(SectionEntity sectionEntity) {
        sectionRepository.save(sectionEntity);
    }

    @Override
    public List<SectionEntity> getByCourseEntityOrderBySectionId(CourseEntity courseEntity) {
        return sectionRepository.findByCourseOrderBySectionId(courseEntity);
    }
}
