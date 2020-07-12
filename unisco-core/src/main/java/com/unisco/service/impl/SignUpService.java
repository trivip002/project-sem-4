package com.unisco.service.impl;

import com.unisco.entity.UserEntity;
import com.unisco.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignUpService {

    @Autowired
    private UserRepository userRepository;

    public UserEntity save(UserEntity user){
        return userRepository.save(user);
    }
}
