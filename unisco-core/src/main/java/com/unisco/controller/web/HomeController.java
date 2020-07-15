package com.unisco.controller.web;

import com.unisco.entity.CourseEntity;
import com.unisco.service.impl.CategoryService;
import com.unisco.service.impl.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	private CourseService courseService;

	@Autowired
    private CategoryService categoryService;

	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("listCourse", courseService.getAllCourseActive());
		mav.addObject("listCate", categoryService.getAll());
		return mav;
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView aboutUs(){
		ModelAndView mav = new ModelAndView("web/about");
		return mav;
	}

	@RequestMapping(value = "/company", method = RequestMethod.GET)
	public ModelAndView company(){
		ModelAndView mav = new ModelAndView("web/company");
		return mav;
	}

	@RequestMapping(value = "/career", method = RequestMethod.GET)
	public ModelAndView career(){
		ModelAndView mav = new ModelAndView("web/career");
		return mav;
	}

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public ModelAndView help(){
		ModelAndView mav = new ModelAndView("web/help");
		return mav;
	}

	@RequestMapping(value = "/term", method = RequestMethod.GET)
	public ModelAndView term(){
		ModelAndView mav = new ModelAndView("web/term");
		return mav;
	}

	@RequestMapping(value = "/explore", method = RequestMethod.GET)
	public ModelAndView explore(){
		ModelAndView mav = new ModelAndView("web/explore");
		mav.addObject("listCourse", courseService.getAllCourseActive());
		return mav;
	}

}
