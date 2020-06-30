package com.unisco.repository;

import com.unisco.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findOneByUserName(String userName);
    List<UserEntity> findByUserNameOrUserEmail(String userName, String userEmail);
}
