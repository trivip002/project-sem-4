package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import com.unisco.entity.composite.OrderKey;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "order")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 8302673735529466233L;

    @EmbeddedId
    private OrderKey id;

    @ManyToOne
    @MapsId("user_id")
    @JoinColumn(name = "user_id")
    private UserEntity user;

    @ManyToOne
    @MapsId("course_id")
    @JoinColumn(name = "course_id")
    private CourseEntity course;

    @Column(name = "order_code")
    private String orderCode;

    @Column(name = "unit_price")
    private float unitPrice;

}
