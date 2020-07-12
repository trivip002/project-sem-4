package com.unisco.repository;

import com.unisco.entity.CourseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DashBoardRepository2 extends JpaRepository<CourseEntity,Long>{

    @Query(value ="SELECT Count(c.courseName) FROM CourseEntity c")
    int selectTotalCourse();

}

