USE northwind_ecommerce;

-- 1. Order-detail row count and units sold
SELECT
    COUNT(*) AS total_order_detail_rows,
    SUM(quantity) AS total_units_sold
FROM order_details;

-- 2. Revenue before discounts, discount value, and revenue after discounts
SELECT
    ROUND(SUM(unitPrice * quantity), 2) AS revenue_before_discount,
    ROUND(SUM(unitPrice * quantity * discount), 2) AS total_discount,
    ROUND(SUM(unitPrice * quantity * (1 - discount)), 2) AS revenue_after_discount
FROM order_details;

-- 3. Total orders and customers who placed orders
SELECT
    COUNT(DISTINCT orderID) AS total_orders,
    COUNT(DISTINCT customerID) AS customers_with_orders
FROM orders;

-- 4. Shipping KPI validation: shipped orders, late orders (>10 days), percentage
SELECT
    COUNT(DISTINCT CASE
        WHEN shippedDate IS NOT NULL THEN orderID
    END) AS shipped_orders,
    COUNT(DISTINCT CASE
        WHEN shippedDate IS NOT NULL
         AND DATEDIFF(shippedDate, orderDate) > 10
        THEN orderID
    END) AS late_orders,
    ROUND(
        100.0 * COUNT(DISTINCT CASE
            WHEN shippedDate IS NOT NULL
             AND DATEDIFF(shippedDate, orderDate) > 10
            THEN orderID
        END)
        / NULLIF(COUNT(DISTINCT CASE
            WHEN shippedDate IS NOT NULL THEN orderID
        END), 0),
        2
    ) AS late_shipping_percentage
FROM orders;
