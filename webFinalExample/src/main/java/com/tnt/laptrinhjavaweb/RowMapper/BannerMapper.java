package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.BannerModel;
import com.tnt.laptrinhjavaweb.model.ImageModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BannerMapper implements IRowMapper<BannerModel>{
    @Override
    public BannerModel mapRow(ResultSet resultSet) throws SQLException {
BannerModel bannerModel= new BannerModel();
bannerModel.setId(resultSet.getLong("id"));
bannerModel.setName(resultSet.getString("name"));
bannerModel.setDescribe(resultSet.getString("describe"));
bannerModel.setStatus(resultSet.getInt("status"));
bannerModel.setImage(resultSet.getString("image"));




        return bannerModel;
    }
}
