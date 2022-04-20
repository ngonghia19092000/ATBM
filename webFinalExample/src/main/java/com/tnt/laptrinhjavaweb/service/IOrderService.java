package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.ManfacturerModel;
import com.tnt.laptrinhjavaweb.model.OrderModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;

import java.util.List;

public interface IOrderService {





    List<OrderModel> findAllByAdmin();
    OrderModel findOneByAdmin(long id);
    OrderModel updateByAdmin(OrderModel model);
    OrderModel addByAdmin(OrderModel model);
    void deleteByAdmin(Long[] ids);
}
