package com.unisco.anotation;


import com.unisco.entity.UserEntity;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import lombok.extern.java.Log;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Optional;

@Aspect
@Component
@Log
public class AuthorizationAspect {

    @Autowired
    private UserService userService;

    @Before(value = "@annotation(com.unisco.anotation.Authorization)", argNames = "joinPoint")
    public void checkAuthentication(JoinPoint joinPoint) throws Throwable {
        String methodName = (joinPoint.getSignature().toString().split("\\.")[joinPoint.getSignature().toString().split("\\.").length - 1])
                .substring(0,  (joinPoint.getSignature().toString().split("\\.")[joinPoint.getSignature().toString().split("\\.").length - 1]).lastIndexOf('('));
        Optional<Method> method = Arrays.stream(Class.forName(joinPoint.getSignature().getDeclaringType().getName()).getMethods()).filter(item -> item.getName().equalsIgnoreCase(methodName)).findFirst();
        method.ifPresent(value -> {
            String[] roles = value.getAnnotation(Authorization.class).hasAnyRole();
            String role = value.getAnnotation(Authorization.class).hasRole();
            UserEntity userEntity = userService.findOneByUserName(Principal.getPrincipal());
            if (userEntity == null) {
                throw new RuntimeException("USER_NOT_LOGIN");
            } else if (roles.length != 0) {
                if (!userService.checkRoleForUser(userEntity, roles)) {
                    throw new RuntimeException("USER_NOT_HAVE_ANY_ROLE");
                }
            } else if (!role.isEmpty()) {
                if (!userService.checkRoleForUser(userEntity, role)) {
                    throw new RuntimeException("USER_NOT_HAVE_ROLE");
                }
            }
        });
    }
}
