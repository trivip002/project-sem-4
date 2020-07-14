package com.unisco.controller.api;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionEntity;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.PromotionDetailService;
import com.unisco.service.impl.PromotionService;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/promotion-detail")
public class PromotionDetailApiController {

    @Autowired
    private PromotionDetailService promotionDetailService;

    @Autowired
    private PromotionService promotionService;

    @Autowired
    private CourseService courseService;

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

    @PostMapping("get-promotion-detail")
    public Object getPromotionDetail(@RequestBody DataPromotionDetail data) {
        List<ResponseData> prices = new ArrayList<>();
        try {
            List<CourseEntity> courseEntities = promotionDetailService.getCourseByPromotionIdMatched(promotionService.getPromotionIdByPromotionCode(data.promotionCode))
                    .stream().filter(item -> data.courseIds.contains(item.getCourseId())).collect(Collectors.toList());
            PromotionEntity promotionEntity = promotionService.findOneByPromoId(promotionService.getPromotionIdByPromotionCode(data.promotionCode));
            courseEntities.forEach(item -> prices.add(new ResponseData(item.getCourseId(), (double) (item.getCoursePrice() - promotionEntity.getDiscountPrice()))));
        } catch (Exception e) {
            return new ArrayList<>();
        }
        return prices;
    }

    @Getter@Setter@AllArgsConstructor
    private static class ResponseData {
        private Long courseId;
        private Double lastPrice;
    }
    @Getter@Setter
    private static class DataPromotionDetail {
        private List<Long> courseIds;
        private String promotionCode;
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
