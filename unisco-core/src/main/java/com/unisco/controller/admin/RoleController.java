package com.unisco.controller.admin;

import com.unisco.entity.RoleEntity;
import com.unisco.service.impl.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "roleControllerOfAdmin")
@RequestMapping(value = "/admin/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView mav = new ModelAndView("admin/role");
        mav.addObject("listRole", roleService.getAll());
        return mav;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
   public ModelAndView Create(@RequestParam("roleId")Long roleId,@RequestParam("roleCode")String roleCode,@RequestParam("roleName")String roleName) {
        ModelAndView mav = new ModelAndView("redirect:/admin/role/");
        RoleEntity roles;
        if(roleId != null){
            roles =roleService.findOneByRoleId(roleId);
        }else {
            roles= new RoleEntity();
        }
        roles.setRoleCode(roleCode);
        roles.setRoleName(roleName);
        roleService.save(roles);
        return mav;
    }

    @RequestMapping(value = "/delete/{roleId}",method = RequestMethod.GET )
    public ModelAndView doDelete(@PathVariable("roleId")Long roleId) {
        ModelAndView mav = new ModelAndView("redirect:/admin/role/");
        roleService.delete(roleId);
        return mav;
    }

    @RequestMapping(value = "/edit/{roleId}",method = RequestMethod.GET )
    public ModelAndView findEdit(@PathVariable("roleId")Long roleId) {
        ModelAndView mav = new ModelAndView("/admin/role_edit");
        mav.addObject("roleEdit", roleService.findOneByRoleId(roleId));
        return mav;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchRole(@RequestParam(value = "searchStr", required = false) String key){
        ModelAndView view = new ModelAndView("/admin/role");
        if (key==null){
            view.addObject("listRole", roleService.getAll());
        } else {
            view.addObject("listRole", roleService.getByNameLike("%"+key+"%"));
        }
        return view;
    }

}
