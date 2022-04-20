package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.CouponModel;
import com.tnt.laptrinhjavaweb.model.ManfacturerModel;


import java.util.List;

public interface IManfacturerDAO extends GenericDAO<ManfacturerModel> {
    List<ManfacturerModel> findAll();
    ManfacturerModel findOne(Long id);

    ManfacturerModel findOneByAdmin(Long id);
    List<ManfacturerModel>findAllByAdmin();
    void updateByAdmin(ManfacturerModel model);
    Long addByAdmin(ManfacturerModel model);
    void deleteByAdmin(long id);
}
