package com.baokaka.service;

import com.baokaka.model.Product;
import com.baokaka.reponsitory.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServices {
@Autowired
private ProductRepository productRepository;
    public void saveProduct(Product product) {
        productRepository.save(product);
    }

    public List<Product> listProduct() {
        return productRepository.findAll();
    }

    public Optional<Product> getProductById(Long id) {
        return productRepository.findById(id);
    }

    public void deleteProductById(Long id) {
        productRepository.deleteById(id);
        ;
    }

    public List<Product> search(String keyword) {
        if (keyword != null) {
            return productRepository.search(keyword);
        }
        return productRepository.findAll();
    }
    public void deleteByID(Long id) {
        productRepository.deleteById(id);
    }
}
