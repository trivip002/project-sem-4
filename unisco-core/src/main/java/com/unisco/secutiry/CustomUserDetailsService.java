package com.unisco.secutiry;

import com.unisco.entity.RoleEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private UserService userService;

    @Transactional
    public UserDetails loadUserByUsername(String userName)
            throws UsernameNotFoundException {
        UserEntity userEntity = userService.getOneByUserName(userName);
        if (userEntity == null) {
            throw new UsernameNotFoundException("Username not found");
        }
        return new org.springframework.security.core.userdetails.User(userEntity.getUserName(), userEntity.getPassword(),
                true, true, true, true, getGrantedAuthorities(userEntity));
    }


    private List<GrantedAuthority> getGrantedAuthorities(UserEntity userEntity) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        RoleEntity roleEntity = userService.getAllRoles(userEntity);
        authorities.add(new SimpleGrantedAuthority(roleEntity.getRoleCode()));
        return authorities;
    }

}
