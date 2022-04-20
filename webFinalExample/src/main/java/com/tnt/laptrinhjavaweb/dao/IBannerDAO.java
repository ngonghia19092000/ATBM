package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.BannerModel;


import java.util.List;

public interface IBannerDAO  extends GenericDAO<BannerModel> {

    BannerModel findOneByAdmin(Long id);
    List<BannerModel>findAllByAdmin();
    void updateByAdmin(BannerModel model);
    Long addByAdmin(BannerModel model);
    void deleteByAdmin(long id);
}
