package com.tjetc.domain;

import java.util.Date;

public class Product {
    private int id;
    private String name;
    private int isHot;//是否热门
    private double marketPrice;//市场价
    private double shopPrice;//商城价>市场价
    private String description;
    private String image;//图片路径
    private Date time;//入库时间
    private int count;//库存
    private Category category;//根据表中scid找到类别

    public Product() {
    }

    public Product(int id, String name, int isHot, double marketPrice, double shopPrice, String description, String image, Date time, int count, Category category) {
        this.id = id;
        this.name = name;
        this.isHot = isHot;
        this.marketPrice = marketPrice;
        this.shopPrice = shopPrice;
        this.description = description;
        this.image = image;
        this.time = time;
        this.count = count;
        this.category = category;
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

    public int getIsHot() {
        return isHot;
    }

    public void setIsHot(int isHot) {
        this.isHot = isHot;
    }

    public double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public double getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(double shopPrice) {
        this.shopPrice = shopPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
