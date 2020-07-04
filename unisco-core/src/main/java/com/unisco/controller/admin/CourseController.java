package com.unisco.controller.admin;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;
import com.unisco.service.impl.CategoryService;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.SectionService;
import com.unisco.service.impl.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

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
    public ModelAndView coursePage(){
        ModelAndView view = new ModelAndView("/admin/course");
        String searchStr="";
        view.addObject("listCourse", courseService.getAll());
        view.addObject("searchStr", searchStr);
        return view;
    }

    @RequestMapping(value = "/{course_id}", method = RequestMethod.GET)
    public ModelAndView showCourse(@PathVariable("course_id") Long id){
        ModelAndView view = new ModelAndView("/admin/course");
        view.addObject("course", courseService.getById(id));
        return view;
    }

//    @RequestMapping(value = "/{course_id}/edit", method = RequestMethod.GET)
//    public ModelAndView showEditCourseForm(@PathVariable("course_id") Long id){
//        ModelAndView view = new ModelAndView("/admin/course_edit");
//
//        CourseEntity courseEdit = courseService.getById(id);
//        List<SectionEntity> listSectionEdit = sectionService.getAll();
//        int count = 0;
//
//        for (SectionEntity sectionEntity : listSectionEdit
//             ) {
//            if (sectionEntity.getCourse().getCourseId().equals(courseEdit.getCourseId())){
//                count += 1;
//            }
//        }
//
//        Map<Integer, String> listLang = new HashMap<Integer, String>();
//        listLang.put(1, "English");
//        listLang.put(2, "Spanish");
//        listLang.put(3, "Portuguese");
//        listLang.put(4, "Japanese");
//        listLang.put(5, "Deutsch");
//        listLang.put(6, "French");
//        listLang.put(7, "Hindi");
//        listLang.put(8, "Italian");
//        listLang.put(9, "Polski");
//        listLang.put(10, "Thai");
//        listLang.put(11, "Romania");
//        listLang.put(12, "Telugu");
//        listLang.put(13, "Marathi");
//
//
//
//        view.addObject("courseEdit", courseEdit);
//        view.addObject("listCateEdit", categoryService.getAll());
//        view.addObject("listSectionEdit", listSectionEdit);
//        view.addObject("listVideoEdit", videoService.getAll());
//        view.addObject("listCount", count);
//        view.addObject("listLang", listLang);
//        return view;
//    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public  ModelAndView showCreate(){
        ModelAndView view = new ModelAndView("/admin/course_create");
        CourseEntity courseCreate = new CourseEntity();
        view.addObject("courseCreate", courseCreate);

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

        view.addObject("listLang", listLang);

        view.addObject("listCategory", categoryService.getAll());
        return view;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchCourse(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/course");
        if (key==null){
            view.addObject("listCourse", courseService.getAll());
        } else {
            view.addObject("listCourse", courseService.getByNameLike("%"+key+"%"));
        }
        return view;
    }
}
