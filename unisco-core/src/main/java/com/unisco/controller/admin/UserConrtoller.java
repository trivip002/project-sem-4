package com.unisco.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class UserConrtoller {
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView UserRoleManagermentPage() {
        ModelAndView mav = new ModelAndView("admin/component/user");
        return mav;
    }
}
