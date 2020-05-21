package com.boots.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "t_service")
public class ServiceSub {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "service_id")
    private Long service_id;
    private String name;
    private String description;
    private double price;
    private String expire;
    private String category;

    @ManyToMany(fetch = FetchType.EAGER,
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            },
            mappedBy = "services")
    //@OneToMany(mappedBy = "service")
    //private Set<UserAndServiceSub> userAndServiceSubs;
    private Set<User> users;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getService_id() {
        return service_id;
    }

    public void setService_id(Long id) {
        this.service_id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getExpire() {
        return expire;
    }

    public void setExpire(String expire) {
        this.expire = expire;
    }

    /*public Set<UserAndServiceSub> getUserAndServiceSubs() {
        return userAndServiceSubs;
    }

    public void setUserAndServiceSubs(Set<UserAndServiceSub> userAndServiceSubs) {
        this.userAndServiceSubs = userAndServiceSubs;
    }*/

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
