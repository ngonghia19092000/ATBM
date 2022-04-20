package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.IRowMapper;
import com.tnt.laptrinhjavaweb.RowMapper.ImageMapper;
import com.tnt.laptrinhjavaweb.dao.GenericDAO;
import com.tnt.laptrinhjavaweb.dao.IImageDAO;
import com.tnt.laptrinhjavaweb.model.ImageModel;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ImageDAO extends AbstractDAO<ImageModel> implements IImageDAO {


    @Override
    public void deleteByAdminProduct(long id) {
        String sql = "DELETE FROM image WHERE  product_id = ?";
        update(sql,id);
    }


}
