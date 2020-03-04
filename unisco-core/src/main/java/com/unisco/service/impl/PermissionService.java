package com.unisco.service.impl;

import com.unisco.convert.PermissionConvert;
import com.unisco.convert.RoleConvert;
import com.unisco.dto.PermissionDto;
import com.unisco.dto.RoleDto;
import com.unisco.repository.PermissionRepository;
import com.unisco.repository.RoleRepository;
import com.unisco.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class PermissionService implements IPermissionService {

    @Autowired
    private PermissionRepository permissionRepository;

    @Autowired
    private PermissionConvert permissionConvert;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private RoleConvert roleConvert;

    @Override
    public void addPermissionsByRoleId(Long roleId, List<PermissionDto> permissionDtos) {
        RoleDto roleDto = roleConvert.convertToDto(roleRepository.findOne(roleId));
        roleDto.getPermissions().addAll(permissionDtos);
        roleRepository.save(roleConvert.convertToEntity(roleDto));
    }

    @Override
    public void removePermissionsByRoleId(Long roleId, List<PermissionDto> permissionDtos) {
        RoleDto roleDto = roleConvert.convertToDto(roleRepository.findOne(roleId));
        permissionDtos.forEach(item -> {
            roleDto.getPermissions().removeIf(i -> i.getPermissionId().equals(item.getPermissionId()));
        });
        roleRepository.save(roleConvert.convertToEntity(roleDto));
    }

    @Override
    public List<PermissionDto> getAllPermissions() {
        List<PermissionDto> permissionDtos = new ArrayList<>();
        permissionRepository.findAll().forEach(item -> permissionDtos.add(permissionConvert.covertToDtoWithNonRelationship(item)));
        return permissionDtos;
    }
}
