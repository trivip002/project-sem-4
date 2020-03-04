package com.unisco.convert;

import com.unisco.dto.PermissionDto;
import com.unisco.entity.PermissionEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PermissionConvert {
    @Autowired
    private ModelMapper modelMapper;

    public PermissionDto convertToDto(PermissionEntity permissionEntity) {
        return modelMapper.map(permissionEntity, PermissionDto.class);
    }

    public PermissionDto covertToDtoWithNonRelationship(PermissionEntity permissionEntity){
        PermissionDto permissionDto = modelMapper.map(permissionEntity, PermissionDto.class);
        permissionDto.getRoles().forEach(item->permissionDto.getRoleIds().add(item.getRoleId()));
        permissionDto.getRoles().clear();
        return permissionDto;
    }

    public PermissionEntity convertToEntity(PermissionDto permissionDto) {
        return modelMapper.map(permissionDto, PermissionEntity.class);
    }
}
