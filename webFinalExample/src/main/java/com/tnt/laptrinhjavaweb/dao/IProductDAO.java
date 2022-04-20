package com.tnt.laptrinhjavaweb.dao;


import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;

public interface IProductDAO extends GenericDAO<ProductModel> {
    List<ProductModel> findAll();

    int getTotalItem();

    int getTotalItemByName(String keyword);

    int getTotalItemByManfacturer(String keyword);

    List<ProductModel> findAll(Pageble pageble);

    List<ProductModel> searchByName(Pageble pageble, String keyword);

    List<ProductModel> searchByManfacturer (Pageble pageble, String keyword);

    ProductModel findOne(Long id);

    List<ProductModel> findPopular(int count);

    List<ProductModel> findSale(int count);

    ProductModel findOneBestSale();

    ProductModel findOneByAdmin(Long id);
List<ProductModel>findAllByAdmin();
  void  updateByAdmin(ProductModel model);
    Long addByAdmin(ProductModel model);
    void deleteByAdmin(long id);

}
