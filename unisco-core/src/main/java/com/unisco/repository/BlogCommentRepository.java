package com.unisco.repository;
import com.unisco.entity.BlogCommentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
public interface BlogCommentRepository extends JpaRepository<BlogCommentEntity,Long> {
    List<BlogCommentEntity> findAll();
}
