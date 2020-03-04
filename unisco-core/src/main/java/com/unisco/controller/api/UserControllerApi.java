package com.unisco.controller.api;


import com.unisco.dto.UserDto;
import com.unisco.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/admin")
public class UserControllerApi {
    @Autowired
    private UserService userService;
    @GetMapping(value = "/get-all-users")
    public List<UserDto> listUsers(){
        return userService.getAllUser();
    }
}
