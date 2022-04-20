package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.InfomationModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class InfomationMapper implements IRowMapper<InfomationModel> {
    @Override
    public InfomationModel mapRow(ResultSet resultSet) throws SQLException {
        InfomationModel infomationModel = new InfomationModel();
        infomationModel.setId(resultSet.getLong("id"));
        infomationModel.setAddress(resultSet.getString("address"));
        infomationModel.setPhone(resultSet.getString("phone"));
        infomationModel.setEmail(resultSet.getString("email"));
        infomationModel.setFbLink(resultSet.getString("facebooklink"));
        infomationModel.setIgLink(resultSet.getString("instagramlink"));
        infomationModel.setYtbLink(resultSet.getString("youtubelink"));
        infomationModel.setCreatedDate(resultSet.getTimestamp("createddate"));
        infomationModel.setCreatedBy(resultSet.getString("createdby"));
        if (resultSet.getTimestamp("modifieddate") != null) {
            infomationModel.setModifiedDate(resultSet.getTimestamp("modifieddate"));
        }
        if (resultSet.getString("modifiedby") != null) {
            infomationModel.setModifiedBy(resultSet.getString("modifiedby"));
        }
        return infomationModel;
    }
}
