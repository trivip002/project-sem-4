package com.unisco.controller.api;

import com.unisco.anotation.Authorization;
import com.unisco.repository.UserRepository;
import com.unisco.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/api/home")
    @Authorization(hasAnyPermission = {"CAN_ACCESS_TO_ADMIN_PAGE","CAN_ACCESS_TO_USER_PAGE"})
    public String helloUser(){
        return "hello user!";
    }

    @GetMapping("/api/admin/home")
    @Authorization(hasRole = "ROLE_ADMIN")
    public String helloAdmin(){
        return "hello admin!";
    }
}
