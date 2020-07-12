package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import com.unisco.entity.composite.PromotionDetailKey;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Setter
@Getter
@Entity
@Table(name = "promotion_detail")
public class PromotionDetailEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 9036834025257970868L;

    @EmbeddedId
    private PromotionDetailKey id;

    @ManyToOne
    @MapsId("course_id")
    @JoinColumn(name = "course_id")
    private CourseEntity course;

    @ManyToOne
    @MapsId("promotion_id")
    @JoinColumn(name = "promotion_id")
    private PromotionEntity promotion;

}
