package com.unisco.service;

import com.unisco.entity.RoleEntity;
import com.unisco.entity.UserEntity;
import org.springframework.security.core.userdetails.User;

import java.util.List;
import java.util.Set;

public interface IUserService {


    RoleEntity getAllRoles(UserEntity userEntity);

    UserEntity getOneByUserName(String userName);

    List<UserEntity> getAll();

    Set<String> getRoleOfUser(UserEntity userEntity);

    boolean checkRoleForUser(UserEntity userEntity, String[] roles);

    boolean checkRoleForUser(UserEntity userEntity, String role);
}
