package com.boots.entity;

import javax.persistence.*;

@Entity
@Table(name = "user_service")
public class UserAndServiceSub {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "service_id")
    private ServiceSub service;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
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
    }
}