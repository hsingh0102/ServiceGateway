package com.example.product.service;

import com.example.product.model.Product;
import com.example.product.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;


    public Product getProduct(int productId){

        Product product = productRepository.findById(productId);
        if(product!=null){
            return product;
        }

        return null;
    }
}
