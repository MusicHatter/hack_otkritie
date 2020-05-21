package com.boots.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_service")
public class UserAndServiceSub {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //@ManyToOne
    @JoinColumn(name = "user_id")
    //private User user;
    private Long user_id;

    //@ManyToOne
    @JoinColumn(name = "service_id")
    //private ServiceSub service;
    private Long service_id;

    private Long expire;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /*public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ServiceSub getService() {
        return service;
    }

    public void setService(ServiceSub service) {
        this.service = service;
    }*/

    public Long getExpire() {
        return expire;
    }

    public void setExpire(Long expire) {
        this.expire = expire;
    }

    public Long getService_id() {
        return service_id;
    }

    public void setService_id(Long service_id) {
        this.service_id = service_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }
}
