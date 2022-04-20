package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll();
    List<String> findNameAllByKeyWord(String key);
    int getTotalItem();
    int getTotalItemByName(String keyword);
    List<ProductModel> findAll(Pageble pageble);
    List<ProductModel> searchByName(Pageble pageble, String keyword);
    List<ProductModel> findEightByScore();
    ProductModel findOne(Long id);
    List<ProductModel> findPopular(int count);
    List<ProductModel> findSale(int count);
    ProductModel findOneBestSale();
    ProductModel findOneByAdmin(Long id);
    List<ProductModel> searchByManfacturer (Pageble pageble, String keyword);
    int getTotalItemByManfacturer(String keyword);


List<ProductModel>findAllByAdmin();
    ProductModel updateByAdmin(ProductModel productModel);

    ProductModel addByAdmin(ProductModel productModel);
    void deleteByAdmin(Long[] ids);

}