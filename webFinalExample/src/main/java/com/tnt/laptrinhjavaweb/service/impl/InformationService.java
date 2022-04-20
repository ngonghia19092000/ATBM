package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IInformationDAO;
import com.tnt.laptrinhjavaweb.model.InfomationModel;
import com.tnt.laptrinhjavaweb.service.IInformationService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class InformationService implements IInformationService {
    @Inject
   private IInformationDAO iInformationDAO;
    @Override
    public List<InfomationModel> find() {
        return iInformationDAO.find();
    }

    @Override
    public InfomationModel update(InfomationModel infomationModel) {
        InfomationModel old = iInformationDAO.findOne(infomationModel.getId());
        infomationModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        infomationModel.setModifiedBy("ADMIN");
        iInformationDAO.update(infomationModel);
        return iInformationDAO.findOne(infomationModel.getId());
    }

    @Override
    public InfomationModel findOne(Long id) {
        return iInformationDAO.findOne(id);
    }
}
