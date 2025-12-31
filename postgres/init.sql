-- 1. Clean Slate
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- 2. Create Tables (Normalized 3NF)
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_unique_id VARCHAR(50) NOT NULL,
    zip_code_prefix VARCHAR(10),
    city VARCHAR(100),
    state VARCHAR(50)
);

CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(100),
    price DECIMAL(10,2) -- Simplified for initial seed
);

CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    status VARCHAR(20),
    purchase_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    order_id VARCHAR(50) REFERENCES orders(order_id),
    order_item_id INT, 
    product_id VARCHAR(50) REFERENCES products(product_id),
    seller_id VARCHAR(50),
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    PRIMARY KEY (order_id, order_item_id)
);

-- 3. Seed "Hello World" Data
INSERT INTO customers (customer_unique_id, city, state) VALUES 
('C001', 'New York', 'NY'), 
('C002', 'San Francisco', 'CA'),
('C003', 'Chicago', 'IL');

INSERT INTO products (product_id, category_name, price) VALUES 
('P001', 'toys', 25.50), 
('P002', 'furniture', 150.00);

INSERT INTO orders (order_id, customer_id, status) VALUES 
('O001', 1, 'delivered'),
('O002', 1, 'processing'),
('O003', 2, 'shipped');

INSERT INTO order_items (order_id, order_item_id, product_id, price) VALUES 
('O001', 1, 'P001', 25.50),
('O002', 1, 'P002', 150.00);