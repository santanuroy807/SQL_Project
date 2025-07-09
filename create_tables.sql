
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    subcategory VARCHAR(50),
    product_name VARCHAR(100)
);


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    registration_date DATE
);


CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    region VARCHAR(50),
    quantity INT,
    sale_date DATE,
    price_per_unit DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
