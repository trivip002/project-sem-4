package com.unisco.controller.admin;

import com.unisco.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfAdmin")
@RequestMapping(value = "/admin")
public class HomeController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/mgmt_dashboard");
        mav.addObject("listUser", userService.getAll());
        return mav;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView UserMgmt() {
        ModelAndView mav = new ModelAndView("admin/mgmt_users");
        mav.addObject("listUser", userService.getAll());
        return mav;
    }

}
