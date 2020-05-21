package com.boots.controller;

import com.boots.entity.ServiceSub;
import com.boots.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@Controller
public class ServiceSubController {

    @Autowired
    private UserService userService;

    @GetMapping("/main")
    public String man_2(Model model) throws IOException {
        userService.downloadCfg();
        model.addAttribute("addServiceForm", new ServiceSub());
        return "main";
    }

    @PostMapping("/main")
    public String addUser(@ModelAttribute("addServiceForm") ServiceSub addServiceForm, Model model) {
        if (!userService.addServicePost(addServiceForm)) {
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
