package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.BannerMapper;
import com.tnt.laptrinhjavaweb.RowMapper.RoleMapper;
import com.tnt.laptrinhjavaweb.dao.IBannerDAO;
import com.tnt.laptrinhjavaweb.model.BannerModel;
import com.tnt.laptrinhjavaweb.model.RoleModel;

import java.util.List;

public class BannerDAO extends AbstractDAO<BannerModel> implements IBannerDAO {
    @Override
    public BannerModel findOneByAdmin(Long id) {
        String sql="SELECT * from banner where banner.id = ?";
        List<BannerModel> bannerModels = query(sql,new BannerMapper(), id);
        return bannerModels.isEmpty() ? null : bannerModels.get(0);
    }

    @Override
    public List<BannerModel> findAllByAdmin() {
        String sql =" select * from banner ";
        return query(sql, new BannerMapper());
    }

    @Override
    public void updateByAdmin(BannerModel model) {
        StringBuilder sql = new StringBuilder("update banner set name = ?, status = ?, describe = ?, image = ? where banner.id = ?");

        update(sql.toString(), model.getName(), model.getStatus(), model.getDescribe(), model.getImage(), model.getId());

    }

    @Override
    public Long addByAdmin(BannerModel model) {
        StringBuilder sql = new StringBuilder("insert into banner (name, status, describe, image )");
        sql.append(" values(?, ?, ?, ?)");
        return insert(sql.toString(),model.getName(), model.getStatus(),model.getDescribe() , model.getImage() );


}

    @Override
    public void deleteByAdmin(long id) {
        String sql = "DELETE FROM banner WHERE  banner.id = ?";
        update(sql,id);
    }
}
