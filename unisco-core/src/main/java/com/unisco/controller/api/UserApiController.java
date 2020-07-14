package com.unisco.controller.api;

import com.unisco.entity.UserEntity;
import com.unisco.service.impl.UserService;
import com.unisco.utils.FileUtils;
import com.unisco.utils.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping(value = "/api/user")
public class UserApiController {

    @Autowired
    private UserService userService;

    @PostMapping(value = "/edit")
    public String updateUser(Long userId, String username, String fullName, String emailAddress,
                             String password, String telephone, String address, String city,
                             String country, int isActive, MultipartFile fileupload) {
        if (!fileupload.getOriginalFilename().isEmpty()) {
            FileUtils.uploadFile(fileupload);
        }
        UserEntity userEntity = userService.getOneById(userId);
        userEntity.setUserName(username);
        userEntity.setFullName(fullName);
        userEntity.setUserEmail(emailAddress);
        userEntity.setPassword(password);
        userEntity.setTelephone(telephone);
        userEntity.setAddress(address);
        userEntity.setCity(city);
        userEntity.setCountry(country);
        userEntity.setIsActive(isActive);
        userEntity.setUserAvatar(fileupload.getOriginalFilename());
        return userService.updateByUser(userEntity);
    }

    @GetMapping(value = "get-avatar")
    public String getAvatar() {
        return userService.getOneByUserName(Principal.getPrincipal()).getUserAvatar() == null ? "default.jpg" : userService.getOneByUserName(Principal.getPrincipal()).getUserAvatar();
    }

    @PostMapping
    public Object changeStatus(Long userId, int status) {
        return userService.changeStatus(status, userId);
    }

    @GetMapping
    public Object getEditUser(@RequestParam Long userId) {
        UserEntity userEntity = userService.getOneById(userId);
        String selectIsActive = "";
        if(userEntity.getIsActive()==1){
            selectIsActive = "<select name='isActive' style='width: 100%;' class=\"ui hj145 dropdown cntry152 prompt srch_explore\" >"+
                    " <option selected value='1'>Active</option>"+
                    " <option  value='0'>InActive</option>"+
                    "</select>";
        }else{
            selectIsActive = "<select name='isActive' style='width: 100%;' class=\"ui hj145 dropdown cntry152 prompt srch_explore\" >"+
                    " <option  value='1'>Active</option>"+
                    " <option selected  value='0'>InActive</option>"+
                    "</select>";
        }
        return  "<div class=\"ui search focus mt-0\">" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"hidden\" name=\"userId\" value='" + userEntity.getUserId() + "' id=\"user_id\" >" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"text\" name=\"username\" value='" + userEntity.getUserName() + "' id=\"user_name\" required=\"\" maxlength=\"64\" placeholder=\"User Name\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"fullName\" value='" + userEntity.getFullName() + "' id=\"full_name\" required=\"\" maxlength=\"64\" placeholder=\"Full Name\">" +
                "</div></div>" +
                " <div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"email\" name=\"emailAddress\" value='" + userEntity.getUserEmail() + "' id=\"user_email\" required=\"\" maxlength=\"64\" placeholder=\"Email Address\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                " <input class=\"prompt srch_explore\" type=\"password\" name=\"password\" value='" + userEntity.getPassword() + "' id=\"password\" required=\"\" maxlength=\"64\" placeholder=\"Password\">" +
                "</div></div>" +
                "<div class=\"ui search focus mt-15\">\n" +
                "<div class=\"ui left icon input swdh11 swdh19\">" +
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"telephone\" value='" + userEntity.getTelephone() + "' id=\"telephone\" required=\"\" maxlength=\"10\" placeholder=\"Phone Number\">" +
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
                "<input class=\"prompt srch_explore\" type=\"text\" name=\"country\" value='" + userEntity.getCountry() + "' id=\"country\" required=\"\" maxlength=\"10\" placeholder=\"Country\">" +
                "</div></div>" +
                " <div class=\"ui search focus mt-15\">\n" +
                selectIsActive +
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
