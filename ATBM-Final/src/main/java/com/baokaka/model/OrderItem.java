package com.baokaka.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

public class OrderItem {
    private Long id;
    private String code;
    private User customer;
    private List<CartItem> cartItems;

    private Date createDate;
    private int subTotal;
    private int order_status;
    private Address address;

    public OrderItem(Long id, String code, User customer, List<CartItem> cartItems, Date createDate, int subTotal, int order_status, Address address) {
        this.id = id;
        this.code = code;
        this.customer = customer;
        this.cartItems = cartItems;
        this.createDate = createDate;
        this.subTotal = subTotal;
        this.order_status = order_status;
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(int subTotal) {
        this.subTotal = subTotal;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}