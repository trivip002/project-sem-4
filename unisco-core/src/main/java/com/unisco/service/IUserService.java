package com.unisco.service;

import com.unisco.entity.RoleEntity;
import com.unisco.entity.UserEntity;

import java.util.Set;

public interface IUserService {


    RoleEntity getAllRoles(UserEntity userEntity);

    UserEntity findOneByUserName(String userName);

    Set<String> getRoleOfUser(UserEntity userEntity);

    boolean checkRoleForUser(UserEntity userEntity, String[] roles);

    boolean checkRoleForUser(UserEntity userEntity, String role);
}
