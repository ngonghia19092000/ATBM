package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IColorDAO;
import com.tnt.laptrinhjavaweb.model.ColorModel;
import com.tnt.laptrinhjavaweb.service.IColorService;


import javax.inject.Inject;

import java.util.List;

public class ColorService implements IColorService {
@Inject
IColorDAO colorDAO;

    @Override
    public List<ColorModel> findAll() {
        return colorDAO.findAll();
    }
}
