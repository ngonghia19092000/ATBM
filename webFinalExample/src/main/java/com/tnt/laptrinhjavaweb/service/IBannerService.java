package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.BannerModel;


import java.util.List;

public interface IBannerService {


    List<BannerModel> findAllByAdmin();
    BannerModel findOneByAdmin(long id);
    BannerModel updateByAdmin(BannerModel model);
    BannerModel addByAdmin(BannerModel model);
    void deleteByAdmin(Long[] ids);
}
