package com.unisco.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "blog_category")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class BlogCategoryEntity implements Serializable {

    private static final long serialVersionUID = 8491876919744814710L;
    @Id
    @Column(name = "blog_cate_id")
    private Long blogCateId;

    @Column(name = "blog_cate_title")
    private String blogCateTitle;

    @Column(name = "blog_cate_content")
    private String blogCateContent;

    //relation between post & blogPost_category
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "blog_id")
    private Set<BlogEntity> blog = new HashSet<>();
}
