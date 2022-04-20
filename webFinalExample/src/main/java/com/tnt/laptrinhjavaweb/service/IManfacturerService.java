package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.ManfacturerModel;
import com.tnt.laptrinhjavaweb.model.OrderModel;

import java.util.List;

public interface IManfacturerService {
    List<ManfacturerModel> findAll();
    ManfacturerModel findOne(long id);



    List<ManfacturerModel> findAllByAdmin();
    ManfacturerModel findOneByAdmin(long id);
    ManfacturerModel updateByAdmin(ManfacturerModel model);
    ManfacturerModel addByAdmin(ManfacturerModel model);
    void deleteByAdmin(Long[] ids);
}
