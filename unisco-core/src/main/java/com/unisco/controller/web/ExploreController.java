package com.unisco.controller.web;

import com.unisco.service.impl.CategoryService;
import com.unisco.service.impl.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "exploreControllerOfWeb")
public class ExploreController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/explore", method = RequestMethod.GET)
    public ModelAndView explore(@RequestParam(name = "catId", required = false) Long catId){
        ModelAndView mav = new ModelAndView("web/explore");
        if(catId == null){
            mav.addObject("listCourse", courseService.getAll());
        }else{
            mav.addObject("listCourse", courseService.getCourseByCat(categoryService.getById(catId)));
        }
        return mav;
    }
}
