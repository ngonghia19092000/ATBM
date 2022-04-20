package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.GenderMapper;
import com.tnt.laptrinhjavaweb.dao.IGenderDAO;
import com.tnt.laptrinhjavaweb.model.GenderModel;

import java.util.List;

public class GenderDAO extends AbstractDAO<GenderModel> implements IGenderDAO {
    @Override
    public List<GenderModel> findALL() {
        String sql = " select * from gender";
        return query(sql,new GenderMapper()) ;
    }
}
