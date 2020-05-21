package com.boots.controller;

import com.boots.entity.ServiceSub;
import com.boots.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class ServiceSubController {

    @Autowired
    private UserService userService;

    @GetMapping("/main")
    public String man_2(Model model) {
        model.addAttribute("addServiceForm", new ServiceSub());
        return "main";
    }

    @PostMapping("/main")
    public String addUser(@ModelAttribute("addServiceForm") ServiceSub addServiceForm, Model model) {
        ServiceSub s = new ServiceSub();
        if (!userService.saveService(addServiceForm)) {
            model.addAttribute("nameError", "Сервис с таким именем уже существует");
        }
        return "main";
    }

    public UserService getService() {
        return userService;
    }

    public void setService(UserService service) {
        this.userService = service;
    }
}
