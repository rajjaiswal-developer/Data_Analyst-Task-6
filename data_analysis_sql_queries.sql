/* Creating the Dataset queries */

-- Creating the Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Inserted values of product table
INSERT ALL
  INTO products (product_id, product_name, category, price) VALUES ('P001', 'Wireless Mouse', 'Electronics', 250.00)
  INTO products (product_id, product_name, category, price) VALUES ('P002', 'Mechanical Keyboard', 'Electronics', 300.00)
  INTO products (product_id, product_name, category, price) VALUES ('P003', 'Noise Cancelling Headphones', 'Electronics', 450.00)
  INTO products (product_id, product_name, category, price) VALUES ('P004', 'External SSD 1TB', 'Electronics', 500.00)
  INTO products (product_id, product_name, category, price) VALUES ('P005', 'Smart Watch', 'Electronics', 620.00)
SELECT * FROM dual;

SELECT * FROM products;

-- Creating the Orders Table
CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    order_date DATE,
    amount NUMBER(10, 2),
    product_id VARCHAR2(10),
    CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- Inserted values of orders table
INSERT ALL
  INTO orders (order_id, order_date, amount, product_id) VALUES (1011, TO_DATE('2023-06-02', 'YYYY-MM-DD'), 360.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1012, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 470.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1013, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 150.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1014, TO_DATE('2023-07-22', 'YYYY-MM-DD'), 620.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1015, TO_DATE('2023-07-29', 'YYYY-MM-DD'), 310.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1016, TO_DATE('2023-08-05', 'YYYY-MM-DD'), 580.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1017, TO_DATE('2023-08-17', 'YYYY-MM-DD'), 430.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1018, TO_DATE('2023-08-30', 'YYYY-MM-DD'), 520.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1019, TO_DATE('2023-09-08', 'YYYY-MM-DD'), 250.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1020, TO_DATE('2023-09-19', 'YYYY-MM-DD'), 600.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1021, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 390.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1022, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 470.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1023, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 290.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1024, TO_DATE('2023-11-03', 'YYYY-MM-DD'), 710.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1025, TO_DATE('2023-11-18', 'YYYY-MM-DD'), 260.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1026, TO_DATE('2023-11-27', 'YYYY-MM-DD'), 480.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1027, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 300.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1028, TO_DATE('2023-12-10', 'YYYY-MM-DD'), 570.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1029, TO_DATE('2023-12-21', 'YYYY-MM-DD'), 640.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1030, TO_DATE('2024-01-04', 'YYYY-MM-DD'), 490.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1031, TO_DATE('2024-01-18', 'YYYY-MM-DD'), 530.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1032, TO_DATE('2024-01-27', 'YYYY-MM-DD'), 610.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1033, TO_DATE('2024-02-06', 'YYYY-MM-DD'), 220.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1034, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 380.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1035, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 460.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1036, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 350.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1037, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 570.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1038, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 420.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1039, TO_DATE('2024-04-04', 'YYYY-MM-DD'), 690.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1040, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 310.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1041, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 480.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1042, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 390.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1043, TO_DATE('2024-05-16', 'YYYY-MM-DD'), 520.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1044, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 610.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1045, TO_DATE('2024-06-09', 'YYYY-MM-DD'), 340.00, 'P003')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1046, TO_DATE('2024-06-21', 'YYYY-MM-DD'), 430.00, 'P001')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1047, TO_DATE('2024-07-05', 'YYYY-MM-DD'), 580.00, 'P004')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1048, TO_DATE('2024-07-12', 'YYYY-MM-DD'), 490.00, 'P002')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1049, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 270.00, 'P005')
  INTO orders (order_id, order_date, amount, product_id) VALUES (1050, TO_DATE('2024-08-18', 'YYYY-MM-DD'), 620.00, 'P003')
SELECT * FROM dual;

SELECT * FROM orders;


/* Main Task Queries */

-- 1. Extract Year and Month from order_date
SELECT 
    order_id,
    order_date,
    TO_CHAR(order_date, 'YYYY') AS year,
    TO_CHAR(order_date, 'MM') AS month
FROM
    orders
ORDER BY
    order_date;


-- 2. Monthly Revenue (SUM(amount) grouped by year/month)
SELECT
    TO_CHAR(order_date, 'YYYY') AS year,
    TO_CHAR(order_date, 'MM') AS month,
    SUM(amount) AS total_revenue
FROM
    orders
GROUP BY
    TO_CHAR(order_date, 'YYYY'),
    TO_CHAR(order_date, 'MM')
ORDER BY
    year, month;


-- 3. Monthly Order Volume (COUNT(DISTINCT order_id) grouped by year/month)
SELECT
    TO_CHAR(order_date, 'YYYY') AS year,
    TO_CHAR(order_date, 'MM') AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    TO_CHAR(order_date, 'YYYY'),
    TO_CHAR(order_date, 'MM')
ORDER BY
    year, month;


-- 4. Limiting results for specific time period (example: year 2023)
SELECT
    TO_CHAR(order_date, 'YYYY') AS year,
    TO_CHAR(order_date, 'MM') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
WHERE
    order_date BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') 
                   AND TO_DATE('2023-12-31', 'YYYY-MM-DD')
GROUP BY
    TO_CHAR(order_date, 'YYYY'),
    TO_CHAR(order_date, 'MM')
ORDER BY
    year, month;

-- Additional Analysis Queries
-- 5. Sales Trend by Product Category
SELECT
    TO_CHAR(o.order_date, 'YYYY') AS year,
    TO_CHAR(o.order_date, 'MM') AS month,
    p.category,
    COUNT(DISTINCT o.order_id) AS order_volume,
    SUM(o.amount) AS total_revenue
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    TO_CHAR(o.order_date, 'YYYY'),
    TO_CHAR(o.order_date, 'MM'),
    p.category
ORDER BY
    year, month, p.category;


-- 6. Top-Selling Products Monthly
SELECT
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    p.product_id,
    p.product_name,
    p.category,
    COUNT(DISTINCT o.order_id) AS order_volume,
    SUM(o.amount) AS revenue
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    TO_CHAR(o.order_date, 'YYYY-MM'),
    p.product_id,
    p.product_name,
    p.category
ORDER BY
    month,
    revenue DESC;


-- 7. Monthly Average Order Value by Product Category
SELECT
    TO_CHAR(o.order_date, 'YYYY') AS year,
    TO_CHAR(o.order_date, 'MM') AS month,
    p.category,
    ROUND(SUM(o.amount) / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    TO_CHAR(o.order_date, 'YYYY'),
    TO_CHAR(o.order_date, 'MM'),
    p.category
ORDER BY
    year, month, p.category;


-- 8. Total Revenue and Orders by Product 
SELECT
    p.product_id,
    p.product_name,
    p.category,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(o.amount) AS total_revenue
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY
    total_revenue DESC;
