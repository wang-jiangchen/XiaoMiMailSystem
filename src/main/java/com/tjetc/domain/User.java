package com.tjetc.domain;

import java.util.ArrayList;
import java.util.List;

public class User {
    private int id;
    private String username;
    private String password;
    private String name;
    private String phone;
    private String email;
    private int state;
    private List<FastMail> fastMails=new ArrayList<>();

    public User() {
    }

    public User(int id, String username, String password, String name, String phone, String email, int state, List<FastMail> fastMails) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.state = state;
        this.fastMails = fastMails;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<FastMail> getFastMails() {
        return fastMails;
    }

    public void setFastMails(List<FastMail> fastMails) {
        this.fastMails = fastMails;
    }
}
