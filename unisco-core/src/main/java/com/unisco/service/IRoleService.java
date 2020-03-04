package com.unisco.service;

import com.unisco.dto.RoleDto;

import java.util.List;

public interface IRoleService {
    void addRole(RoleDto roleDto);
    void updateRole(RoleDto roleDto, Long roleId);
    List<RoleDto> getAllRoles();
}
