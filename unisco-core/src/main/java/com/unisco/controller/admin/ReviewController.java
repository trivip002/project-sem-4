package com.unisco.controller.admin;

import com.unisco.service.impl.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "reviewControllerOfAdmin")
@RequestMapping(value = "/admin/review")

public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/review");
        mav.addObject("listReview", reviewService.getAll());
        return mav;
    }



}
