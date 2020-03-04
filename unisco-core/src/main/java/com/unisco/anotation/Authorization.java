package com.unisco.anotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* This annotation just apply for api(restController) */
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Authorization {
    String hasRole() default "";

    String[] hasAnyRole() default {};

    String hasPermission() default "";

    String[] hasAnyPermission() default {};

}
