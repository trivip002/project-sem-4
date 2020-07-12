package com.unisco.controller.admin;

import com.unisco.entity.BlogCategoryEntity;
import com.unisco.entity.BlogEntity;
import com.unisco.service.impl.BlogCateServiceBE;
import com.unisco.service.impl.BlogServiceBE;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.java.Log;
import org.hibernate.*;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

@Log
@Controller(value = "blogvwControllerOfAdmin")
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

    Session session;
    Transaction transaction;
    BlogCategoryEntity bc;
    BlogEntity be;
    ModelAndView mav = new ModelAndView();
    Criteria criteria;
    Criterion title, content;
    LogicalExpression logicalExpression;
    List list;


    @RequestMapping(value = {"/{name}BE","/{name}BE/{id}"}, method = RequestMethod.GET)
    public ModelAndView vBlogCate(@RequestParam(defaultValue = "", required = false) String search, @PathVariable(value = "name", required = true) String name, @PathVariable(value = "id", required = false) Long id) {
        mav.setViewName("admin/"+name+"BE");
        if (id != null) {mav.setViewName("admin/"+name+"EditBE");}
        if (name.equals("blogCate")) {
            if (id != null){
                mav.addObject("lstBlogCateEdit", blogCateService.findOneById(id));
            }
            list = blogCateService.findByBlogCateTitleLikeOrBlogCateContent("%"+search+"%","%"+search+"%");
        } else if (name.equals("blog")) {
            if (id != null){
                mav.addObject("lstBlogEdit", blogService.findOneBEById(id));
            }
            list = blogService.findByBlogTitleLikeOrBlogContentLike("%"+search+"%", "%"+search+"%");
        } else if (name.equals("blogFG")){
            list = blogService.findByBlogTitleLikeOrBlogContentLike("%"+search+"%", "%"+search+"%");
        }
        mav.addObject("selectBlogCate", blogCateService.getAll());
        mav.addObject("email", userService.getOneByUserName(Principal.getPrincipal()).getUserEmail());
        mav.addObject("title", ""+name);
        mav.addObject("lstBlog", list);

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


    @RequestMapping(value = "/blogBE", method = RequestMethod.POST)
    public String souBlog(@ModelAttribute("saveOrUpdate") BlogEntity blogEntity){
        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        be = new BlogEntity();
        be.setBlogId(blogEntity.getBlogId());
        be.setBlogTitle(blogEntity.getBlogTitle());
        be.setBlogContent(blogEntity.getBlogContent());
        be.setIsActive(blogEntity.getIsActive());
        session.saveOrUpdate(be);
        transaction.commit();
        session.close();
        return "redirect:blogBE";

    }
    @Getter@Setter
    class RequestBlog{
        RequestBlog(){}
        private Long blogId;
        private String blogTitle;
        private String blogMetaTitle;
        private String blogImg;
        private String blogContent;
        private Long categoryId;
        private int isActive = 0;
    }
}