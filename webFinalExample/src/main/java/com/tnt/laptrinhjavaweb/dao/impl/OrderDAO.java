package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.OrderMapper;
import com.tnt.laptrinhjavaweb.dao.ICategoryDAO;
import com.tnt.laptrinhjavaweb.dao.IOrderDAO;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.OrderModel;

import java.util.List;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO {
    @Override
    public OrderModel findOneByAdmin(Long id) {

        String sql = "select * from oderproduct where id = ?";
        List<OrderModel> news = query(sql, new OrderMapper(), id);
        return news.isEmpty() ? null : news.get(0);
    }

    @Override
    public List<OrderModel> findAllByAdmin() {

        String sql = "select * from orderproduct as o join user as u on o.userName = u.username";
        List<OrderModel> order = query(sql, new OrderMapper());
        return order;

    }

    @Override
    public void updateByAdmin(OrderModel model) {

    }

    @Override
    public Long addByAdmin(OrderModel model) {
        return null;
    }

    @Override
    public void deleteByAdmin(long id) {

    }
}
