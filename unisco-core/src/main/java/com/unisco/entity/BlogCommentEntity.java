package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import com.unisco.entity.composite.BlogCommentKey;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "blog_comment")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BlogCommentEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 4877677026393633231L;

    @EmbeddedId
    BlogCommentKey id;

    @ManyToOne
    @MapsId("user_id")
    @JoinColumn(name = "user_id")
    private UserEntity user;

    @ManyToOne
    @MapsId("blog_id")
    @JoinColumn(name = "blog_id")
    private BlogEntity blog;

    @Column(name = "blog_comment_content",columnDefinition="TEXT")
    private String blogCommentContent;

}
