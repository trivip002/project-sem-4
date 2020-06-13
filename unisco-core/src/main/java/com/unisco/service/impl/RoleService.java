package com.unisco.service.impl;

import com.unisco.repository.RoleRepository;
import com.unisco.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private RoleRepository roleRepository;


}
