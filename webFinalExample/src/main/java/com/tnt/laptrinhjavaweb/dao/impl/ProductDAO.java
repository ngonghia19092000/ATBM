package com.tnt.laptrinhjavaweb.dao.impl;



import com.tnt.laptrinhjavaweb.RowMapper.ProductMapper;
import com.tnt.laptrinhjavaweb.dao.IProductDAO;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;



public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAll() {
        String sql = "SELECT * FROM product as p inner join image as i on p.id = i.product_id";
        return query(sql, new ProductMapper());

    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT * FROM product";
        return count(sql);
    }

    @Override
    public int getTotalItemByName(String keyword) {
        StringBuilder sql = new StringBuilder("select * from product where name like");
        sql.append(" '%" + keyword.toLowerCase() + "%'");
        return count(sql.toString());
    }

    @Override
    public int getTotalItemByManfacturer(String keyword) {
        StringBuilder sql = new StringBuilder("select * from product where manfacturerid  =");
        sql.append(" " + Long.parseLong(keyword));
        return count(sql.toString());
    }

    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("select * from product as p inner join image as i on p.id = i.product_id");
        if (pageble.getSorter() != null) {
            sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" limit " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public List<ProductModel> searchByName(Pageble pageble, String keyword) {
        StringBuilder sql = new StringBuilder("select * from product as p inner join image as i on p.id = i.product_id where p.name like");
        sql.append(" '%" + keyword.toLowerCase() + "%'");
        if (pageble.getSorter() != null) {
            sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" limit " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public List<ProductModel> searchByManfacturer(Pageble pageble, String keyword) {
        StringBuilder sql = new StringBuilder("select * from product as p inner join image as i on p.id = i.product_id where p.manfacturerid  =");
        sql.append(" " + Long.parseLong(keyword));
        if (pageble.getSorter() != null) {
            sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" limit " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override

    public ProductModel findOne(Long id) {
        String sql = "select * from product as p inner join image as i on p.id = i.product_id where p.id = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }
    @Override
    public ProductModel findOneByAdmin(Long id) {
        String sql = "select * from product where id = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null :  products.get(0);

    }

    @Override
    public List<ProductModel> findAllByAdmin() {
        String sql ="SELECT * FROM product ";
        return query(sql, new ProductMapper()) ;
    }

    @Override
    public void updateByAdmin(ProductModel model) {
        StringBuilder sql = new StringBuilder("update product set code = ?, name = ?, thumnail = ?, size = ?,  color_id = ?, price = ?, pricesale = ?, description  = ?,");
        sql.append(" quantity = ?, manfacturerid = ?, categoryid = ?, modifieddate = ?, modifiedby = ? where product.id = ?");
        update(sql.toString(), model.getCode(), model.getName(), model.getThumnail(), model.getSize(), model.getColor(), model.getPrice(), model.getPricesale(),  model.getDescription(), model.getQuantity(),
                model.getManfacturerid(),  model.getCategoryid(), model.getModifiedDate(), model.getModifiedBy(),
                  model.getId());

    }

    @Override
    public Long addByAdmin(ProductModel model) {

        StringBuilder sql = new StringBuilder("insert into product (code, name, thumnail, size, color_id, price, pricesale, description, quantity, manfacturerid, categoryid, createddate, createdby)");
        sql.append(" values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(),model.getCode(), model.getName(), model.getThumnail(),
                 model.getSize(), model.getColor(), model.getPrice(), model.getPricesale(), model.getDescription(), model.getQuantity(),
                model.getManfacturerid(), model.getCategoryid(), model.getCreatedDate(),    model.getCreatedBy());

    }

    @Override
    public void deleteByAdmin(long id) {
        String sql = "DELETE FROM product WHERE id= ?";
        update(sql, id);
    }


    @Override
    public List<ProductModel> findPopular(int count) {
        String sql = "SELECT * from product as p inner join image as i on p.id = i.product_id WHERE p.score = (SELECT MAX(product.score) from product) LIMIT ? ";
        List<ProductModel> products = query(sql, new ProductMapper(),count);
        return products;
    }

    @Override
    public List<ProductModel> findSale(int count) {
        String sql = "SELECT * from product as p inner join image as i on p.id = i.product_id WHERE p.pricesale > 0 LIMIT ? ";
        List<ProductModel> products = query(sql, new ProductMapper(), count);
        return products;
    }

    @Override
    public ProductModel findOneBestSale() {
        String sql = "SELECT * from product as p inner join image as i on p.id = i.product_id where p.pricesale = (select min(product.pricesale) from product)";
        List<ProductModel> products = query(sql, new ProductMapper());
        return products.isEmpty() ? null : products.get(0);
    }


}