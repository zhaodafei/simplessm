package com.dafei.model;

import java.math.BigDecimal;

public class Goods {
    private long id;
    private String goodsName;
    private BigDecimal unitPrice;
    private int goodsNumber;
    private BigDecimal countPrice;
    private String consumeWay;
    private String goodsComment;
    private String consumeTime;
    private String createdTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getGoodsNumber() {
        return goodsNumber;
    }

    public void setGoodsNumber(int goodsNumber) {
        this.goodsNumber = goodsNumber;
    }

    public BigDecimal getCountPrice() {
        return countPrice;
    }

    public void setCountPrice(BigDecimal countPrice) {
        this.countPrice = countPrice;
    }

    public String getConsumeWay() {
        return consumeWay;
    }

    public void setConsumeWay(String consumeWay) {
        this.consumeWay = consumeWay;
    }

    public String getGoodsComment() {
        return goodsComment;
    }

    public void setGoodsComment(String goodsComment) {
        this.goodsComment = goodsComment;
    }

    public String getConsumeTime() {
        return consumeTime;
    }

    public void setConsumeTime(String consumeTime) {
        this.consumeTime = consumeTime;
    }

    public String getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime;
    }
}
