USE northwind_ecommerce;

-- 1. Revenue by year
SELECT
    YEAR(o.orderDate) AS order_year,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue_after_discount
FROM orders o
JOIN order_details od ON od.orderID = o.orderID
GROUP BY YEAR(o.orderDate)
ORDER BY order_year;

-- 2. Revenue by product category
SELECT
    c.categoryName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue_after_discount
FROM categories c
JOIN products p ON p.categoryID = c.categoryID
JOIN order_details od ON od.productID = p.productID
GROUP BY c.categoryID, c.categoryName
ORDER BY revenue_after_discount DESC;

-- 3. Top 10 products by revenue
SELECT
    p.productName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue_after_discount
FROM products p
JOIN order_details od ON od.productID = p.productID
GROUP BY p.productID, p.productName
ORDER BY revenue_after_discount DESC
LIMIT 10;

-- 4. Top 10 customers by revenue
SELECT
    c.companyName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue_after_discount
FROM customers c
JOIN orders o ON o.customerID = c.customerID
JOIN order_details od ON od.orderID = o.orderID
GROUP BY c.customerID, c.companyName
ORDER BY revenue_after_discount DESC
LIMIT 10;

-- 5. Monthly revenue trend
SELECT
    DATE_FORMAT(o.orderDate, '%Y-%m') AS order_month,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue_after_discount
FROM orders o
JOIN order_details od ON od.orderID = o.orderID
GROUP BY DATE_FORMAT(o.orderDate, '%Y-%m')
ORDER BY order_month;
