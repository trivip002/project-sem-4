package com.unisco.repository;

import com.unisco.entity.PromotionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DashBoardRepository4 extends JpaRepository<PromotionEntity,Long>{

    @Query(value ="SELECT Count(p.promotionCode) FROM PromotionEntity p")
    int selectTotalPromotion();

}