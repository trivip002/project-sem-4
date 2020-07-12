package com.unisco.controller.admin;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.service.impl.BlogCateServiceBE;
import com.unisco.service.impl.BlogServiceBE;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller(value = "blogControllerOfView")
@RequestMapping(value = "/web")
public class BlogControllerVW {

    @Autowired
    private UserService userService;


    @Autowired
    private BlogServiceBE blogService;

    @Autowired
    SessionFactory sessionFactory;

    ModelAndView mav;
    List list;


    /*blog vw*/

    @RequestMapping(value = {"/{name}BE"}, method = RequestMethod.GET)
    public ModelAndView vBlogCate(@RequestParam(defaultValue = "", required = false) String search, @PathVariable("name") String name) {
        mav = new ModelAndView("web/"+name+"BE");
        mav.addObject("email", userService.getOneByUserName(Principal.getPrincipal()).getUserEmail());
        mav.addObject("title", ""+name);

            list = blogService.getAllBE();

        mav.addObject("lstBlogvw", list);
        return mav;
    }







}
