package com.unisco.controller.admin;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionDetailEntity;
import com.unisco.entity.PromotionEntity;
import com.unisco.repository.CourseRepository;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.PromotionDetailService;
import com.unisco.service.impl.PromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "promoDetailControllerOfAdmin")
@RequestMapping(value = "/admin/promotionDetail")

public class PromotionDetailController {
    @Autowired
    private PromotionDetailService promotionDetailService;
    @Autowired
    private PromotionService promotionService;
    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/promotionDetail");
        mav.addObject("listPromotionDetail", promotionDetailService.getAll());
        mav.addObject("listPromotion", promotionService.getAll());
        mav.addObject("listCourse", courseService.getAll());
        return mav;
    }

  /*  @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("promotionId") Long promotionId,@RequestParam("courseId") Long courseId,@RequestParam("promotionCode") String promotionCode, @RequestParam("courseName") String courseName) {
        ModelAndView mav = new ModelAndView("redirect:/admin/promotionDetail/");
        PromotionDetailEntity promotionDetails= new PromotionDetailEntity();
        PromotionEntity promotion =new PromotionEntity();
        CourseEntity course = new CourseEntity();
        promotion.setPromotionCode(promotionCode);
        course.setCourseName(courseName);
        promotionDetailService.save(promotionDetails);
        return mav;
    }*/


/* @RequestMapping(value = "/edit/{promotionId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("promotionId")Long promotionId) {
        ModelAndView mav = new ModelAndView("/admin/promotionDetail_edit");
        mav.addObject("promoDetailEdit", promotionService.findOneByPromoId(promotionId));
        return mav;
    }*/

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchReview(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/promotionDetail");
        if (key==null){
            view.addObject("listPromotionDetail", promotionDetailService.getAll());
        } else {
            view.addObject("listPromotionDetail", promotionDetailService.getByNameLike("%"+key+"%"));
        }
        return view;
    }

}
