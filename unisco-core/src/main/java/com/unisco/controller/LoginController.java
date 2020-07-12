package com.unisco.controller;

import com.unisco.entity.RoleEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.RoleService;
import com.unisco.service.impl.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = "/access_denied", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("page/access_denied");
        mav.addObject("user", getPrincipal());
        return mav;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView("page/login");
        return mav;
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public ModelAndView logoutPage (HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("redirect:/login?logout");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return mav;
    }

    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    @RequestMapping(value = "/sign_up", method = RequestMethod.GET)
    public ModelAndView SignUpPage() {
        ModelAndView mav = new ModelAndView("page/sign_up");
        return mav;
    }

    @Autowired
    private SignUpService signUpService;
    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("userId")Long userId, @RequestParam("fullName")String fullName, @RequestParam("userEmail") String userEmail ,@RequestParam("userName")String userName,@RequestParam("password")String password
            ,@RequestParam("isActive")int isActive) {
        ModelAndView mav = new ModelAndView("redirect:/login");
        UserEntity users= new UserEntity();
        users.setFullName(fullName);
        users.setUserEmail(userEmail);
        users.setUserName(userName);
        users.setPassword(passwordEncoder.encode(password));
        users.setIsActive(isActive);
        signUpService.save(users);
        users.setRole(roleService.findOneByRoleId((long) 2));
        signUpService.save(users);
        return mav;
    }

}
