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
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private UserService userService;

    @Transactional
    public UserDetails loadUserByUsername(String userName)
            throws UsernameNotFoundException {
        UserEntity userEntity = userService.findOneByUserName(userName);
        if (userEntity == null) {
            throw new UsernameNotFoundException("Username not found");
        }
        return new org.springframework.security.core.userdetails.User(userEntity.getUserName(), userEntity.getPassword(),
                true, true, true, true, getGrantedAuthorities(userEntity));
    }


    private List<GrantedAuthority> getGrantedAuthorities(UserEntity userEntity) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        Set<String> permissions = getPermission(userEntity.getRole());
        permissions.forEach(item->authorities.add(new SimpleGrantedAuthority(item)));
        return authorities;
    }

    private Set<String> getPermission(RoleEntity roleEntity) {
        Set<String> permissions = new HashSet<>();
        roleEntity.getPermissions().forEach(item->permissions.add(item.getPermissionCode()));
        return permissions;
    }
}
