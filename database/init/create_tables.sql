-- Create the common database
CREATE DATABASE service_db;

USE common_service_db;

-- Table to store product details
CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Table to store shopping cart information
CREATE TABLE shopping_cart (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL unique
);

-- Table to store items in each shopping cart
CREATE TABLE cart_item (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES shopping_cart(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Table to store logs of price updates
CREATE TABLE price_update_log (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    old_price DECIMAL(10, 2) NOT NULL,
    new_price DECIMAL(10, 2) NOT NULL,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES product(id)
);
