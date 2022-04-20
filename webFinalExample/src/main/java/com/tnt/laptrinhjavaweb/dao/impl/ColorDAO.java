package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.ColorMapper;
import com.tnt.laptrinhjavaweb.dao.IColorDAO;

import com.tnt.laptrinhjavaweb.model.ColorModel;

import java.util.List;
public class ColorDAO extends AbstractDAO<ColorModel> implements IColorDAO {

@Override
    public List<ColorModel> findAll() {
    String sql = "select * from color";
        return query(sql, new ColorMapper());
    }
}
