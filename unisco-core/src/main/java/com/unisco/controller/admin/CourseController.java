package com.unisco.controller.admin;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.CategoryService;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.SectionService;
import com.unisco.service.impl.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller(value = "courseControllerOfAdmin")
@RequestMapping(value = "/admin/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private SectionService sectionService;

    @Autowired
    private VideoService videoService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView coursePage() {
        ModelAndView view = new ModelAndView("/admin/course");
        String searchStr = "";
        UserDetails userDetail = ((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        long isAdmin = userDetail.getAuthorities().stream().filter(item -> item.getAuthority().contains("ADMIN")).count();
        view.addObject("listCourse", isAdmin != 0 ? courseService.getAll() : courseService.getByUserName(userDetail.getUsername()));
        view.addObject("searchStr", searchStr);
        return view;
    }

    @RequestMapping(value = "/{course_id}", method = RequestMethod.GET)
    public ModelAndView showCourse(@PathVariable("course_id") Long id) {
        ModelAndView view = new ModelAndView("/admin/course");
        view.addObject("course", courseService.getById(id));
        return view;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView showEditCourseForm(@RequestParam(name = "courseId", required = false) Long id) {
        ModelAndView view = new ModelAndView("/admin/course_edit");
        Map<Integer, String> listLang = new HashMap<Integer, String>();
        listLang.put(1, "English");
        listLang.put(2, "Spanish");
        listLang.put(3, "Portuguese");
        listLang.put(4, "Japanese");
        listLang.put(5, "Deutsch");
        listLang.put(6, "French");
        listLang.put(7, "Hindi");
        listLang.put(8, "Italian");
        listLang.put(9, "Polski");
        listLang.put(10, "Thai");
        listLang.put(11, "Romania");
        listLang.put(12, "Telugu");
        listLang.put(13, "Marathi");
        CourseEntity courseEdit = id != null ? courseService.getById(id) : new CourseEntity();
        List<SectionEntity> listSectionEdit = sectionService.getAll();
        int count = 0;

        for (SectionEntity sectionEntity : listSectionEdit
        ) {
            if (sectionEntity.getCourse().getCourseId().equals(courseEdit.getCourseId())) {
                count += 1;
            }
        }
        view.addObject("courseEdit", courseEdit);
        view.addObject("listCateEdit", categoryService.getAll());
        view.addObject("listSectionEdit", listSectionEdit);
        view.addObject("listVideoEdit", videoService.getAll());
        view.addObject("listCount", count);
        view.addObject("listLang", listLang);
        return view;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchCourse(@RequestParam(value = "searchStr", required = false) String key) {
        ModelAndView view = new ModelAndView("/admin/course");
        if (key == null) {
            view.addObject("listCourse", courseService.getAll());
        } else {
            view.addObject("listCourse", courseService.getByNameLike("%" + key + "%"));
        }
        return view;
    }
}
