package com.tjetc.domain;

public class FastMail {
    private int id;
    private String name;
    private String phone;
    private String address;
    private User user;//根据uid找到user

    public FastMail() {
    }

    public FastMail(int id, String name, String phone, String address, User user) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
