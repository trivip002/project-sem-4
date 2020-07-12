package com.unisco.repository;

import com.unisco.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DashBoardRepository3 extends JpaRepository<UserEntity,Long>{

    @Query(value ="SELECT Count(u.userName) FROM UserEntity u")
    int selectTotalUser();

}

