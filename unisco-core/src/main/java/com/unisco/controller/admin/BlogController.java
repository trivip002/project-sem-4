package com.unisco.controller.admin;

import com.unisco.entity.BlogEntity;
import com.unisco.entity.base.BaseEntity;
import com.unisco.service.impl.BlogCategoryService;
import com.unisco.service.impl.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.io.Serializable;

@Controller(value = "blogControllerOfAdmin")
@RequestMapping(value = "/admin/blog")
public class BlogController extends BaseEntity implements Serializable {
    @Autowired
    private BlogService blogService;
    @Autowired
    private BlogCategoryService blogCategoryService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/blog");
        mav.addObject("listBlog", blogService.getAll());
        mav.addObject("listBlogCategory", blogCategoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("blogId")Long blogId,@RequestParam("blogTitle")String blogTitle, @RequestParam("blogMetaTitle")String blogMetaTitle, @RequestParam("blogImg")String blogImg, @RequestParam("blogContent")String blogContent, @RequestParam("isActive")int isActive) {
        ModelAndView mav = new ModelAndView("redirect:/admin/blog/");
        BlogEntity blog;
        if(blogId != null){
            blog =blogService.findOneByBlogId(blogId);
        }else {
            blog= new BlogEntity();
        }
        blog.setBlogTitle(blogTitle);
        blog.setBlogMetaTitle(blogMetaTitle);
        blog.setBlogImg(blogImg);
        blog.setBlogContent(blogContent);
        blog.setIsActive(isActive);
        blogService.save(blog);
        return mav;
    }

    @RequestMapping(value = "/edit/{blogId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("blogId")Long blogId) {
        ModelAndView mav = new ModelAndView("/admin/blog_edit");
        mav.addObject("blogEdit", blogService.findOneByBlogId(blogId));
        mav.addObject("listBlogCategory", blogCategoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/blog");
        if (key==null){
            view.addObject("listBlog", blogService.getAll());
        } else {
            view.addObject("listBlog", blogService.getByNameLike("%"+key+"%"));
        }
        return view;
    }

}
