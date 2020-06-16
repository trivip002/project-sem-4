package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "category")
public class CategoryEntity extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -5097744609119504785L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "cate_id")
    private Long cateId;

    @Column(name = "cate_name")
    private String cateName;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "category")
    private Set<CourseEntity> course = new HashSet<>();
}
