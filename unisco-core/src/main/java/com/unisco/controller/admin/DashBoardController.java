package com.unisco.controller.admin;

import com.unisco.service.impl.DashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "dashboardControllerOfAdmin")
@RequestMapping(value = "/admin/dashboard")
public class DashBoardController {
    @Autowired
    private DashboardService dashboardService;
    String user;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/dashboard");
        mav.addObject("unitPrice",dashboardService.getOrderUnitPrice());
        mav.addObject("totalCourse",dashboardService.getCourseName());
        mav.addObject("totalUser",dashboardService.getUser());
        mav.addObject("totalPromotion",dashboardService.getPromotion());
        return mav;
    }
}
