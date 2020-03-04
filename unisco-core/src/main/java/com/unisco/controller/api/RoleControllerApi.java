package com.unisco.controller.api;

import com.unisco.dto.RoleDto;
import com.unisco.service.impl.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/admin")
public class RoleControllerApi {
    @Autowired
    private RoleService roleService;

    @GetMapping(value = "/get-all-roles")
    public List<RoleDto> listRoles() {
        return roleService.getAllRoles();
    }

    @PostMapping(value = "/add-role")
    public Object addRole(@RequestBody RoleDto roleDto){
        roleService.addRole(roleDto);
        return "success";
    }

    @PutMapping(value = "/update-role/{roleId}")
    public Object updateRole(@RequestBody RoleDto roleDto, @PathVariable Long roleId){
        roleService.updateRole(roleDto,roleId);
        return "success";
    }
}
