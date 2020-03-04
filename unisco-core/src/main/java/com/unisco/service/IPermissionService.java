package com.unisco.service;


import com.unisco.dto.PermissionDto;

import java.util.List;

public interface IPermissionService {

    void addPermissionsByRoleId(Long roleId, List<PermissionDto> permissionDtos);

    void removePermissionsByRoleId(Long roleId, List<PermissionDto> permissionDtos);

    List<PermissionDto> getAllPermissions();
}
