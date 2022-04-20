package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.GenderModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GenderMapper implements IRowMapper<GenderModel> {
    @Override
    public GenderModel mapRow(ResultSet resultSet) {

        try {
            GenderModel genderModel = new GenderModel();
            genderModel.setId(resultSet.getLong("id"));
            genderModel.setCode(resultSet.getString("code"));

            genderModel.setName(resultSet.getString("name"));

            return genderModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
