package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IOrderDAO;
import com.tnt.laptrinhjavaweb.dao.IProductDAO;
import com.tnt.laptrinhjavaweb.model.OrderModel;
import com.tnt.laptrinhjavaweb.service.IOrderService;

import javax.inject.Inject;
import java.util.List;

public class OrderService implements IOrderService {
    @Inject
    private IOrderDAO iOrderDAO;

    @Override
    public List<OrderModel> findAllByAdmin() {
        return iOrderDAO.findAllByAdmin();
    }

    @Override
    public OrderModel findOneByAdmin(long id) {
        return iOrderDAO.findOneByAdmin(id);
    }

    @Override
    public OrderModel updateByAdmin(OrderModel model) {
        return null;
    }

    @Override
    public OrderModel addByAdmin(OrderModel model) {
        return null;
    }

    @Override
    public void deleteByAdmin(Long[] ids) {

    }
}
