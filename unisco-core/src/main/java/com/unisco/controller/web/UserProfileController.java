package com.unisco.controller.web;

import com.unisco.entity.UserEntity;
import com.unisco.service.impl.RoleService;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.*;

@Controller(value = "userController")
public class UserProfileController {
    @RequestMapping(value = "/userProfile", method = RequestMethod.GET)
    public ModelAndView UserProfile() {
        ModelAndView mav = new ModelAndView("web/userProfile");
        mav.addObject("user", userService.getOneByUserName(Principal.getPrincipal()));
        return mav;
    }

    @RequestMapping(value = "/membership", method = RequestMethod.GET)
    public ModelAndView MemberShip() {
        ModelAndView mav = new ModelAndView("web/membership");
        return mav;
    }

    @RequestMapping(value = "/membership_checkout", method = RequestMethod.GET)
    public ModelAndView MembershipCheckout() {
        ModelAndView mav = new ModelAndView("web/membership_checkout");
        return mav;
    }

    @Autowired
    private RoleService roleService;
    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = "/updateRole", method = RequestMethod.POST)
    public ModelAndView UpdateRole() {
        ModelAndView mav = new ModelAndView("redirect:/logout/");
        try {
            UserEntity users= userService.getOneByUserName(Principal.getPrincipal());
            users.setRole(roleService.findOneByRoleId((long) 3));
            userService.save(users);
        }catch (Exception e){
            e.getMessage();
        }
        return mav;
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public ModelAndView UpdateUser(@RequestParam("userEmail")String userEmail,
                                   @RequestParam("fullName")String fullName,
                                   @RequestParam("address")String address,
                                   @RequestParam("city")String city,
                                   @RequestParam("country")String country,
                                   @RequestParam("telephone")String telephone,
                                   @RequestParam("userAvatar")String userAvatar) {
        ModelAndView mav = new ModelAndView("web/userProfile");
            UserEntity user = userService.getOneByUserName(Principal.getPrincipal());
            user.setUserEmail(userEmail);
            user.setFullName(fullName);
            user.setAddress(address);
            user.setCity(city);
            user.setCountry(country);
            user.setTelephone(telephone);
            user.setUserAvatar(userAvatar);
            if(userService.save(user)!= null)
            {
                mav.addObject("user", userService.getOneByUserName(Principal.getPrincipal()));
            }
        return mav;
    }


}
