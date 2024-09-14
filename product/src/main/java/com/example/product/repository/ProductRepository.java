package com.example.product.repository;

import com.example.product.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer> {

    @Query("SELECT p.id FROM Product p")
    List<Integer> getAllProductIds();
    Product findById(int id);

    List<Product> findAll();
    @Modifying
    @Transactional
    @Query("UPDATE Product p SET p.price = :price WHERE p.id = :id")
    void updatePrice(@Param("id") int id, @Param("price") double price);


}
