package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.ICouponDAO;
import com.tnt.laptrinhjavaweb.model.CouponModel;
import com.tnt.laptrinhjavaweb.model.InfomationModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.service.ICouponService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class CouponService implements ICouponService {
    @Inject
    ICouponDAO iCouponDAO;

    @Override
    public List<CouponModel> findAllByAdmin() {
        return iCouponDAO.findAllByAdmin();
    }

    @Override
    public CouponModel findOneByAdmin(long id) {
        return iCouponDAO.findOneByAdmin(id);
    }

    @Override
    public CouponModel updateByAdmin(CouponModel model) {
        CouponModel old = iCouponDAO.findOneByAdmin(model.getId());
        iCouponDAO.updateByAdmin(model);
        return iCouponDAO.findOneByAdmin(model.getId());
    }

    @Override
    public CouponModel addByAdmin(CouponModel model) {
        CouponModel model1 = null;
        Long cpId = 0L;

        cpId = iCouponDAO.addByAdmin(model);
        model1 = iCouponDAO.findOneByAdmin(cpId);
        return model1;
    }

    @Override
    public void deleteByAdmin(Long[] ids) {
            for (Long id : ids) {
                iCouponDAO.deleteByAdmin(id);
            }

    }
}
