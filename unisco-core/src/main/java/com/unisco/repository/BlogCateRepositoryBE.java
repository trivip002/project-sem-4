package com.unisco.repository;

import com.unisco.entity.BlogCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BlogCateRepositoryBE extends JpaRepository<BlogCategoryEntity, Long> {

}
