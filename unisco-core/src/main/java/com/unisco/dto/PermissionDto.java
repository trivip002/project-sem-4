package com.unisco.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Setter
@Getter
public class PermissionDto {
    private Long permissionId;
    private String permissionCode;
    private String permissionName;
    private Set<Long> roleIds = new HashSet<>();
    private Set<RoleDto> roles = new HashSet<>();;
}
