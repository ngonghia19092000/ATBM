package com.tnt.laptrinhjavaweb.dao;

import com.tnt.laptrinhjavaweb.model.ImageModel;

import java.util.List;

public interface IImageDAO extends GenericDAO<ImageModel>{


    void deleteByAdminProduct(long id);

}
