package com.unisco.controller.admin;

import com.unisco.service.impl.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "commentControllerOfAdmin")
@RequestMapping(value = "/admin/blogComment")
public class BlogCommentController {
    @Autowired
    private BlogCommentService commentService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/blogComment");
        mav.addObject("listComment", commentService.getAll());
        return mav;
    }

}
