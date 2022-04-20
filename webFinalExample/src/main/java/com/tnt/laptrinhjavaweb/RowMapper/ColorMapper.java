package com.tnt.laptrinhjavaweb.RowMapper;


import com.tnt.laptrinhjavaweb.model.ColorModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ColorMapper implements IRowMapper<ColorModel> {

    @Override
    public ColorModel mapRow(ResultSet resultSet) {
        try {
            ColorModel colorModel = new ColorModel();
            colorModel.setId(resultSet.getLong("id"));
            colorModel.setColors(resultSet.getString("colors"));

            colorModel.setCreatedDate(resultSet.getTimestamp("createddate"));
            colorModel.setCreatedBy(resultSet.getString("createdby"));
            if (resultSet.getTimestamp("modifieddate") != null) {
                colorModel.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby") != null) {
                colorModel.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return colorModel;
        } catch (SQLException e) {
            return null;
        }
    }
}



