package com.unisco.service;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.entity.RoleEntity;
import com.unisco.entity.UserEntity;

import java.util.List;
import java.util.Set;

public interface IBlogServiceBE {


    List<BlogCategoryEntity> getAll();
    List<BlogEntity> getAllBE();

    BlogCategoryEntity findOneById(Long id);
    BlogEntity findOneBEById(Long id);

    List<BlogEntity> findByBlogTitleLikeOrBlogContentLike(String title, String content);
    List<BlogCategoryEntity> findByBlogCateTitleLikeOrBlogCateContent(String title, String content);
}
