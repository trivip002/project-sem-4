package com.unisco.controller.web;

import com.unisco.service.impl.BlogCategoryService;
import com.unisco.service.impl.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogControllerOfWeb")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @Autowired
    private BlogCategoryService blogCategoryService;

    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public ModelAndView getBlog(){
        ModelAndView mav = new ModelAndView("web/blog");
        mav.addObject("listBlog", blogService.getAll());
        mav.addObject("listBlogCate", blogCategoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/blog/view", method = RequestMethod.GET)
    public ModelAndView getBlogDetail(@RequestParam(value = "id", required = false) Long id){
        ModelAndView mav = new ModelAndView("/web/blog_detail_view");
        if (id==null){
            mav = new ModelAndView("web/blog");
            return mav;
        } else {
            mav.addObject("blog", blogService.findOneByBlogId(id));
            return mav;
        }
    }

    @RequestMapping(value = "/blog/searchById", method = RequestMethod.GET)
    public ModelAndView searchBlogByBlogCateId(@RequestParam(value = "blogCateId", required = false) Long id){
        ModelAndView mav = new ModelAndView("/web/blog");
        if (id==null){
            mav.addObject("listBlog", blogService.getAll());
        } else {
            mav.addObject("listBlog", blogService.getByBlog(blogCategoryService.findOneByBlogCateId(id)));
        }
        mav.addObject("listBlogCate", blogCategoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/blog/searchByTitle", method = RequestMethod.GET)
    public ModelAndView searchByTitle(@RequestParam(value = "blogTitle", required = false) String key){
        ModelAndView mav = new ModelAndView("/web/blog");
        if (key==null) {
            mav.addObject("listBlog", blogService.getAll());
        } else {
            mav.addObject("listBlog", blogService.getByNameLike("%" + key + "%"));
        }
        mav.addObject("listBlogCate", blogCategoryService.getAll());
        return mav;
    }

}
