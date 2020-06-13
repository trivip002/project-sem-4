package com.unisco.entity.composite;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
public class OrderKey implements Serializable {
    private static final long serialVersionUID = -8764822591391968630L;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "course_id")
    private Long courseId;
}
