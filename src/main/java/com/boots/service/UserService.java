package com.boots.service;

import com.boots.entity.ServiceSub;
import com.boots.entity.User;
import com.boots.entity.UserAndServiceSub;
import com.boots.repository.ServiceSubRepository;
import com.boots.repository.UserAndServiceSubRepository;
import com.boots.repository.UserRepository;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.*;
import java.time.Duration;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Service
public class UserService implements UserDetailsService {
    @PersistenceContext
    private EntityManager em;
    @Autowired
    UserRepository userRepository;
    @Autowired
    ServiceSubRepository serviceRepository;
    @Autowired
    UserAndServiceSubRepository userAndServiceSubRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    /*@GetMapping(path="/all")
    public @ResponseBody Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }*/

    public void downloadCfg() throws IOException {
            try {
                ObjectMapper mapper = new ObjectMapper();
                JsonFactory f = new JsonFactory();
                List<ServiceSub> lstService = null;
                JsonParser jp = f.createJsonParser(new File("/home/dmitry/spring-reg-auth/src/main/resources/data/services_config.json"));
                TypeReference<List<ServiceSub>> tRef = new TypeReference<List<ServiceSub>>() {};
                lstService = mapper.readValue(jp, tRef);
                for (ServiceSub service : lstService) {
                    addServiceConf(service);
                }
            } catch (JsonGenerationException e) {
                e.printStackTrace();
            } catch (JsonMappingException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return user;
    }

    public User findUserById(Long userId) {
        Optional<User> userFromDb = userRepository.findById(userId);
        return userFromDb.orElse(new User());
    }

    public List<User> allUsers() {
        return userRepository.findAll();
    }

    public boolean saveUser(User user) {
        User userFromDB = userRepository.findByUsername(user.getUsername());
        if (userFromDB != null) {
            return false;
        }
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    public void saveUserAndService(ServiceSub service, User user, LocalDate expire) {
        UserAndServiceSub userAndServiceSub = new UserAndServiceSub();
        userAndServiceSub.setService(service);
        userAndServiceSub.setUser(user);
        System.out.println(expire);
        System.out.println(LocalDate.now());
        //System.out.println(Duration.between(expire, LocalDate.now()));
        userAndServiceSub.setExpire(Duration.between(expire.atStartOfDay(), LocalDate.now().atStartOfDay()).toDays());
        userAndServiceSubRepository.save(userAndServiceSub);
    }

    public boolean addServicePost(ServiceSub service) {
        ServiceSub serviceFromDB = serviceRepository.findByName(service.getName());

        UserDetails userDetailsImpl = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userRepository.findByUsername(userDetailsImpl.getUsername());

        DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate expire = LocalDate.parse(service.getExpire(), f);

        if (serviceFromDB != null) {
            saveUserAndService(serviceFromDB, user, expire);
            return false;
        }

        saveService(service);
        saveUserAndService(service, user, expire);
        return true;
    }

    public boolean addServiceConf(ServiceSub service) {
        if (serviceRepository.findByName(service.getName()) != null) {
            return false;
        }
        saveService(service);
        return true;
    }

    public boolean saveService(ServiceSub service) {
        service.setDescription(service.getDescription());
        service.setName(service.getName());
        service.setCategory(service.getCategory());
        service.setPrice(service.getPrice());
        service.setExpire(service.getExpire());
        serviceRepository.save(service);
        return true;
    }

    public boolean deleteUser(Long userId) {
        if (userRepository.findById(userId).isPresent()) {
            userRepository.deleteById(userId);
            return true;
        }
        return false;
    }

    public List<User> usergtList(Long idMin) {
        return em.createQuery("SELECT u FROM User u WHERE u.id > :paramId", User.class)
                .setParameter("paramId", idMin).getResultList();
    }
}
