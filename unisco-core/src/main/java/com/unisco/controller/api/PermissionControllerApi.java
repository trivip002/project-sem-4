package com.unisco.controller.api;


import com.unisco.anotation.Authorization;
import com.unisco.dto.PermissionDto;
import com.unisco.service.impl.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/admin")
public class PermissionControllerApi {
    @Autowired
    private PermissionService permissionService;

    @PostMapping(value = "/add-permission-to-role/{roleId}")
    @Authorization(hasAnyPermission = {"CAN_WRITE_PERMISSION","CAN_WRITE_ROLE"})
    public Object addPermissionsToRole(@RequestBody List<PermissionDto> listValues, @PathVariable Long roleId) {
        permissionService.addPermissionsByRoleId(roleId,listValues);
        return "success";
    }

    @Authorization(hasAnyPermission = {"CAN_WRITE_PERMISSION","CAN_WRITE_ROLE"})
    @PostMapping(value = "/remove-permission-to-role/{roleId}")
    public Object removePermissionsToRole(@RequestBody List<PermissionDto> listValues, @PathVariable Long roleId) {
        permissionService.removePermissionsByRoleId(roleId,listValues);
        return "success";
    }
    @Authorization(hasAnyPermission = {"CAN_READ_PERMISSION","CAN_READ_ROLE"})
    @GetMapping(value = "/get-all-permissions")
    public List<PermissionDto> listAllPermissions() {
        return permissionService.getAllPermissions();
    }
}
