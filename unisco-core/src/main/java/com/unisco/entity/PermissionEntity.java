package com.unisco.entity;

import com.unisco.constant.PermissionCode;
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
@Table(name = "permission")
public class PermissionEntity implements Serializable {

    private static final long serialVersionUID = 6873098007893627435L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "permission_id")
    private Long permissionId;

    @Column(name = "permission_code")
    private String permissionCode = PermissionCode.CAN_ACCESS_TO_USER_PAGE.toString();

    @Column(name = "permission_name")
    private String permissionName;

    @ManyToMany(cascade = {CascadeType.DETACH,CascadeType.PERSIST,CascadeType.REFRESH,CascadeType.REMOVE}, mappedBy = "permissions", fetch = FetchType.EAGER)
    private Set<RoleEntity> roles = new HashSet<>();
}
