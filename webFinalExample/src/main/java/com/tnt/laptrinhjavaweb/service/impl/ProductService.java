package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IImageDAO;
import com.tnt.laptrinhjavaweb.dao.IProductDAO;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;
import com.tnt.laptrinhjavaweb.service.IProductService;
import com.tnt.laptrinhjavaweb.utils.MD5Hashing;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;
@Inject
private IImageDAO iImageDAO;
    @Override
    public List<ProductModel> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<String> findNameAllByKeyWord(String key) {
        List<String> stringList = new ArrayList<>();
        List<ProductModel> list = productDAO.findAll();
        for (ProductModel li : list) {
            if (li.getName().toLowerCase().contains(key.toLowerCase())) {
                stringList.add(li.getName());
            }

        }
        return stringList;
    }

    @Override
    public int getTotalItem() {
        return productDAO.getTotalItem();
    }

    @Override
    public int getTotalItemByName(String keyword) {
        return productDAO.getTotalItemByName(keyword);
    }

    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        return productDAO.findAll(pageble);
    }

    @Override
    public List<ProductModel> searchByName(Pageble pageble, String keyword) {
        return productDAO.searchByName(pageble, keyword);
    }

    @Override
    public List<ProductModel> findEightByScore() {
        return null;
    }

    @Override

    public ProductModel findOne(Long id) {
        return productDAO.findOne(id);
    }


    @Override
    public List<ProductModel> searchByManfacturer(Pageble pageble, String keyword) {
        return productDAO.searchByManfacturer(pageble, keyword);
    }

    @Override
    public int getTotalItemByManfacturer(String keyword) {
        return productDAO.getTotalItemByManfacturer(keyword);
    }

    @Override
    public List<ProductModel> findAllByAdmin() {
        return productDAO.findAllByAdmin();
    }

    @Override
    public ProductModel updateByAdmin(ProductModel productModel) {
        ProductModel olP = productDAO.findOneByAdmin(productModel.getId());
        productModel.setModifiedBy("ADMIN");
        productModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        productDAO.updateByAdmin(productModel);
        return productDAO.findOneByAdmin(productModel.getId());
    }

    @Override
    public ProductModel addByAdmin(ProductModel productModel) {
        ProductModel model = null;
        Long productId = 0L;
        productModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        productId = productDAO.addByAdmin(productModel);
        model = productDAO.findOneByAdmin(productId);
        return model;
    }

    @Override
    public void deleteByAdmin(Long[] ids) {
        for (Long id : ids) {
//            iImageDAO.deleteByAdmin(id);
            productDAO.deleteByAdmin(id);


        }
    }

    @Override
    public List<ProductModel> findPopular(int count) {
        return productDAO.findPopular(count);
    }

    @Override
    public List<ProductModel> findSale(int count) {
        return productDAO.findSale(count);
    }

    @Override
    public ProductModel findOneBestSale() {
        return productDAO.findOneBestSale();
    }

    @Override
    public ProductModel findOneByAdmin(Long id) {
        return productDAO.findOneByAdmin(id);
    }


}
