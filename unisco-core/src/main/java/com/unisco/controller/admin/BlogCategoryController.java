package com.unisco.controller.admin;


import com.unisco.entity.BlogCategoryEntity;
import com.unisco.service.impl.BlogCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogCateControllerOfAdmin")
@RequestMapping(value = "/admin/blogCategory")
public class BlogCategoryController {
    @Autowired
    private BlogCategoryService blogCategoryService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/blogCategory");
        mav.addObject("listBlogCategory", blogCategoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("blogCateId")Long blogCateId, @RequestParam("blogCateTitle")String blogCateTitle, @RequestParam("blogCateContent")String blogCateContent) {
        ModelAndView mav = new ModelAndView("redirect:/admin/blogCategory/");
        BlogCategoryEntity blogCate;
        if(blogCateId != null){
            blogCate =blogCategoryService.findOneByBlogCateId(blogCateId);
        }else {
            blogCate= new BlogCategoryEntity();
        }
        blogCate.setBlogCateTitle(blogCateTitle);
        blogCate.setBlogCateContent(blogCateContent);
        blogCategoryService.save(blogCate);
        return mav;
    }

    @RequestMapping(value = "/edit/{blogCateId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("blogCateId")Long blogCateId) {
        ModelAndView mav = new ModelAndView("/admin/blogCategory_edit");
        mav.addObject("blogCateEdit", blogCategoryService.findOneByBlogCateId(blogCateId));
        return mav;
    }

}
