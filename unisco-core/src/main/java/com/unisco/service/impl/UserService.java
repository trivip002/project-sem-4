package com.unisco.service.impl;


import com.unisco.entity.RoleEntity;
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

    @Override
    public RoleEntity getAllRoles(UserEntity userEntity) {
        return userRepository.findOne(userEntity.getUserId()).getRole();
    }

    @Override
    public UserEntity getOneByUserName(String userName) {
        return userRepository.findOneByUserName(userName);
    }

    @Override
    public UserEntity getOneById(Long userId) {
        return userRepository.findOne(userId);
    }

    @Override
    public List<UserEntity> getAll() {
        return userRepository.findAll();
    }

    @Override
    public String updateByUser(UserEntity userEntity) {
        try{
            userRepository.save(userEntity);
            return "Update Success";
        }catch (Exception e){
            return "Update Fail";
        }
    }

    @Override
    public String changeStatus(int status, Long userId) {
        UserEntity userEntity = userRepository.findOne(userId);
        userEntity.setIsActive(status);
        userRepository.save(userEntity);
        return "success";
    }


    @Override
    public Set<String> getRoleOfUser(UserEntity userEntity) {
        Set<String> listRoles = new HashSet<>();
        listRoles.add(userEntity.getRole().getRoleCode());
        return listRoles;
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
