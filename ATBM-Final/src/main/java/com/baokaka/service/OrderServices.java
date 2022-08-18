package com.baokaka.service;

import com.baokaka.model.*;
import com.baokaka.reponsitory.OrderRepository;
import com.baokaka.reponsitory.ProductRepository;
import com.baokaka.util.RandomCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class OrderServices {
    @Autowired
    OrderRepository oderRepository;
    @Autowired
    ProductRepository productRepository;
    @Autowired
    CartService cartService;
    public String orderCode = null;

  public   List<List<CartItem>> listItemOrderUsser = new ArrayList<>();
    public List<CartItem> listItemOderByCode = new ArrayList<>();
    public Address addressByOrderCode = new Address();

    public String createOderCode() {
        RandomCode randomCode = new RandomCode();
        orderCode = randomCode.randomAlphaNumeric(19);
        List<Order> orderList = oderRepository.findAll();
        for (int i = 0; i < orderList.size(); i++) {
            if (orderList.get(i).getCode().equals(orderCode)) {
                orderCode = randomCode.randomAlphaNumeric(19);
            } else return orderCode;
        }


        //Sẽ check code ở chỗ này
        return orderCode;
    }
    public  String codeHash = null;
    public String createCodeHash() {
        codeHash=cartService.getListChossePay().size() +orderCode+cartService.totalPay();

        return codeHash;
    }

    public static String[] fomatList(String str) {
        String[] result = str.trim().split("@");
        return result;
    }

    public void newOder(Order order) {
        oderRepository.save(order);

    }

    public String convertCodeToStringToken(List<CartItem> cartItems) {
        String result = "";
        for (int i = 0; i < cartItems.size(); i++) {
            result += cartItems.get(i).getProduct().getId() + "@";
        }
        return result;
    }

    public String convertQtyToStringToken(List<CartItem> cartItems) {
        String result = "";
        for (int i = 0; i < cartItems.size(); i++) {
            result += cartItems.get(i).getQuantity() + "@";
        }
        return result;
    }

    public List<Product> convertStringToProductId(String str) {
        List<Product> productList = new ArrayList<>();
        String[] arrId = fomatList(str);
        Outer:
        for (int i = 0; i < arrId.length; i++) {
            if (arrId[i] == "") break Outer;
            productList.add(productRepository.findProductById(Long.parseLong(arrId[i])));
        }
        return productList;
    }

    public List<Integer> convertStringToQty(String str) {
        List<Integer> list = new ArrayList<>();
        String[] arrId = fomatList(str);
        Outer:
        for (int i = 0; i < arrId.length; i++) {
            if (arrId[i] == "") break Outer;
            list.add(Integer.valueOf(arrId[i]));
        }
        return list;
    }

    public List<Order> orderList = new ArrayList<>();

    //    Lấy ra tất cả các đơn hàng
    public List<Order> getAllOrderByUser(User customer) {
        orderList = oderRepository.findOrderByCustomer(customer);
        return orderList;
    }


    /*
     0 Là hủy
     1 Là chờ xử lý
     2 Đã xác nhận
     3 Đang giao hàng
     4 Đã giao thành công
     */

    public List<Order> getOrderByStatus(int status) {
        List<Order> list = new ArrayList<>();
        if (orderList.size() == 0) {
            return null;
        } else {
            for (Order e : orderList
            ) {
                if (e.getOrder_status() == status) {
                    list.add(e);
                }
            }
            return list;
        }
    }


    //Lấy ra danh sách sacnr phẩm trong 1 đơn hàng
    public List<CartItem> getCartItemByIdOrder(String code) {
        Order order = oderRepository.getOrderByCode(code);
        String proId = order.getListProduct();
        String qty = order.getListQuantity();
        List<CartItem> cartItems = new ArrayList<>();
        List<Integer> integers = convertStringToQty(qty);
        List<Product> productList = convertStringToProductId(proId);

        for (int i = 0; i < integers.size(); i++) {
            CartItem item = new CartItem(productList.get(i), order.getCustomer(), integers.get(i));
            cartItems.add(item);
        }

        return cartItems;
    }




    public void createOder(String code, User customer) {
        Date date = new Date();
        Order order = new Order(code, customer, convertCodeToStringToken(cartService.getListChossePay()), convertQtyToStringToken(cartService.getListChossePay()), date, cartService.totalPay(), 1, cartService.getAddressChosse());
        oderRepository.save(order);
        List<CartItem> dele = cartService.getListChossePay();
        for (CartItem item : dele
        ) {
            cartService.deleteCart(item.getId());

        }

    }


    public Order showOrderDetails(String code) {
        Order order = oderRepository.getOrderByCode(code);
        getCartItemByIdOrder(order.getCode());
        addressByOrderCode = order.getAddress();
        return order;
    }


    public List<OrderItem> getOderItem(User customer){
        List<OrderItem>result= new ArrayList<>();
        getAllOrderByUser(customer);
        for (Order e: orderList
             ) {
            OrderItem item = new OrderItem(e.getId(), e.getCode(),customer,getCartItemByIdOrder(e.getCode()),e.getCreateDate(),e.getSubTotal(),e.getOrder_status(),e.getAddress());
            result.add(item);
        }
        return result;
    }
    public void deleteOrder(Long id){
        oderRepository.deleteById(id);
    }


    public List<OrderItem>getAllOrderStore(){
        List<OrderItem>result= new ArrayList<>();
        List<Order>orderList=oderRepository.findAll();
        for (Order e: orderList
             ) {
            OrderItem item = new OrderItem(e.getId(), e.getCode(),e.getCustomer(),getCartItemByIdOrder(e.getCode()),e.getCreateDate(),e.getSubTotal(),e.getOrder_status(),e.getAddress());
            result.add(item);
        }
        return result;
    }

    public List<Order> getAllOrder() {
        return oderRepository.findAll();
    }

    public Order findOrderById(Long id){
        return oderRepository.findById(id).get();
    }
    public void updateOrder(Order order){
        oderRepository.save(order);
    }
}
