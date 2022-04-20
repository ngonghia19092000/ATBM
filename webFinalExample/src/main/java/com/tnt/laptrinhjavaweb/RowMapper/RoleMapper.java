package com.tnt.laptrinhjavaweb.RowMapper;


import com.tnt.laptrinhjavaweb.model.RoleModel;

import java.sql.ResultSet;

public class RoleMapper implements IRowMapper<RoleModel> {

	@Override
	public RoleModel mapRow(ResultSet resultSet) {
		try {
			RoleModel roles = new RoleModel();
			roles.setId(resultSet.getLong("id"));
			roles.setName(resultSet.getString("name"));
			roles.setName(resultSet.getString("code"));
			roles.setCreatedDate(resultSet.getTimestamp("createddate"));
			roles.setCreatedBy(resultSet.getString("createdby"));
			if(resultSet.getTimestamp("modifieddate") != null) {
				roles.setModifiedDate(resultSet.getTimestamp("modifieddate"));
			}
			if(resultSet.getString("modifiedby") != null) {
				roles.setModifiedBy(resultSet.getString("modifiedby"));
			}
			return roles;
		} catch (Exception e) {
			System.out.print(e);
			return null;
		}
	}

}
