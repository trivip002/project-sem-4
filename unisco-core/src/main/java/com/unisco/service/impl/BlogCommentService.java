package com.unisco.service.impl;

import com.unisco.entity.BlogCommentEntity;
import com.unisco.repository.BlogCommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogCommentService {
    @Autowired
    private BlogCommentRepository blogCommentRepository;

    public List<BlogCommentEntity> getAll() {
        return blogCommentRepository.findAll();
    }
}
