package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.InfomationModel;

import java.util.List;

public interface IInformationService {
    List<InfomationModel> find();

    InfomationModel update(InfomationModel infomationModel);

    InfomationModel findOne(Long id);
}
