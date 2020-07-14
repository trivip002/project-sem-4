package com.unisco.service;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionDetailEntity;

import java.util.List;

public interface IPromotionService {
    PromotionDetailEntity getPromotion(Long promotionId, Long courseId);
    List<CourseEntity> getCourseByPromotionId(Long promotionId);
    List<CourseEntity> getCourseByPromotionIdMatched(Long promotionId);
    void savePromotionDetailByPromotionIdAndCourseId(Long promotionId, Long courseId);
}
