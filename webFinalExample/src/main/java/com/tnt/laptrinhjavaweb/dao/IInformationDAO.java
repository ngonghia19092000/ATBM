package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.InfomationModel;

import java.util.List;

public interface IInformationDAO extends GenericDAO<InfomationModel> {
    List<InfomationModel> find();
    void update(InfomationModel infomationModel);

    InfomationModel findOne(Long id);


}
