package com.example.product.controller;

import com.example.product.model.Product;
import com.example.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("")
public class ProductController {

    @Autowired
    ProductService productService;
    @GetMapping("/products")
    public ResponseEntity<List<Product>> getProduct(@RequestBody List<Integer> productsId){
        List<Product> productList = new ArrayList<>();

        for (int id : productsId) {
            Product product = productService.getProduct(id);
            if (product != null) {
                productList.add(product);
            }
        }

        if (productList.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }

        return ResponseEntity.status(HttpStatus.OK).body(productList);
    }


    @PostMapping("/updateprice")
    public ResponseEntity<Object> updateProductPrice(){
        productService.updateProductPrice();
        List<Product> allProduct = productService.getAllProduct();
        if(!allProduct.isEmpty()){
            return ResponseEntity.status(HttpStatus.OK).body(allProduct);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND)
                .body("Product not found or table is empty.");
    }

}
