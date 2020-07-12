package com.unisco.repository;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionDetailEntity;
import com.unisco.entity.PromotionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PromotionDetailRepository extends JpaRepository<PromotionDetailEntity, Long>{
    List<PromotionDetailEntity> findAll();
    PromotionDetailEntity findOneByCourseAndPromotion(CourseEntity course, PromotionEntity promotion);
    List<PromotionDetailEntity> findByPromotion_PromotionCodeLike(String key);
    List<PromotionDetailEntity> findByPromotion(PromotionEntity promotionEntity);
}
