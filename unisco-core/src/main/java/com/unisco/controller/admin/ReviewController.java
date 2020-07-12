package com.unisco.controller.admin;

import com.unisco.service.impl.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchReview(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/review");
        if (key==null){
            view.addObject("listReview", reviewService.getAll());
        } else {
            view.addObject("listReview", reviewService.getByNameLike("%"+key+"%"));
        }
        return view;
    }

}
