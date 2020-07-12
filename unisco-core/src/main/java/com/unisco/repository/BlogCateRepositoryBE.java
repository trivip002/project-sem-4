package com.unisco.repository;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogCateRepositoryBE extends JpaRepository<BlogCategoryEntity, Long> {
    List<BlogCategoryEntity> findByBlogCateTitleLikeOrBlogCateContent(String title, String content);
}
