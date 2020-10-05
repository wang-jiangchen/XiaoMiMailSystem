package com.tjetc.domain;

import java.util.ArrayList;
import java.util.List;

public class Category {
    private int id;
    private String name;
    private Category category;
    private List<Product> products=new ArrayList<Product>();

    public Category() {
    }

    public Category(int id, String name, Category category, List<Product> products) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.products = products;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category=" + category +
                '}';
    }
}
