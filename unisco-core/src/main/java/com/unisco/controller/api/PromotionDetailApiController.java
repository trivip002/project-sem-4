package com.unisco.controller.api;

import com.unisco.entity.CourseEntity;
import com.unisco.service.impl.PromotionDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/promotion-detail")
public class PromotionDetailApiController {

    @Autowired
    private PromotionDetailService promotionDetailService;

    @GetMapping(value = "/get-courses")
    public Object getCourseFromPromotion(@RequestParam Long promotionId) {
        StringBuilder content = new StringBuilder();
        List<CourseEntity> courseEntities = promotionDetailService.getCourseByPromotionId(promotionId);
        content.append(" <select class='course-name'  name='courseName' >");
        courseEntities.forEach(item -> {
            content.append("<option value='"+item.getCourseId()+"'>"+item.getCourseName()+"</option>");
        });
        content.append("</select>");
        return content;
    }

    @PostMapping
    public Object createPromotionDetail(Long promotionId, Long courseId){
        try{
            promotionDetailService.savePromotionDetailByPromotionIdAndCourseId(promotionId,courseId);
        }catch (Exception e){
            return e.getMessage();
        }
        return "success";
    }
}
