package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.OrderModel;


import java.util.List;

public interface IOrderDAO extends GenericDAO<OrderModel>{


    OrderModel findOneByAdmin(Long id);
    List<OrderModel>findAllByAdmin();
    void updateByAdmin(OrderModel model);
    Long addByAdmin(OrderModel model);
    void deleteByAdmin(long id);
}
