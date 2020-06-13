package com.unisco.entity;

import com.unisco.constant.RoleCode;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "role")
public class RoleEntity implements Serializable {
    private static final long serialVersionUID = -1340259575898785336L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    private Long roleId;

    @Column(name = "role_code")
    private String roleCode = RoleCode.ROLE_USER.toString();

    @Column(name = "role_name")
    private String roleName;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "role")
    private Set<UserEntity> users = new HashSet<>();

}
