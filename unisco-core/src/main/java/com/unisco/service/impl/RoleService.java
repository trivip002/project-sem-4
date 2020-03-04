package com.unisco.service.impl;

import com.unisco.convert.RoleConvert;
import com.unisco.dto.RoleDto;
import com.unisco.repository.RoleRepository;
import com.unisco.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private RoleConvert roleConvert;

    @Override
    public void addRole(RoleDto roleDto) {
        roleRepository.save(roleConvert.convertToEntity(roleDto));
    }

    @Override
    public void updateRole(RoleDto roleDto, Long roleId) {
        RoleDto roleEdit = roleConvert.convertToDto(roleRepository.findOne(roleId));
        roleEdit.setRoleCode(roleDto.getRoleCode());
        roleEdit.setRoleName(roleDto.getRoleName());
        roleRepository.save(roleConvert.convertToEntity(roleEdit));
    }

    @Override
    public List<RoleDto> getAllRoles() {
        return roleRepository.findAll().stream().map(item -> roleConvert.covertToDtoWithNonRelationship(item)).collect(Collectors.toList());
    }

}
