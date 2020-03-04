package com.unisco.service.impl;


import com.unisco.convert.UserConvert;
import com.unisco.dto.UserDto;
import com.unisco.entity.PermissionEntity;
import com.unisco.entity.UserEntity;
import com.unisco.repository.UserRepository;
import com.unisco.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserConvert userConvert;

    @Override
    public List<UserDto> getAllUser() {
        return userRepository.findAll().stream().map(item-> userConvert.convertToDto(item)).collect(Collectors.toList());
    }

    @Override
    public UserEntity findOneByUserName(String userName) {
        return userRepository.findOneByUserName(userName);
    }

    @Override
    public Set<String> getPermissionOfUser(UserEntity userEntity) {
        return userEntity.getRole().getPermissions().stream().map(PermissionEntity::getPermissionCode).collect(Collectors.toSet());
    }

    @Override
    public Set<String> getRoleOfUser(UserEntity userEntity) {
        Set<String> listRoles = new HashSet<>();
        listRoles.add(userEntity.getRole().getRoleCode());
        return listRoles;
    }

    @Override
    public boolean checkPermissionForUser(UserEntity userEntity, String[] permissions) {
        return this.getPermissionOfUser(userEntity).stream().anyMatch(item-> Arrays.asList(permissions).contains(item));
    }

    @Override
    public boolean checkPermissionForUser(UserEntity userEntity, String permission) {
        return !this.getPermissionOfUser(userEntity).stream().filter(item -> item.equalsIgnoreCase(permission)).collect(Collectors.toSet()).isEmpty();
    }

    @Override
    public boolean checkRoleForUser(UserEntity userEntity, String[] roles) {
        return this.getRoleOfUser(userEntity).stream().anyMatch(item-> Arrays.asList(roles).contains(item));
    }

    @Override
    public boolean checkRoleForUser(UserEntity userEntity, String role) {
        return !this.getRoleOfUser(userEntity).stream().filter(item -> item.equalsIgnoreCase(role)).collect(Collectors.toSet()).isEmpty();
    }
}
