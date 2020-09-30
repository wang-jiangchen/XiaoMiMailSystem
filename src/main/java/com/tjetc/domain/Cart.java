package com.tjetc.domain;

public class Cart {
    private int id;
    private int count;
    private double subTotal;
    private User user;
    private Product product;

    public Cart() {
    }

    public Cart(int id, int count, double subTotal, User user, Product product) {
        this.id = id;
        this.count = count;
        this.subTotal = subTotal;
        this.user = user;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
