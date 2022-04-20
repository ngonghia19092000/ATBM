package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.RowMapper.IRowMapper;

import java.util.List;

public interface GenericDAO <T>{
    <T> List<T> query(String sql , IRowMapper<T> row, Object...parameters);
    void update(String sql, Object...parameters);
    Long insert(String sql, Object...parameters);
    int count(String sql, Object...parameters);
}
