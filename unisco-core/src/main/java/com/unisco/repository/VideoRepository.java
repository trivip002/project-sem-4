package com.unisco.repository;

import com.unisco.entity.VideoEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VideoRepository extends JpaRepository<VideoEntity,Long> {
}
