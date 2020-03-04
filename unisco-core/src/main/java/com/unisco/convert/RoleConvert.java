package com.unisco.convert;


import com.unisco.dto.RoleDto;
import com.unisco.entity.RoleEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RoleConvert {
    @Autowired
    private ModelMapper modelMapper;

    public RoleDto convertToDto(RoleEntity roleEntity) {
        return modelMapper.map(roleEntity, RoleDto.class);
    }

    public RoleDto covertToDtoWithNonRelationship(RoleEntity roleEntity){
        RoleDto roleDto = modelMapper.map(roleEntity, RoleDto.class);
        roleDto.getPermissions().forEach(item->roleDto.getPermissionIds().add(item.getPermissionId()));
        roleDto.getPermissions().clear();
        roleDto.getUsers().forEach(item->roleDto.getUserIds().add(item.getUserId()));
        roleDto.getUsers().clear();
        return roleDto;
    }

    public RoleEntity convertToEntity(RoleDto roleDto) {
        return modelMapper.map(roleDto, RoleEntity.class);
    }
}
