package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.ColorModel;

import java.util.List;

public interface IColorDAO extends GenericDAO<ColorModel>{
    List<ColorModel>findAll();
}
