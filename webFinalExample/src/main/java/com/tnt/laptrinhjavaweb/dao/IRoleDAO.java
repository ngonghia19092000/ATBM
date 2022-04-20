package com.tnt.laptrinhjavaweb.dao;


import com.tnt.laptrinhjavaweb.model.RoleModel;
import com.tnt.laptrinhjavaweb.model.UserModel;

import java.util.List;

public interface IRoleDAO extends GenericDAO<RoleModel>{
	RoleModel findOneByCode(String code);
	List<RoleModel> findAll();
}
