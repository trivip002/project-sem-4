package com.unisco.repository;
import com.unisco.entity.OrderEntity;
import com.unisco.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
public interface OrderRepository extends JpaRepository<OrderEntity,Long> {
    List<OrderEntity> findAll();
    List<OrderEntity> findByOrderCodeLike(String key);
    List<OrderEntity> findByUser(UserEntity userEntity);
}
