package com.unisco.repository;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogRepositoryBE extends JpaRepository<BlogEntity, Long> {
    List<BlogEntity> findByBlogTitleLikeOrBlogContentLike(String title, String content);

}
