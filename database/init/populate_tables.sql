-- Create the 'product' table
CREATE TABLE IF NOT EXISTS product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert 50 sample data into 'product' table
INSERT IGNORE INTO product (name, price) VALUES
('Laptop', 999.99), ('Smartphone', 499.99), ('Headphones', 79.99),
('Keyboard', 29.99), ('Monitor', 199.99), ('Mouse', 19.99),
('Tablet', 299.99), ('Smartwatch', 199.99), ('Printer', 149.99),
('Desk Lamp', 39.99), ('Gaming Console', 499.99), ('Electric Scooter', 299.99),
('Bluetooth Speaker', 59.99), ('Camera', 649.99), ('External Hard Drive', 89.99),
('Projector', 349.99), ('Wireless Charger', 29.99), ('Fitness Tracker', 99.99),
('Smart Glasses', 249.99), ('VR Headset', 399.99), ('Smart TV', 899.99),
('Electric Toothbrush', 49.99), ('Coffee Maker', 79.99), ('Air Fryer', 129.99),
('Microwave Oven', 199.99), ('Blender', 49.99), ('Water Purifier', 149.99),
('Vacuum Cleaner', 199.99), ('Dishwasher', 699.99), ('Refrigerator', 999.99),
('Washing Machine', 799.99), ('Hair Dryer', 39.99), ('Shaver', 59.99),
('Electric Kettle', 29.99), ('Iron', 49.99), ('Fan', 79.99),
('Dehumidifier', 249.99), ('Air Conditioner', 1199.99), ('Heater', 199.99),
('Smart Doorbell', 149.99), ('Robot Vacuum', 499.99), ('Security Camera', 99.99),
('Water Heater', 299.99), ('Pressure Cooker', 89.99), ('Toaster', 29.99),
('Bread Maker', 149.99), ('Juicer', 99.99), ('Food Processor', 199.99),
('Slow Cooker', 79.99), ('Sandwich Maker', 19.99);


-- Create the 'shopping_cart' table
CREATE TABLE IF NOT EXISTS shopping_cart (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL UNIQUE
);

-- Insert 50 records into 'shopping_cart'
INSERT IGNORE INTO shopping_cart (customer_id) VALUES
(1001), (1002), (1003), (1004), (1005),
(1006), (1007), (1008), (1009), (1010),
(1011), (1012), (1013), (1014), (1015),
(1016), (1017), (1018), (1019), (1020),
(1021), (1022), (1023), (1024), (1025),
(1026), (1027), (1028), (1029), (1030),
(1031), (1032), (1033), (1034), (1035),
(1036), (1037), (1038), (1039), (1040),
(1041), (1042), (1043), (1044), (1045),
(1046), (1047), (1048), (1049), (1050);


-- Create the 'cart_item' table
CREATE TABLE IF NOT EXISTS cart_item (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES shopping_cart(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Insert 50 sample data into 'cart_item' table
INSERT IGNORE INTO cart_item (customer_id, product_id, quantity) VALUES
(1, 1, 1), (1, 2, 2), (1, 3, 1), (1, 4, 3), (1, 5, 2),
(2, 6, 1), (2, 7, 2), (2, 8, 1), (2, 9, 2), (2, 10, 1),
(3, 11, 1), (3, 12, 1), (3, 13, 2), (3, 14, 1), (3, 15, 3),
(4, 16, 2), (4, 17, 1), (4, 18, 3), (4, 19, 2), (4, 20, 1),
(5, 21, 1), (5, 22, 2), (5, 23, 3), (5, 24, 1), (5, 25, 2),
(6, 26, 1), (6, 27, 2), (6, 28, 1), (6, 29, 3), (6, 30, 2),
(7, 31, 1), (7, 32, 1), (7, 33, 2), (7, 34, 1), (7, 35, 3),
(8, 36, 2), (8, 37, 1), (8, 38, 3), (8, 39, 2), (8, 40, 1),
(9, 41, 1), (9, 42, 2), (9, 43, 3), (9, 44, 1), (9, 45, 2),
(10, 46, 1), (10, 47, 2), (10, 48, 1), (10, 49, 3), (10, 50, 2);
