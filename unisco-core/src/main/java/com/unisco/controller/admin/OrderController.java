package com.unisco.controller.admin;

import com.unisco.service.impl.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "orderControllerOfAdmin")
@RequestMapping(value = "/admin/order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/order");
        mav.addObject("listOrder", orderService.getAll());
        return mav;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchReview(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/order");
        if (key==null){
            view.addObject("listOrder", orderService.getAll());
        } else {
            view.addObject("listOrder", orderService.getByNameLike("%"+key+"%"));
        }
        return view;
    }
}
