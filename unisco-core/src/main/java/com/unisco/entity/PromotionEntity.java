package com.unisco.entity;


import com.unisco.entity.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "promotion")
public class PromotionEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 2044733886941122318L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "promotion_id")
    private Long promotionId;

    @Column(name= "promotion_code")
    private String promotionCode;

    @Column(name = "discount_price")
    private float discountPrice;

    @Column(name = "is_active", nullable = false)
    private int isActive;

    @OneToMany(mappedBy = "promotion")
    private Set<PromotionDetailEntity> promotionDetails;
}
