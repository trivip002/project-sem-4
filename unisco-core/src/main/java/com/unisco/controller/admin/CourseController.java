package com.unisco.controller.admin;

import com.unisco.service.impl.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "courseControllerOfAdmin")
@RequestMapping(value = "/admin/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView coursePage(){
        ModelAndView view = new ModelAndView("/admin/course");
        view.addObject("listCourse", courseService.getAll());
        return view;
    }
}
