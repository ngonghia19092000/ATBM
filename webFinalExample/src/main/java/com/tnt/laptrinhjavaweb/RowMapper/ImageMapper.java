package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.ImageModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageMapper implements IRowMapper<ImageModel> {
    @Override
    public ImageModel mapRow(ResultSet resultSet) throws SQLException {

            ImageModel imageModel = new ImageModel();

            imageModel.setProductId(resultSet.getLong("product_id"));
            imageModel.setImage1(resultSet.getString("img1"));
            imageModel.setImage2(resultSet.getString("img2"));
            return imageModel;

    }
}
