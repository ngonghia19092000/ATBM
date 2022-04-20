package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.CategoryMapper;
import com.tnt.laptrinhjavaweb.RowMapper.InfomationMapper;
import com.tnt.laptrinhjavaweb.dao.IInformationDAO;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.InfomationModel;

import java.util.List;

public class InformationDAO  extends AbstractDAO<InfomationModel> implements IInformationDAO {
    @Override
    public List<InfomationModel> find() {
        String sql = "Select * from information ";
        return query(sql, new InfomationMapper());
    }

    @Override
    public void update(InfomationModel infomationModel) {
        StringBuilder sql = new StringBuilder("update information set address = ?, phone = ?, email = ?, facebooklink = ?, instagramlink = ?, youtubelink = ?,");
        sql.append(" modifieddate = ?, modifiedby = ? where information.id = ?");

        update(sql.toString(), infomationModel.getAddress(), infomationModel.getPhone(), infomationModel.getEmail(), infomationModel.getFbLink(), infomationModel.getIgLink(), infomationModel.getYtbLink(),
               infomationModel.getModifiedDate(),  infomationModel.getModifiedBy(), infomationModel.getId());

    }

    @Override
    public InfomationModel findOne(Long id) {
        String sql="SELECT * FROM information where id = ?";
        List<InfomationModel> infomationModels = query(sql, new InfomationMapper(), id);
        return infomationModels.isEmpty() ? null : infomationModels.get(0);
    }
}
