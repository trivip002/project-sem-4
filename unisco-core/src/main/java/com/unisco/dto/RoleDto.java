package com.unisco.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Setter
@Getter
public class RoleDto {
    private Long roleId;
    private String roleCode;
    private String roleName;
    private Set<Long> userIds = new HashSet<>();
    private Set<Long> permissionIds = new HashSet<>();
    private Set<UserDto> users = new HashSet<>();;
    private Set<PermissionDto> permissions = new HashSet<>();
}
