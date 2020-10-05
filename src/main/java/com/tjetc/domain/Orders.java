package com.tjetc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Orders {
    private String id;
    private double total;
    private Date orderTime;
    private int state;//订单状态 1未付款 2已付款 3未收货 4交易完成(购物车确认订单后state=1，提交订单付款后为2，
    private User user;
    private FastMail fastMail;
    private List<OrderItem> orderItems=new ArrayList<OrderItem>();

    public Orders() {
    }

    public Orders(String id, double total, Date orderTime, int state, User user, FastMail fastMail, List<OrderItem> orderItems) {
        this.id = id;
        this.total = total;
        this.orderTime = orderTime;
        this.state = state;
        this.user = user;
        this.fastMail = fastMail;
        this.orderItems = orderItems;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public FastMail getFastMail() {
        return fastMail;
    }

    public void setFastMail(FastMail fastMail) {
        this.fastMail = fastMail;
    }
}
