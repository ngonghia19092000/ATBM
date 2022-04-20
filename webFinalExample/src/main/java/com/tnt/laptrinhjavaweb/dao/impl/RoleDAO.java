package com.tnt.laptrinhjavaweb.dao.impl;


import com.tnt.laptrinhjavaweb.RowMapper.RoleMapper;
import com.tnt.laptrinhjavaweb.dao.IRoleDAO;
import com.tnt.laptrinhjavaweb.model.RoleModel;

import java.util.List;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO {

	@Override
	public RoleModel findOneByCode(String code) {
		String sql="SELECT * FROM role where code= ?";
		List<RoleModel> roleModel = query(sql,new RoleMapper(), code);
		return roleModel.isEmpty() ? null : roleModel.get(0);
	}

	@Override
	public List<RoleModel> findAll() {
		String sql="SELECT * FROM role";
		return query(sql, new RoleMapper());
	}


}
