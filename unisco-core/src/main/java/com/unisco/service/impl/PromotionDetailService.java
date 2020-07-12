package com.unisco.service.impl;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionDetailEntity;
import com.unisco.entity.PromotionEntity;
import com.unisco.entity.composite.PromotionDetailKey;
import com.unisco.repository.CourseRepository;
import com.unisco.repository.PromotionDetailRepository;
import com.unisco.repository.PromotionRepository;
import com.unisco.service.IPromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class PromotionDetailService implements IPromotionService {
    @Autowired
    private PromotionDetailRepository promotiondetailRepository;

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private PromotionRepository promotionRepository;

    public List<PromotionDetailEntity> getAll()
    {
        return promotiondetailRepository.findAll();
    }

    @Override
    public PromotionDetailEntity getPromotion(Long promotionId, Long courseId) {
        return promotiondetailRepository.findOneByCourseAndPromotion(courseRepository.findOne(courseId),promotionRepository.findOne(promotionId));
    }

    @Override
    public List<CourseEntity> getCourseByPromotionId(Long promotionId) {
        List<PromotionDetailEntity> promotionDetailEntity = promotiondetailRepository.findByPromotion(promotionRepository.findOne(promotionId));
        List<CourseEntity> courseEntities = courseRepository.findAll();
        List<CourseEntity> coursesOfPromotion = new ArrayList<>();
        List<Long> coursesOfPromotionId =new ArrayList<>();
        promotionDetailEntity.forEach(item-> coursesOfPromotion.add(item.getCourse()));
        coursesOfPromotion.forEach(item->coursesOfPromotionId.add(item.getCourseId()));
        courseEntities.removeIf(item->coursesOfPromotionId.contains(item.getCourseId()));
        return courseEntities;
    }

    @Override
    public void savePromotionDetailByPromotionIdAndCourseId(Long promotionId, Long courseId) {
        PromotionEntity promotionEntity = promotionRepository.findOne(promotionId);
        CourseEntity courseEntity = courseRepository.findOne(courseId);
        PromotionDetailEntity promotionDetailEntity = new PromotionDetailEntity();
        promotionDetailEntity.setPromotion(promotionEntity);
        promotionDetailEntity.setCourse(courseEntity);
        PromotionDetailKey promotionDetailKey = new PromotionDetailKey();
        promotionDetailKey.setCourseId(courseId);
        promotionDetailKey.setPromotionId(promotionId);
        promotionDetailEntity.setId(promotionDetailKey);
        promotiondetailRepository.save(promotionDetailEntity);
    }

    public List<PromotionDetailEntity> getByNameLike(String searchDetail) {
        return promotiondetailRepository.findByPromotion_PromotionCodeLike(searchDetail);
    }
}
