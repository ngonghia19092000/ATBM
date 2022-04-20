package com.tnt.laptrinhjavaweb.service;



import com.tnt.laptrinhjavaweb.model.CouponModel;

import java.util.List;

public interface ICouponService {

    List<CouponModel> findAllByAdmin();
    CouponModel findOneByAdmin(long id);
    CouponModel updateByAdmin(CouponModel model);
    CouponModel addByAdmin(CouponModel model);
    void deleteByAdmin(Long[] ids);
}
