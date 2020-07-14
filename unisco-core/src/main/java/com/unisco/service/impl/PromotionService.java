package com.unisco.service.impl;
import com.unisco.entity.PromotionEntity;
import com.unisco.repository.PromotionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class PromotionService {
    @Autowired
    private PromotionRepository promotionRepository;

    public PromotionEntity findOneByPromoId(Long promotionId) {
        return promotionRepository.findOne(promotionId);
    }
    public List<PromotionEntity> getAll() {
        return promotionRepository.findAll();
    }
    public PromotionEntity save(PromotionEntity promo){
        return promotionRepository.save(promo);
    }
    public List<PromotionEntity> getByNameLike(String promotionCode) {
        return promotionRepository.findByPromotionCodeLike(promotionCode);
    }
    public Long getPromotionIdByPromotionCode(String promotionCode){
        return promotionRepository.findOneByPromotionCode(promotionCode).getPromotionId();
    }
}
