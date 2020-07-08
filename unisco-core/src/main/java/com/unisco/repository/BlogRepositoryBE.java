package com.unisco.repository;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BlogRepositoryBE extends JpaRepository<BlogEntity, Long> {

}
