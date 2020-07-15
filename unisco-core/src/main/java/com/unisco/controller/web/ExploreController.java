package com.unisco.controller.web;

import com.unisco.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "exploreControllerOfWeb")
public class ExploreController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private SectionService sectionService;

    @RequestMapping(value = "/explore/course", method = RequestMethod.GET)
    public ModelAndView courseDetail(@RequestParam(name = "courseId") Long courseId){
        ModelAndView mav = new ModelAndView("web/course_detail_view");
        if (courseId!=null){
            mav.addObject("course", courseService.getById(courseId));
            mav.addObject("sections", sectionService.getByCourseEntityOrderBySectionId(courseService.getById(courseId)));
            mav.addObject("review", reviewService.getAll());
        }
        return mav;
    }

    @RequestMapping(value = "/explore/search", method = RequestMethod.GET)
    public ModelAndView explore(@RequestParam(name = "searchStr", required = false) String searchStr){
        ModelAndView mav = new ModelAndView("web/explore");
        if (!("".equals(searchStr))){
            mav.addObject("listCourse", courseService.getByNameLike("%"+searchStr+"%"));
        } else {
            mav.addObject("listCourse", courseService.getAll());
        }
        return mav;
    }
}
