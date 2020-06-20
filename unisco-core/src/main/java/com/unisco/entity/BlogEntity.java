package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "blog")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BlogEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 8196399101297019371L;
    @Id
    @Column(name = "blog_id")
    private Long blogId;

    @Column(name = "blog_title")
    private String blogTitle;

    @Column(name = "blog_meta_title")
    private String blogMetaTitle;

    @Column(name = "blog_img")
    private String blogImg;

    @Column(name = "blog_content",columnDefinition="TEXT")
    private String blogContent;

    @Column(name = "is_active", nullable = false)
    private int isActive;

    //relation between user & post
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private UserEntity user;

    //relation between blog & blog_category
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "blog_cate_id")
    private BlogCategoryEntity blog;

    @OneToMany(mappedBy = "blog")
    private Set<BlogCommentEntity> blogComments;
}
