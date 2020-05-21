package com.boots.controller;

import com.boots.entity.ServiceSub;
import com.boots.entity.User;
import com.boots.entity.UserAndServiceSub;
import com.boots.repository.ServiceSubRepository;
import com.boots.repository.UserAndServiceSubRepository;
import com.boots.repository.UserRepository;
import com.boots.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
public class ServiceSubController {

    @Autowired
    private UserService userService;
    @Autowired
    UserRepository userRepository;
    @Autowired
    ServiceSubRepository serviceRepository;
    @Autowired
    UserAndServiceSubRepository userAndServiceSubRepository;

    @GetMapping(path="/all_users")
    public @ResponseBody Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping(path="/all_services")
    public @ResponseBody Iterable<ServiceSub> getAllServices() {
        return serviceRepository.findAll();
    }

    @GetMapping(path="/all_users_and_services")
    public @ResponseBody Iterable<UserAndServiceSub> getAllUsersAndServices() {
        return userAndServiceSubRepository.findAll();
    }

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
