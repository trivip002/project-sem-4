package com.unisco.controller.admin;
import com.unisco.entity.PromotionEntity;
import com.unisco.service.impl.PromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "promoControllerOfAdmin")
@RequestMapping(value = "/admin/promotion")

public class PromotionController {

    @Autowired
    private PromotionService promotionService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/promotion");
        mav.addObject("listPromotion", promotionService.getAll());
        return mav;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView Create(@RequestParam("promotionId")Long promotionId, @RequestParam("promotionCode")String promotionCode, @RequestParam("discountPrice") float discountPrice ,@RequestParam("isActive")int isActive) {
        ModelAndView mav = new ModelAndView("redirect:/admin/promotion/");
        PromotionEntity promotions;
        if(promotionId != null){
            promotions =promotionService.findOneByPromoId(promotionId);
        }else {
            promotions= new PromotionEntity();
        }
        promotions.setPromotionCode(promotionCode);
        promotions.setDiscountPrice(discountPrice);
        promotions.setIsActive(isActive);
        promotionService.save(promotions);
        return mav;
    }

    @RequestMapping(value = "/edit/{promotionId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("promotionId")Long promotionId) {
        ModelAndView mav = new ModelAndView("/admin/promotion_edit");
        mav.addObject("promoEdit", promotionService.findOneByPromoId(promotionId));
        return mav;
    }

}
