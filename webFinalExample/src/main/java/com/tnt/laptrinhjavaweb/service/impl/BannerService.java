package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IBannerDAO;
import com.tnt.laptrinhjavaweb.dao.IImageDAO;
import com.tnt.laptrinhjavaweb.model.BannerModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IBannerService;
import com.tnt.laptrinhjavaweb.utils.MD5Hashing;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class BannerService implements IBannerService {
    @Inject
    IBannerDAO iBannerDAO;

    @Override
    public List<BannerModel> findAllByAdmin() {
        return iBannerDAO.findAllByAdmin();
    }

    @Override
    public BannerModel findOneByAdmin(long id) {
        return iBannerDAO.findOneByAdmin(id);
    }

    @Override
    public BannerModel updateByAdmin(BannerModel model) {
        BannerModel olP = iBannerDAO.findOneByAdmin(model.getId());
        iBannerDAO.updateByAdmin(model);
        return iBannerDAO.findOneByAdmin(model.getId());
    }

    @Override
    public BannerModel addByAdmin(BannerModel bannerModel) {
        BannerModel model = null;
        Long bannerId = 0L;

        bannerId = iBannerDAO.addByAdmin(bannerModel);
            model = iBannerDAO.findOneByAdmin(bannerId);

        return model;
    }

    @Override
    public void deleteByAdmin(Long[] ids) {
        for (Long id : ids) {

            iBannerDAO.deleteByAdmin(id);

        }
    }
}
