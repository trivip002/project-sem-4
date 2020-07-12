package com.unisco.service.impl;


import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.repository.BlogCateRepositoryBE;
import com.unisco.service.IBlogServiceBE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogCateServiceBE implements IBlogServiceBE {

    @Autowired
    private BlogCateRepositoryBE blogCateRepositoryBE;
    @Override
    public List<BlogCategoryEntity> getAll() {
        return blogCateRepositoryBE.findAll();
    }
    @Override
    public BlogCategoryEntity findOneById(Long id) {
        return blogCateRepositoryBE.findOne(id);
    }



    @Override
    public List<BlogCategoryEntity> findByBlogCateTitleLikeOrBlogCateContent(String title, String content) {
        return blogCateRepositoryBE.findByBlogCateTitleLikeOrBlogCateContent(title,content);
    }

//

    @Override
    public List<BlogEntity> getAllBE() {
        return null;
    }
    @Override
    public BlogEntity findOneBEById(Long id) {
        return null;
    }
    @Override
    public List<BlogEntity> findByBlogTitleLikeOrBlogContentLike(String title, String content) {
        return null;
    }
}
