package com.unisco.controller.web;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.*;
import com.unisco.utils.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "exploreControllerOfWeb")
public class ExploreController {

    @Autowired
    private UserService userService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private SectionService sectionService;

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/explore/course", method = RequestMethod.GET)
    public ModelAndView courseDetail(@RequestParam(name = "courseId") Long courseId){
        ModelAndView mav = new ModelAndView("web/course_detail_view");
        UserEntity userEntity = userService.getOneByUserName(Principal.getPrincipal());
        CourseEntity courseEntity = courseService.getById(courseId);
        boolean isWatchVideo = false;
        String editorAvatar = "default.jpg";
        try {
            List<CourseEntity> myCourse = orderService.getCoursesByUser(userEntity);
            isWatchVideo = myCourse.stream().anyMatch(item->item.getCourseId().equals(courseEntity.getCourseId()));
            editorAvatar = userService.getOneByUserName(courseEntity.getCreatedBy()).getUserAvatar();
        }catch (Exception e) {}
        if (courseId!=null){
            mav.addObject("course", courseEntity);
            mav.addObject("sections", sectionService.getByCourseEntityOrderBySectionId(courseService.getById(courseId)));
            mav.addObject("review", reviewService.getAll());
            mav.addObject("isWatchVideo", isWatchVideo);
            mav.addObject("editorAvatar", editorAvatar);
        }
        return mav;
    }

    @RequestMapping(value = "/explore/search", method = RequestMethod.GET)
    public ModelAndView explore(@RequestParam(name = "searchStr", required = false) String searchStr){
        ModelAndView mav = new ModelAndView("web/explore");
        if (!("".equals(searchStr))){
            mav.addObject("listCourse", courseService.getByNameLike("%"+searchStr+"%"));
        } else {
            mav.addObject("listCourse", courseService.getAll());
        }
        return mav;
    }
}
