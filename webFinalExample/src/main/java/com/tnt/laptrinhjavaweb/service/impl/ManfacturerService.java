package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IManfacturerDAO;
import com.tnt.laptrinhjavaweb.model.ManfacturerModel;
import com.tnt.laptrinhjavaweb.service.IManfacturerService;

import javax.inject.Inject;
import java.util.List;

public class ManfacturerService implements IManfacturerService {
    @Inject
    private IManfacturerDAO iManfacturerDAO;

    @Override
    public List<ManfacturerModel> findAll() {
        return iManfacturerDAO.findAll();
    }

    @Override
    public ManfacturerModel findOne(long id) {
        return iManfacturerDAO.findOne(id);
    }

    @Override
    public List<ManfacturerModel> findAllByAdmin() {
        return iManfacturerDAO.findAllByAdmin();
    }

    @Override
    public ManfacturerModel findOneByAdmin(long id) {
        return null;
    }

    @Override
    public ManfacturerModel updateByAdmin(ManfacturerModel model) {
        return null;
    }

    @Override
    public ManfacturerModel addByAdmin(ManfacturerModel model) {
        return null;
    }

    @Override
    public void deleteByAdmin(Long[] ids) {

    }
}
