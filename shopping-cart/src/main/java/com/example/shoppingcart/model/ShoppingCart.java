package com.example.shoppingcart.model;

import javax.persistence.*;

@Entity
@Table(name = "shoppingcart")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


}
