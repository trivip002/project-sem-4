package com.unisco.controller.api;

import com.unisco.entity.UserEntity;
import com.unisco.service.impl.UserService;
import com.unisco.utils.FileUtils;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/user")
public class UserApiController {

    @Autowired
    private UserService userService;

    @PostMapping(value = "/edit")
    public String uploadFile(@RequestBody ParamRequest data) {
        FileUtils.writeOrUpdateFileByBase64(data.stringBase64,data.imageName);
        UserEntity userEntity = userService.getOneById(data.userId);
        userEntity.setUserName(data.userName);
        userEntity.setFullName(data.fullName);
        userEntity.setPassword(data.getPassword());
        userEntity.setTelephone(data.telephone);
        userEntity.setAddress(data.getAddress());
        userEntity.setCity(data.getCity());
        userEntity.setCountry(data.getCountry());
        userEntity.setUserAvatar(data.imageName);
        return userService.updateByUser(userEntity);
    }

    @Getter@Setter
    private static class ParamRequest {
        private Long userId;
        private String userName;
        private String fullName;
        private String email;
        private String password;
        private String telephone;
        private String address;
        private String city;
        private String country;
        private String imageName;
        private String stringBase64;
    }

    @GetMapping
    public Object getEditUser(@RequestParam Long userId) {
        UserEntity userEntity = userService.getOneById(userId);
        return "<div class=\"ui search focus mt-40\">" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"text\" name=\"username\" value='" + userEntity.getUserName() + "' id=\"user_name\" required=\"\" maxlength=\"64\" placeholder=\"User Name\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"fullname\" value='" + userEntity.getFullName() + "' id=\"full_name\" required=\"\" maxlength=\"64\" placeholder=\"Full Name\">" +
                "</div></div>" +
                " <div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"email\" name=\"emailaddress\" value='" + userEntity.getUserEmail() + "' id=\"user_email\" required=\"\" maxlength=\"64\" placeholder=\"Email Address\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"password\" name=\"password\" value='" + userEntity.getPassword() + "' id=\"password\" required=\"\" maxlength=\"64\" placeholder=\"Password\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"phonenumber\" value='" + userEntity.getTelephone() + "' id=\"telephone\" required=\"\" maxlength=\"10\" placeholder=\"Phone Number\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"text\" name=\"address\" value='" + userEntity.getAddress() + "' id=\"address\" required=\"\" maxlength=\"10\" placeholder=\"Address\">" +
                "</div></div>" +
                " <div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"city\" value='" + userEntity.getCity() + "' id=\"city\" required=\"\" maxlength=\"10\" placeholder=\"City\">" +
                "</div></div>" +
                " <div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"city\" value='" + userEntity.getCountry() + "' id=\"country\" required=\"\" maxlength=\"10\" placeholder=\"Country\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "                                <div class=\"ui left icon input swdh11 swdh19\">\n" +
                "                                    <div class=\"upload__input\">\n" +
                "                                        <div class=\"input-group\">\n" +
                "                                            <div class=\"custom-file\">\n" +
                "                                                <input type=\"file\" class=\"custom-file-input\" id=\"user_avatar\" name='fileupload' onchange='openFile(event)'>\n" +
                "                                                <label style=\"height: 39px;\" class=\"custom-file-label\" for=\"user_avatar\">" + userEntity.getUserAvatar() + "</label>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                            </div>";
    }
}
