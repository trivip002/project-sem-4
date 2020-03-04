package com.unisco.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class RoleController {
    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public ModelAndView RoleManagermentPage() {
        ModelAndView mav = new ModelAndView("admin/component/role");
        return mav;
    }
}
