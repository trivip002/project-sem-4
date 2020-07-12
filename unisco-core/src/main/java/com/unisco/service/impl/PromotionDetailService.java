package com.unisco.service.impl;
import com.unisco.entity.PromotionDetailEntity;
import com.unisco.repository.CourseRepository;
import com.unisco.repository.PromotionDetailRepository;
import com.unisco.repository.PromotionRepository;
import com.unisco.service.IPromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

    public PromotionDetailEntity save(PromotionDetailEntity promoDetail){
        return promotiondetailRepository.save(promoDetail);
    }

    @Override
    public PromotionDetailEntity getPromotion(Long promotionId, Long courseId) {
        return promotiondetailRepository.findOneByCourseAndPromotion(courseRepository.findOne(courseId),promotionRepository.findOne(promotionId));
    }

}
