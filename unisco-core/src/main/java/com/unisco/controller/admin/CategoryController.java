package com.unisco.controller.admin;
import com.unisco.entity.CategoryEntity;
import com.unisco.service.impl.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "cateControllerOfAdmin")
@RequestMapping(value = "/admin/category")

public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/category");
        mav.addObject("listCategory", categoryService.getAll());
        return mav;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("cateId")Long cateId, @RequestParam("cateName")String cateName) {
        ModelAndView mav = new ModelAndView("redirect:/admin/category/");
        CategoryEntity cates;
        if(cateId != null){
            cates =categoryService.findOneByCateId(cateId);
        }else {
            cates= new CategoryEntity();
        }
        cates.setCateName(cateName);
        categoryService.save(cates);
        return mav;
    }

    @RequestMapping(value = "/edit/{cateId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("cateId")Long cateId) {
        ModelAndView mav = new ModelAndView("/admin/category_edit");
        mav.addObject("cateEdit", categoryService.findOneByCateId(cateId));
        return mav;
    }

}
