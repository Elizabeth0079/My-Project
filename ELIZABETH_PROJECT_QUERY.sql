USE e_business;

-- WRITE A QUERY TO GET ALL THE CUSTOMERS
SELECT * FROM customers;

-- WRITE A QUERY TO GET ALL THE ORDERS
SELECT * FROM orders;

-- WRITE A QUERY TO GET ALL THE PRODUCTS
SELECT * FROM products;

-- WRITE A QUERY TO GET ALL THE EMPLOYEES
SELECT * FROM employees;

-- Retrieve all customer information including their name, email and phone number
SELECT
	first_name,
    last_name,
    email,
    phone
FROM customers;

-- Retrieve all product information including the product name, unit price, and quantity available
SELECT
	product_name,
    unit_price,
    quantity_available
FROM products;

-- Retrieve all order information including the order id, order date and customer name
SELECT order_id,  order_date,  first_name,  last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- Retrieve all orders for a specific customer by specifying the customer_id
SELECT * 
FROM orders 
WHERE customer_id = 6;

-- Retrieve all orders that were placed between two specific dates
SELECT *
FROM orders
WHERE order_date BETWEEN '2023-02-01' AND '2023-03-02';


