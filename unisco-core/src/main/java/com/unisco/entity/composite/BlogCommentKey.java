package com.unisco.entity.composite;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
public class BlogCommentKey implements Serializable {
    private static final long serialVersionUID = -4651862203071858719L;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "blog_id")
    private Long blogId;
}
