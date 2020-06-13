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
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
public class UserEntity extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -7971218994857937734L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "is_active")
    private int isActive;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "country")
    private String country;

    @Column(name = "telephone")
    private String telephone;

    @Column(name = "credit_card")
    private String creditCard;

    @Column(name = "card_type")
    private String cardType;

    @Column(name = "card_exp_mo")
    private String cardExpMo;

    @Column(name = "card_exp_ye")
    private String cardExpYe;

    @Column(name = "card_csv")
    private String cardCsv;


    @Column(name = "user_email")
    private String userEmail;

    @Column(name = "password")
    private String password;

    @Column(name = "user_avatar")
    private String userAvatar;

    //relation between user & role
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "role_id")
    private RoleEntity role;

    //relation between user & course => wishlist
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "wishlist",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "course_id")})
    private Set<CourseEntity> course = new HashSet<>();


    //relation between user & order
    @OneToMany(cascade = CascadeType.ALL, fetch =  FetchType.EAGER, mappedBy = "user")
    private Set<OrderEntity> orders = new HashSet<>();

    //relation between user & post
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
    private Set<BlogEntity> post = new HashSet<>();

    @OneToMany(mappedBy = "user")
    private Set<BlogCommentEntity> blogComments;

    @OneToMany(mappedBy = "user")
    private Set<ReviewEntity> reviews;
}
