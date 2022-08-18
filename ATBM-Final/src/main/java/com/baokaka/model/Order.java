package com.baokaka.model;


import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, unique = true)
    private Long id;


    @Column(name = "code_order")
    private String code;
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private User customer;
    @Column(name = "list_product")
    private String listProduct;
    @Column(name = "list_qty")
    private String listQuantity;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "create_date", nullable = false)
    private Date createDate;

    @Column(name = "bill_total")
    private int subTotal;
    @Column(name = "order_status")
    private int order_status;

    @ManyToOne
    @JoinColumn(name = "address_id")
    private Address address;


    public Order(String code, User customer, String listProduct, String listQuantity, Date createDate, int subTotal, int order_status, Address address) {
        this.code = code;
        this.customer = customer;
        this.listProduct = listProduct;
        this.listQuantity = listQuantity;
        this.createDate = createDate;
        this.subTotal = subTotal;
        this.order_status = order_status;
        this.address = address;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Order() {

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

    public String getListProduct() {
        return listProduct;
    }

    public void setListProduct(String listProduct) {
        this.listProduct = listProduct;
    }

    public String getListQuantity() {
        return listQuantity;
    }

    public void setListQuantity(String listQuantity) {
        this.listQuantity = listQuantity;
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
}