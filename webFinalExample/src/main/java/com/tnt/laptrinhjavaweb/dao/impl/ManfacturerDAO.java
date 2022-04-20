package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.ManfacturerMapper;
import com.tnt.laptrinhjavaweb.dao.IManfacturerDAO;
import com.tnt.laptrinhjavaweb.model.ManfacturerModel;

import java.util.List;

public class ManfacturerDAO extends AbstractDAO<ManfacturerModel> implements IManfacturerDAO {
    @Override
    public List<ManfacturerModel> findAll() {
        String sql = "select * from mafacturer";
        return query(sql, new ManfacturerMapper());
    }

    @Override
    public ManfacturerModel findOne(Long id) {
        String sql = "select * from mafacturer where id = ?";
        List<ManfacturerModel> news = query(sql, new ManfacturerMapper(), id);
        return news.isEmpty() ? null : news.get(0);
    }

    @Override
    public ManfacturerModel findOneByAdmin(Long id) {
        String sql = "select * from mafacturer where id = ?";
        List<ManfacturerModel> news = query(sql, new ManfacturerMapper(), id);
        return news.isEmpty() ? null : news.get(0);
    }

    @Override
    public List<ManfacturerModel> findAllByAdmin() {
        return query("Select * from mafacturer ",new ManfacturerMapper());
    }

    @Override
    public void updateByAdmin(ManfacturerModel model) {

    }

    @Override
    public Long addByAdmin(ManfacturerModel model) {
        return null;
    }

    @Override
    public void deleteByAdmin(long id) {

    }
}
