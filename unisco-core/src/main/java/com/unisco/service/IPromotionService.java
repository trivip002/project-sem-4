package com.unisco.service;

import com.unisco.entity.PromotionDetailEntity;

public interface IPromotionService {
    PromotionDetailEntity getPromotion(Long promotionId, Long courseId);
}
