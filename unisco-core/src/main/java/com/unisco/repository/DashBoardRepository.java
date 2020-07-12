package com.unisco.repository;

import com.unisco.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DashBoardRepository extends JpaRepository<OrderEntity,Long>{

    @Query(value ="SELECT SUM(o.unitPrice) FROM OrderEntity o")
    Float selectTotal();

}
