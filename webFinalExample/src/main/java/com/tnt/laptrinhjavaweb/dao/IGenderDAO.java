package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.GenderModel;

import java.util.List;

public interface IGenderDAO extends GenericDAO<GenderModel>{
    List<GenderModel>findALL();
}
