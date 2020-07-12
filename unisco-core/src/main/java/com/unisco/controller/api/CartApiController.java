package com.unisco.controller.api;

import com.unisco.entity.CourseEntity;
import com.unisco.entity.UserEntity;
import com.unisco.service.impl.CourseService;
import com.unisco.service.impl.OrderService;
import com.unisco.service.impl.UserService;
import com.unisco.utils.Principal;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/cart")
public class CartApiController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @GetMapping("/get-cart")
    public Object getCard(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            return Arrays.stream(cookies).filter(c -> c.getName().equals(Principal.getPrincipal()))
                    .map(Cookie::getValue).collect(Collectors.joining(", "));
        }
        return "No cookies";
    }

    @PostMapping("/add-to-cart")
    public Object addToCard(HttpServletResponse response, @RequestBody DataBiding dataBiding) {
        List<CourseEntity> courseEntities = new ArrayList<>();
        courseEntities.add(courseService.getById(dataBiding.getCourseId()));
        dataBiding.getCourseCookies().forEach(item -> courseEntities.add(courseService.getById(item.id)));
        Cookie cookie = new Cookie(Principal.getPrincipal(), parseCourseToJson(courseEntities));
        cookie.setMaxAge(24 * 60 * 60); // expires in 1 days
        response.addCookie(cookie);
        return "success";
    }

    @PostMapping("/remove-cart")
    public Object removeCart(HttpServletResponse response, @RequestBody DataBiding dataBiding) {
        List<CourseEntity> courseEntities = new ArrayList<>();
        dataBiding.getCourseCookies().stream().filter(item -> !item.getId().equals(dataBiding.getCourseId())).forEach(item -> courseEntities.add(courseService.getById(item.getId())));
        Cookie cookie = new Cookie(Principal.getPrincipal(), parseCourseToJson(courseEntities));
        cookie.setMaxAge(24 * 60 * 60); // expires in 1 days
        response.addCookie(cookie);
        return "success";
    }

    @PostMapping("/remove-all-cart")
    public Object removeAllCart(HttpServletResponse response) {
        Cookie cookie = new Cookie(Principal.getPrincipal(), null);
        response.addCookie(cookie);
        return "success";
    }

    @PostMapping("/checkout")
    public Object checkout(HttpServletResponse response, @RequestBody List<courseCookie> courseCookies) {
        UserEntity userEntity = userService.getOneByUserName(Principal.getPrincipal());
        List<CourseEntity> courseEntities = new ArrayList<>();
        courseCookies.forEach(item -> courseEntities.add(courseService.getById(item.id)));
        orderService.createOrderByUserAndCourses(userEntity, courseEntities);
        Cookie cookie = new Cookie(Principal.getPrincipal(), null);
        response.addCookie(cookie);
        return "success";
    }

    @Getter
    @Setter
    @NoArgsConstructor
    private static class DataBiding {
        public Long courseId;
        public List<courseCookie> courseCookies;
    }

    @Getter
    @Setter
    @NoArgsConstructor
    private static class courseCookie {
        private Long id;
        private String name;
        private String description;
        private String price;
        private String image;
    }

    private String parseCourseToJson(List<CourseEntity> courseEntities) {
        StringBuilder jsonStr = new StringBuilder();
        jsonStr.append("[");
        courseEntities.forEach(item -> {
            jsonStr.append("{");
            jsonStr.append("\"id\":\"" + item.getCourseId() + "\",");
            jsonStr.append("\"name\":\"" + item.getCourseName() + "\",");
            jsonStr.append("\"description\":\"" + item.getCourseDescription() + "\",");
            jsonStr.append("\"price\":\"" + item.getCoursePrice() + "\",");
            jsonStr.append("\"image\":\"" + item.getCourseThumbnail() + "\"");
            jsonStr.append("}");
            if (courseEntities.indexOf(item) != courseEntities.size() - 1) {
                jsonStr.append(",");
            }
        });
        jsonStr.append("]");
        return jsonStr.toString();
    }
}
