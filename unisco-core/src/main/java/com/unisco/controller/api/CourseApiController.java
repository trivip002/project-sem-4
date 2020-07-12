package com.unisco.controller.api;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.SectionEntity;
import com.unisco.entity.VideoEntity;
import com.unisco.service.impl.CategoryService;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.SectionService;
import com.unisco.service.impl.VideoService;
import com.unisco.utils.Principal;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping(value = "/api/course")
public class CourseApiController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private SectionService sectionService;

    @Autowired
    private VideoService videoService;

    @PostMapping(value = "/upload")
    public Object uploadFile(MultipartFile courseFileThumbnail) {
        return null;
    }

    @PostMapping(value = "/edit")
    public String updateCourse(@RequestBody DataBiding dataBiding) {
        //edit course
        CourseEntity courseEntity = dataBiding.getCourseId() != null ? courseService.getById(dataBiding.courseId) : new CourseEntity();
        courseEntity.setCourseName(dataBiding.getCourseName());
        courseEntity.setCourseSubtitle(dataBiding.getCourseSubtitle());
        courseEntity.setCourseDescription(dataBiding.getCourseDescription());
        courseEntity.setCourseLanguage(dataBiding.getCourseLanguage());
        courseEntity.setCourseDuration(dataBiding.getCourseDuration());
        courseEntity.setCourseThumbnail(dataBiding.getCourseThumbnail());
        courseEntity.setCoursePrice(dataBiding.getCoursePrice());
        courseEntity.setIsActive(dataBiding.getCourseActive());
        if(courseEntity.getCourseId()==null){
            courseEntity.setCreatedBy(Principal.getPrincipal());
        }
        courseEntity.setModifiedBy(Principal.getPrincipal());
        courseService.saveOrUpdate(courseEntity);
        Set<CategoryEntity> categoryEntities = new HashSet<>();
        courseEntity.setCategory(categoryEntities);
        courseService.saveOrUpdate(courseEntity);
        dataBiding.courseCategories.forEach(item -> categoryEntities.add(categoryService.getById(item)));
        courseEntity.setCategory(categoryEntities);
        courseService.saveOrUpdate(courseEntity);
        Set<SectionEntity> sectionEntities = new HashSet<>();
        courseEntity.setSection(sectionEntities);
        courseService.saveOrUpdate(courseEntity);
        //edit video and section
        dataBiding.dataSections.forEach(item -> {
            Set<VideoEntity> videoEntities = new HashSet<>();
            SectionEntity sectionEntity = item.getStatus().equals("new") ? new SectionEntity() : sectionService.getOneById(item.getId());
            sectionEntity.setSectionTitle(item.getTitle());
            sectionEntity.setSectionDuration(item.getDuration());
            sectionEntity.setSectionDescription(item.getDescription());
            sectionEntity.setVideos(videoEntities);
            sectionService.saveOrUpdate(sectionEntity);
            sectionEntity.setCourse(courseEntity);
            sectionService.saveOrUpdate(sectionEntity);
            dataBiding.dataVideos.forEach(videoItem -> {
                VideoEntity videoEntity = videoItem.status.equals("new") ? new VideoEntity() : videoService.getOneById(videoItem.getId());
                videoEntity.setVideoName(videoItem.getName());
                videoEntity.setVideoUrl(videoItem.getUrl());
                if (videoItem.getSectionId().equals(item.getId())) {
                    videoService.saveOrUpdate(videoEntity);
                    videoEntity.setSection(sectionEntity);
                }
                videoService.saveOrUpdate(videoEntity);
            });
        });
        return "success";
    }

    @Getter
    @Setter
    private static class RequestParamSection {
        private Long id;
        private String title;
        private String duration;
        private String description;
        private String status;
    }

    @Getter
    @Setter
    private static class RequestParamVideo {
        private Long id;
        private String name;
        private Long sectionId;
        private String url;
        private String status;
    }

    @Setter
    @Getter
    private static class DataBiding {
        private Long courseId;
        private String courseName;
        private String courseSubtitle;
        private String courseDescription;
        private String courseLanguage;
        private float coursePrice;
        private int courseActive;
        private List<Long> courseCategories;
        private String courseDuration;
        private String courseThumbnail;
        private List<RequestParamSection> dataSections;
        private List<RequestParamVideo> dataVideos;
    }

}
