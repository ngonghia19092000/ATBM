package com.baokaka.reponsitory;

import com.baokaka.model.CartItem;
import com.baokaka.model.Product;
import com.baokaka.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Repository
public interface CartItemReponsitory extends JpaRepository<CartItem,Long> {
    public List<CartItem> findByCustomer(User customer);


    public CartItem findByCustomerAndProduct(User customer, Product product);

    public CartItem findByIdAndCustomer(Long id,User user);
 public List<CartItem> findCartItemsByCustomer(User customer);

    @Query("DELETE FROM CartItem c WHERE c.customer.id = ?1 AND c.product.id = ?2")
    @Modifying
    public void deleteByCustomerAndProduct(Long customerId, Long productId);
    @Query("UPDATE CartItem c SET c.quantity = ?1 WHERE c.product.id= ?2 AND c.customer.id =?3")
    @Modifying
    public void updateQuantity(Integer quantity, Long productId, Long customerId);
}
