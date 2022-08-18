package com.baokaka.service;

import com.baokaka.model.Address;
import com.baokaka.model.CartItem;
import com.baokaka.model.Product;
import com.baokaka.model.User;
import com.baokaka.reponsitory.AddressRepository;
import com.baokaka.reponsitory.CartItemReponsitory;
import com.baokaka.reponsitory.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CartService {
    @Autowired
    private CartItemReponsitory cartRepo;

    @Autowired
    private ProductRepository productRepo;

    @Autowired
    private AddressRepository addressRepository;

    public List<CartItem> listCartItems(User customer) {
        return cartRepo.findByCustomer(customer);
    }


    public Integer getCartSizeByCustomer(User customer) {
        Integer result = cartRepo.findByCustomer(customer).size();
        return result;
    }

    public List<CartItem> listChossePay = new ArrayList<>();
    public Address addressChosse = new Address();


    public Integer addProduct(Long productId, Integer quantity, User customer) {
        Integer addedQuantity = quantity;

        Optional<Product> productOptional = productRepo.findById(productId);
        Product product = null;
        if (productOptional.isPresent()) {
            product = productOptional.get();
        }
        CartItem cartItem = cartRepo.findByCustomerAndProduct(customer, product);

        if (cartItem != null) {
            addedQuantity = cartItem.getQuantity() + quantity;
            cartItem.setQuantity(addedQuantity);
        } else {
            cartItem = new CartItem();
            cartItem.setQuantity(quantity);
            cartItem.setCustomer(customer);
            cartItem.setProduct(product);
        }

        cartRepo.save(cartItem);
        return addedQuantity;
    }

    public Integer updateQuantity(Long productId, Integer quantity, User customer) {
        Integer addedQuantity = quantity;

        Optional<Product> productOptional = productRepo.findById(productId);
        Product product = null;
        if (productOptional.isPresent()) {
            product = productOptional.get();
        }
        CartItem cartItem = cartRepo.findByCustomerAndProduct(customer, product);

        if (cartItem != null) {
            addedQuantity = quantity;
            cartItem.setQuantity(addedQuantity);
        } else {
            cartItem = new CartItem();
            cartItem.setQuantity(quantity);
            cartItem.setCustomer(customer);
            cartItem.setProduct(product);
        }

        cartRepo.save(cartItem);
        return addedQuantity;
    }

    //Checked san phẩm
    public List<CartItem> findCartItemById(Long id, User user) {
        listChossePay.add(cartRepo.findByIdAndCustomer(id, user));
        return listChossePay;
    }

    public List<CartItem> getListChossePay() {
        return listChossePay;
    }

    public int totalPay() {
        int result = 0;
        if (listChossePay.size() != 0) {
            for (int i = 0; i < listChossePay.size(); i++) {
                result += listChossePay.get(i).getQuantity() * listChossePay.get(i).getProduct().getPrice();
            }
            return result;
        }
        return result;
    }

    //Uncheck sản phẩm
    public List<CartItem> removeCartCheckout(Long id, User user) {
        CartItem cartItem = cartRepo.findByIdAndCustomer(id, user);
        if (cartItem != null) {
//            for (CartItem cartItem1:listChossePay
//                 ) {
//                if (cartItem1.getId()==cartItem.getId()){
//                    listChossePay.remove(cartItem1)
//                }
//            }
            for (int i = 0; i < listChossePay.size(); i++) {
                if (listChossePay.get(i).getId() == cartItem.getId()) {
                    listChossePay.remove(i);
                }
            }
            return listChossePay;
        }
        return listChossePay;
    }

    //restart list khi redirect tới giỏ hàng
    public void restartListItemCheckout() {
        listChossePay.clear();
    }

    public void removeCartItem(Long productId, User customer) {
        cartRepo.deleteByCustomerAndProduct(customer.getId(), productId);
    }
    public void removeCartItem(User customer) {
        for ( CartItem cartItem:cartRepo.findCartItemsByCustomer(customer)
             ) {
            cartRepo.deleteByCustomerAndProduct(customer.getId(), cartItem.getProduct().getId());
        }
    }

    public void deleteCart(Long id) {
        cartRepo.deleteById(id);
    }

    public void insertDataAddress(Address address){
        addressChosse = address;
    }
    public Address getAddressChosse(){
        return addressChosse;
    }
}
