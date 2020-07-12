package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import com.unisco.entity.composite.ReviewKey;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "review")
public class ReviewEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 7978715630748859716L;

    @EmbeddedId
    ReviewKey id;

    @ManyToOne
    @MapsId("user_id")
    @JoinColumn(name = "user_id")
    private UserEntity user;

    @ManyToOne
    @MapsId("course_id")
    @JoinColumn(name = "course_id")
    private CourseEntity course;

    @Column(name = "review_content",columnDefinition="TEXT")
    private String reviewContent;

    @Column(name = "rating")
    private int rating;
}
