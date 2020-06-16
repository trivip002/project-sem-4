package com.unisco.entity.composite;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
public class PromotionDetailKey implements Serializable {
    private static final long serialVersionUID = 8484732747908794231L;

    @Column(name = "promotion_id")
    private Long promotionId;

    @Column(name = "course_id")
    private Long courseId;
}
