package com.unisco.service.impl;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.OrderEntity;
import com.unisco.entity.UserEntity;
import com.unisco.entity.composite.OrderKey;
import com.unisco.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public List<OrderEntity> getAll() {
        return orderRepository.findAll();
    }
    public List<OrderEntity> getByNameLike(String orderCode) {
        return orderRepository.findByOrderCodeLike(orderCode);
    }
    public void createOrderByUserAndCourses(UserEntity userEntity, List<CourseEntity> courseEntities){
        String code = UUID.randomUUID().toString();
        courseEntities.forEach(item->{
            OrderEntity orderEntity = new OrderEntity();
            OrderKey orderKey = new OrderKey();
            orderKey.setCourseId(item.getCourseId());
            orderKey.setUserId(userEntity.getUserId());
            orderEntity.setCourse(item);
            orderEntity.setUser(userEntity);
            orderEntity.setId(orderKey);
            orderEntity.setOrderCode(code);
            float unitPrice = item.getUnitPrice() == null? item.getCoursePrice():Float.parseFloat(item.getUnitPrice());
            orderEntity.setUnitPrice(unitPrice);
            orderRepository.save(orderEntity);
        });
    }
    public List<CourseEntity> getCoursesByUser(UserEntity userEntity){
        List<CourseEntity> courseEntities = new ArrayList<>();
        List<OrderEntity> orderEntities = orderRepository.findByUser(userEntity);
        orderEntities.forEach(item->courseEntities.add(item.getCourse()));
        return courseEntities;
    }
}
