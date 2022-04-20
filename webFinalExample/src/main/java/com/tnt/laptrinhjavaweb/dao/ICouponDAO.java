package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.CouponModel;


import java.util.List;

public interface ICouponDAO extends GenericDAO<CouponModel> {


    CouponModel findOneByAdmin(Long id);
    List<CouponModel>findAllByAdmin();
    void updateByAdmin(CouponModel model);
    Long addByAdmin(CouponModel model);
    void deleteByAdmin(long id);
}
