package com.unisco.service;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;

import java.util.List;

public interface ISectionService {
    List<SectionEntity> getAll();
    SectionEntity getOneById(Long id);
    void saveOrUpdate(SectionEntity sectionEntity);
    List<SectionEntity> getByCourseEntityOrderBySectionId(CourseEntity courseEntity);
}
