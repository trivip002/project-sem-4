package com.unisco.controller.web;

import com.unisco.entity.SenderEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "contactControllerOfWeb")
public class ContactController {



    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contact(){
        ModelAndView view = new ModelAndView("web/contact");
        return view;
    }

    @RequestMapping(value = "/sendMail", method = RequestMethod.GET)
    public ModelAndView sendMail(@ModelAttribute("sender")SenderEntity sender, BindingResult result){
        ModelAndView view = new ModelAndView("web/contact");

        return view;
    }
}
