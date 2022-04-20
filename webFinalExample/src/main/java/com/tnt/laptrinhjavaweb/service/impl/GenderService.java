package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.impl.GenderDAO;
import com.tnt.laptrinhjavaweb.model.GenderModel;
import com.tnt.laptrinhjavaweb.service.IGenderService;

import javax.inject.Inject;
import java.util.List;

public class GenderService  implements IGenderService {
    @Inject
    GenderDAO genderDAO;
    @Override
    public List<GenderModel> findAll() {
        return genderDAO.findALL();
    }
}
