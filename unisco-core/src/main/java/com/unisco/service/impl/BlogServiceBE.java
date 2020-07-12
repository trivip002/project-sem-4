package com.unisco.service.impl;


import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.repository.BlogRepositoryBE;
import com.unisco.service.IBlogServiceBE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogServiceBE implements IBlogServiceBE {

    @Autowired
    private BlogRepositoryBE blogRepositoryBE;


    @Override
    public List<BlogEntity> getAllBE(){ return blogRepositoryBE.findAll();}
    @Override
    public BlogEntity findOneBEById(Long id) {
        return blogRepositoryBE.findOne(id);
    }

    @Override
    public List<BlogEntity> findByBlogTitleLikeOrBlogContentLike(String title, String content) {
        return blogRepositoryBE.findByBlogTitleLikeOrBlogContentLike(title,content);
    }



    @Override
    public List<BlogCategoryEntity> getAll() {
        return null;
    }
    @Override
    public BlogCategoryEntity findOneById(Long id) {
        return null;
    }
    @Override
    public List<BlogCategoryEntity> findByBlogCateTitleLikeOrBlogCateContent(String title, String content) {return null; }
}
