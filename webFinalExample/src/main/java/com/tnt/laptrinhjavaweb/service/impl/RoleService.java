package com.tnt.laptrinhjavaweb.service.impl;


import com.tnt.laptrinhjavaweb.dao.IRoleDAO;
import com.tnt.laptrinhjavaweb.model.RoleModel;
import com.tnt.laptrinhjavaweb.service.IRoleService;

import javax.inject.Inject;
import java.util.List;

public class RoleService implements IRoleService {

	@Inject
	IRoleDAO roleDao;
	
	@Override
	public List<RoleModel> findAll() {
		return roleDao.findAll();
	}

}
