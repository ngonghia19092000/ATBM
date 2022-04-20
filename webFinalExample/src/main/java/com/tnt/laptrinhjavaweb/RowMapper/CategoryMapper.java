package com.tnt.laptrinhjavaweb.RowMapper;


import com.tnt.laptrinhjavaweb.model.CategoryModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements IRowMapper<CategoryModel> {

    @Override
    public CategoryModel mapRow(ResultSet resultSet) {
        try {
            CategoryModel category = new CategoryModel();
            category.setId(resultSet.getLong("id"));
            category.setCode(resultSet.getString("code"));
            category.setName(resultSet.getString("name"));
category.setGenderid(resultSet.getLong("gender"));
            category.setGender(resultSet.getString("gender"));
//            category.setCreatedDate(resultSet.getTimestamp("createddate"));
//            category.setCreatedBy(resultSet.getString("createdby"));
//            if (resultSet.getTimestamp("modifieddate") != null) {
//                category.setModifiedDate(resultSet.getTimestamp("modifieddate"));
//            }
//            if (resultSet.getString("modifiedby") != null) {
//                category.setModifiedBy(resultSet.getString("modifiedby"));
//            }

            category.setCreatedDate(resultSet.getTimestamp("createddate"));
            category.setCreatedBy(resultSet.getString("createdby"));

            if (resultSet.getTimestamp("modifieddate") != null) {
                category.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby") != null) {
                category.setModifiedBy(resultSet.getString("modifiedby"));
            }

            return category;
        } catch (SQLException e) {
            return null;
        }
    }
}


