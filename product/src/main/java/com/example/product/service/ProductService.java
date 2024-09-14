package com.example.product.service;

import com.example.product.model.Product;
import com.example.product.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;

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

    @Transactional
    public void updateProductPrice(){
        List<Integer> productIds = productRepository.getAllProductIds();
        for(int id : productIds){
            productRepository.updatePrice(id,genrateRandomPrice());
        }

    }

    public List<Product> getAllProduct(){
        return productRepository.findAll();
    }
    public double genrateRandomPrice(){
        Random random = new Random();
        double min = 1000.0;
        double max = 10000.0;
        return min + (max - min) * random.nextDouble();
    }

}
