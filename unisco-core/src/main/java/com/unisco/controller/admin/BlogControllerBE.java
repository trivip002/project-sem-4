package com.unisco.controller.admin;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.service.impl.BlogCateServiceBE;
import com.unisco.service.impl.BlogServiceBE;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller(value = "blogControllerOfAdmin")
@RequestMapping(value = "/admin")
public class BlogControllerBE {

    @Autowired
    private UserService userService;

    @Autowired
    private BlogCateServiceBE blogCateService;

    @Autowired
    private BlogServiceBE blogService;

    @Autowired
    SessionFactory sessionFactory;

    Session session = null;
    Transaction transaction = null;
    BlogCategoryEntity bc = null;
    BlogEntity be = null;


    /*blog cate*/

    @RequestMapping(value = "/blogCateBE", method = RequestMethod.GET)
    public ModelAndView vBlogCate() {
        ModelAndView mav = new ModelAndView("admin/blogCateBE");
        mav.addObject("lstBlogCate", blogCateService.getAll());
        mav.addObject("email", userService.getOneByUserName(Principal.getPrincipal()).getUserEmail());
        mav.addObject("title","Blog Categories");
        return mav;
    }

    @RequestMapping(value = "/blogCateBE", method = RequestMethod.POST)
    public String souBlogCate(@ModelAttribute("saveOrUpdate") BlogCategoryEntity blogCategoryEntity){

        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        if (blogCategoryEntity.getBlogCateId() != null) { bc = (BlogCategoryEntity) session.load(BlogCategoryEntity.class, blogCategoryEntity.getBlogCateId());}
        bc = new BlogCategoryEntity();
        bc.setBlogCateId(blogCategoryEntity.getBlogCateId());
        bc.setBlogCateTitle(blogCategoryEntity.getBlogCateTitle());
        bc.setBlogCateContent(blogCategoryEntity.getBlogCateContent());
        session.saveOrUpdate(bc);
        transaction.commit();
        session.close();
        return "redirect:blogCateBE";

    }

    @RequestMapping(value = "/blogCateBE/{id}", method = RequestMethod.GET)
    public ModelAndView blogCateEdit(@PathVariable("id") Long id){
        ModelAndView mav = new ModelAndView("admin/blogCateEditBE");
        mav.addObject("lstBlogCateEdit", blogCateService.findOneById(id));
        return mav;
    }



    /*blog*/

    @RequestMapping(value = "/blogBE", method = RequestMethod.GET)
    public ModelAndView vBlog() {
        ModelAndView mav = new ModelAndView("admin/blogBE");
        mav.addObject("lstBlog", blogService.getAllBE());
        mav.addObject("email", userService.getOneByUserName(Principal.getPrincipal()).getUserEmail());
        mav.addObject("title","Blog");
        return mav;
    }

    @RequestMapping(value = "/blogBE", method = RequestMethod.POST)
    public String souBlog(@ModelAttribute("saveOrUpdate") BlogEntity blogEntity){

        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        if (blogEntity.getBlogId() != null) { be = (BlogEntity) session.get(BlogEntity.class, blogEntity.getBlogId());}
        be = new BlogEntity();
        be.setBlogId(blogEntity.getBlogId());
        be.setBlogTitle(blogEntity.getBlogTitle());
        be.setBlogContent(blogEntity.getBlogContent());
        session.saveOrUpdate(be);
        transaction.commit();
        session.close();
        return "redirect:blogBE";

    }

    @RequestMapping(value = "/blogBE/{id}", method = RequestMethod.GET)
    public ModelAndView blogEdit(@PathVariable("id") Long id){
        ModelAndView mav = new ModelAndView("admin/blogEditBE");
        mav.addObject("lstBlogEdit", blogService.findOneBEById(id));
        return mav;
    }


    @RequestMapping(value = "/blogCateBE", method = RequestMethod.GET)
    public String search(@RequestParam String Search){
        Query query = session.createQuery("FROM BlogCategoryEntity bc WHERE bc.blogCateTitle LIKE "+Search);
        List<BlogCategoryEntity> entityList = query.list();
        ModelAndView mav = new ModelAndView("admin/blogCateBE");
        mav.addObject("lst",entityList);
        return "blogCateBE";
    }








}
