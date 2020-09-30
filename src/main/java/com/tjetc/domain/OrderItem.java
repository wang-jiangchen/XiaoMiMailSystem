package com.tjetc.domain;

public class OrderItem {
    private int id;
    private int count;
    private double subTotal;
    private Product product;
    private Orders orders;

    public OrderItem() {
    }

    public OrderItem(int id, int count, double subTotal, Product product, Orders orders) {
        this.id = id;
        this.count = count;
        this.subTotal = subTotal;
        this.product = product;
        this.orders = orders;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
