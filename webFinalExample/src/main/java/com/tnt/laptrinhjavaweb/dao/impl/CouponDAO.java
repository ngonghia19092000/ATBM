package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.CouponMapper;
import com.tnt.laptrinhjavaweb.dao.ICategoryDAO;
import com.tnt.laptrinhjavaweb.dao.ICouponDAO;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.CouponModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.utils.MD5Hashing;

import java.sql.Timestamp;
import java.util.List;

public class CouponDAO extends AbstractDAO<CouponModel> implements ICouponDAO {
    @Override
    public CouponModel findOneByAdmin(Long id) {

        String sql = "select * from coupon where id = ?";
        List<CouponModel> news = query(sql, new CouponMapper(), id);
        return news.isEmpty() ? null : news.get(0);

    }

    @Override
    public List<CouponModel> findAllByAdmin() {
        String sql = "select * from coupon";
        List<CouponModel> couponModels = query(sql, new CouponMapper());
        return couponModels;

    }

    @Override
    public void updateByAdmin(CouponModel model) {
        StringBuilder sql = new StringBuilder("update coupon set product_id = ?, name = ?, code = ?, fromdate = ?,  todate = ?, quantity = ?, remain = ?, promotion  = ?");
        sql.append(" where coupon.id = ?");
        update(sql.toString(), model.getProductId(), model.getName(), model.getCode(), model.getFromDate(),
                model.getToDate(), model.getQuantity(), model.getRemain(),  model.getPromotion(), model.getId());


    }

    @Override
    public Long addByAdmin(CouponModel model)
    {
        StringBuilder sql = new StringBuilder("insert into coupon(product_id, name, code, fromdate, todate, quantity, remain, promotion)");
        sql.append(" values(?, ?, ?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(), model.getProductId(), model.getName(), model.getCode(), model.getFromDate(), model.getToDate(),
                model.getQuantity(), model.getRemain(), model.getPromotion());


    }

    @Override
    public void deleteByAdmin(long id) {
String sql ="DELETE FROM coupon WHERE coupon.id = ?";
update(sql, id);
    }
}
