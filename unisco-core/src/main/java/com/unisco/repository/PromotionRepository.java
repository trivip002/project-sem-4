package com.unisco.repository;
import com.unisco.entity.PromotionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PromotionRepository extends JpaRepository<PromotionEntity, Long> {
    List<PromotionEntity> findAll();
    List<PromotionEntity> findByPromotionCodeLike(String key);
}
