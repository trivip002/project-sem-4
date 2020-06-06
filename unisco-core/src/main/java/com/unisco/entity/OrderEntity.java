package com.unisco.entity;

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
public class OrderEntity implements Serializable {
    private static final long serialVersionUID = 8302673735529466233L;
    @Id
    @Column(name = "order_id")
    private Long orderId;

    @Column(name = "order_date")
    private Date orderDate;

    @Column(name = "order_status")
    private boolean orderStatus;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private UserEntity user;

}
