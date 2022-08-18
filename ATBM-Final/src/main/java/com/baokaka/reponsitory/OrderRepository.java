package com.baokaka.reponsitory;

import com.baokaka.model.Order;
import com.baokaka.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order,Long>  {

    public List<Order> findOrderByCustomer(User customer);

    public Order getOrderByCode(String code);



}
