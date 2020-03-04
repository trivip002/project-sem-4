package com.unisco.service;

import com.unisco.dto.UserDto;
import com.unisco.entity.UserEntity;

import java.util.List;
import java.util.Set;

public interface IUserService {

    List<UserDto> getAllUser();

    UserEntity findOneByUserName(String userName);

    Set<String> getPermissionOfUser(UserEntity userEntity);

    Set<String> getRoleOfUser(UserEntity userEntity);

    boolean checkPermissionForUser(UserEntity userEntity, String[] permissions);

    boolean checkPermissionForUser(UserEntity userEntity, String permission);

    boolean checkRoleForUser(UserEntity userEntity, String[] roles);

    boolean checkRoleForUser(UserEntity userEntity, String role);
}
