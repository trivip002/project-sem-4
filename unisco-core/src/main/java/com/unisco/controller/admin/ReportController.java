package com.unisco.controller.admin;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.PromotionService;
import com.unisco.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value="/admin")
public class ReportController {

    @Autowired
    private UserService userService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private PromotionService promotionService;

    @RequestMapping(value="/userReport", method= RequestMethod.GET)
    public ModelAndView userListReport(HttpServletRequest req, HttpServletResponse res){

        ModelAndView mav = new ModelAndView("admin/userReport");

        String typeReport = req.getParameter("type");

        List<UserEntity> list = userService.getAll();

        if(typeReport != null && typeReport.equals("xls")){
            return new ModelAndView(new ExcelUserReportView(), "userList", list);
        } else if(typeReport != null && typeReport.equals("pdf")){
            return new ModelAndView(new PDFUserReportView(), "userList", list);
        }

        mav.addObject("userList", list);

        return mav;
    }

    @RequestMapping(value="/courseReport", method= RequestMethod.GET)
    public ModelAndView courseListReport(HttpServletRequest req, HttpServletResponse res){

        ModelAndView mav = new ModelAndView("admin/courseReport");

        String typeReport = req.getParameter("type");

        List<CourseEntity> list = courseService.getAll();

        if(typeReport != null && typeReport.equals("xls")){
            return new ModelAndView(new ExcelCourseReportView(), "courseList", list);
        } else if(typeReport != null && typeReport.equals("pdf")){
            return new ModelAndView(new PDFCourseReportView(), "courseList", list);
        }

        mav.addObject("courseList", list);

        return mav;
    }

    @RequestMapping(value="/promotionReport", method= RequestMethod.GET)
    public ModelAndView promotionListReport(HttpServletRequest req, HttpServletResponse res){

        ModelAndView mav = new ModelAndView("admin/promoReport");

        String typeReport = req.getParameter("type");

        List<PromotionEntity> list = promotionService.getAll();

        if(typeReport != null && typeReport.equals("xls")){
            return new ModelAndView(new ExcelPromoReportView(), "promoList", list);
        } else if(typeReport != null && typeReport.equals("pdf")){
            return new ModelAndView(new PDFPromoReportView(), "promoList", list);
        }

        mav.addObject("promoList", list);

        return mav;
    }

}
