package com.unisco.service.impl;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.repository.BlogCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogCategoryService {
    @Autowired
    private BlogCategoryRepository blogCategoryRepository;

    public BlogCategoryEntity findOneByBlogCateId(Long BlogCateId) {
        return blogCategoryRepository.findOne(BlogCateId);
    }
    public List<BlogCategoryEntity> getAll() {
        return blogCategoryRepository.findAll();
    }

    public BlogCategoryEntity save(BlogCategoryEntity blogCate){
        return blogCategoryRepository.save(blogCate);
    }
}
