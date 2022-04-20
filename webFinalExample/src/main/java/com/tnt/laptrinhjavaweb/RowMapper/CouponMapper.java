package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.CouponModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CouponMapper implements IRowMapper<CouponModel> {
    @Override
    public CouponModel mapRow(ResultSet resultSet) throws SQLException {
        CouponModel couponModel = new CouponModel();
        couponModel.setId(resultSet.getLong("id"));
        couponModel.setProductId(resultSet.getLong("product_id"));
        couponModel.setName(resultSet.getString("name"));
couponModel.setCode(resultSet.getString("code"));
        couponModel.setFromDate(resultSet.getTimestamp("fromdate"));
        couponModel.setToDate(resultSet.getTimestamp("todate"));
        couponModel.setQuantity(resultSet.getInt("quantity"));
        couponModel.setRemain(resultSet.getInt("remain"));
        couponModel.setPromotion(resultSet.getInt("promotion"));

        return couponModel;
    }
}
