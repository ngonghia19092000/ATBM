package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.ImageModel;
import com.tnt.laptrinhjavaweb.model.OrderModel;
import com.tnt.laptrinhjavaweb.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements IRowMapper<OrderModel> {
    @Override
    public OrderModel mapRow(ResultSet resultSet) throws SQLException {

        OrderModel orderModel = new OrderModel();
        orderModel.setId(resultSet.getLong("id"));
        orderModel.setProductId(resultSet.getLong("product_id"));
        orderModel.setCount(resultSet.getInt("count"));
        orderModel.setTotalPrice(resultSet.getInt("totalprice"));
        orderModel.setAddress(resultSet.getString("address"));
        orderModel.setStatus(resultSet.getInt("status"));
        orderModel.setCreatedDate(resultSet.getTimestamp("createddate"));
        orderModel.setCode(resultSet.getString("code"));
        try {
            UserModel userModel = new UserModel();
            userModel.setUserName(resultSet.getString("username"));
            userModel.setFullName(resultSet.getString("fullname"));
            orderModel.setUserModel(userModel);

        } catch (SQLException e) {
            System.out.println(e);

        }
        return orderModel;

    }
}
