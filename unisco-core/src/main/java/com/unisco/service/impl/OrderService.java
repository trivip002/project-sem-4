package com.unisco.service.impl;

import com.unisco.entity.OrderEntity;
import com.unisco.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
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

}
