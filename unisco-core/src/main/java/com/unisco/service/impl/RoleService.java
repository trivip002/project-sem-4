package com.unisco.service.impl;

import com.unisco.entity.RoleEntity;
import com.unisco.repository.RoleRepository;
import com.unisco.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.management.relation.Role;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private RoleRepository roleRepository;
    public List<RoleEntity> getAll() {
        return roleRepository.findAll();
    }

    public RoleEntity save(RoleEntity role){
        return roleRepository.save(role);
    }

    public void delete(Long roleId){
        roleRepository.delete(roleRepository.findOne(roleId));
    }

    public RoleEntity findOneByRoleId(Long roleId)
    {
        return roleRepository.findOne(roleId);
    }

    public List<RoleEntity> getByNameLike(String roleName) {
        return roleRepository.findByRoleNameLike(roleName);
    }

}
