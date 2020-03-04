package com.unisco.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
public class UserDto {
    private Long userId;
    private String userName;
    private String userEmail;
    private String password;
    private Set<String> roleIds = new HashSet<>();;
    private RoleDto role;
}
