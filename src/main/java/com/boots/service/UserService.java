package com.boots.service;

//import com.boots.entity.Role;
import com.boots.entity.ServiceSub;
import com.boots.entity.User;
//import com.boots.repository.RoleRepository;
import com.boots.entity.UserAndServiceSub;
import com.boots.repository.ServiceSubRepository;
import com.boots.repository.UserAndServiceSubRepository;
import com.boots.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
        //user.setRoles(Collections.singleton(new Role(1L, "ROLE_USER")));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    public void saveUserAndService(ServiceSub service, User user) {
        UserAndServiceSub userAndServiceSub = new UserAndServiceSub();
        userAndServiceSub.setService(service);
        userAndServiceSub.setUser(user);
        userAndServiceSubRepository.save(userAndServiceSub);
    }

    public boolean saveService(ServiceSub service) {
        ServiceSub serviceFromDB = serviceRepository.findByName(service.getName());

        UserDetails userDetailsImpl = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userRepository.findByUsername(userDetailsImpl.getUsername());

        if (serviceFromDB != null) {
            saveUserAndService(serviceFromDB, user);
            return false;
        }

        service.setDescription(service.getDescription());
        service.setName(service.getName());
        //service.setCategory(service.getCategory());
        service.setPrice(service.getPrice());
        service.setExpire(service.getExpire());
        serviceRepository.save(service);

        saveUserAndService(service, user);
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
