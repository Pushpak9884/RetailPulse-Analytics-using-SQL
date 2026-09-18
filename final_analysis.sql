USE retailpulse;

SELECT
    (SELECT COUNT(*) FROM customers) AS total_customers,

    (SELECT COUNT(*) FROM products) AS total_products,

    (SELECT COUNT(*) FROM orders) AS total_orders,

    (SELECT COUNT(*)
     FROM orders
     WHERE order_status = 'Delivered') AS delivered_orders,

    (SELECT COUNT(*)
     FROM orders
     WHERE order_status = 'Cancelled') AS cancelled_orders,

    (SELECT ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    )
    FROM order_items oi
    JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.order_status <> 'Cancelled') AS total_sales,

    (SELECT ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100))
        / COUNT(DISTINCT o.order_id),
        2
    )
    FROM order_items oi
    JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.order_status <> 'Cancelled') AS average_order_value,

    (SELECT COUNT(*) FROM returns) AS total_returns,

    (SELECT COUNT(*)
     FROM inventory
     WHERE stock_quantity <= reorder_level) AS low_stock_products;
     
    
    
    CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ), 2
    ) AS monthly_sales
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m');




CREATE OR REPLACE VIEW vw_product_performance AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ), 2
    ) AS total_sales
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY
    p.product_id,
    p.product_name,
    p.category;
    
    
    USE retailpulse;

CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ),
        2
    ) AS monthly_sales
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m');

SELECT *
FROM vw_monthly_sales
ORDER BY sales_month;

SELECT *
FROM vw_product_performance
ORDER BY total_sales DESC;


CREATE OR REPLACE VIEW vw_product_performance AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ),
        2
    ) AS total_sales
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY
    p.product_id,
    p.product_name,
    p.category;
    
SELECT *
FROM vw_product_performance
ORDER BY total_sales DESC;
  
  
SELECT
    p.category,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ),
        2
    ) AS total_sales
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY p.category
ORDER BY total_sales DESC;


SELECT
    p.product_name,
    p.category,
    i.stock_quantity,
    i.reorder_level,
    CASE
        WHEN i.stock_quantity <= i.reorder_level
            THEN 'Reorder Required'
        ELSE 'Stock Available'
    END AS inventory_action
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
ORDER BY i.stock_quantity ASC;



SELECT
    o.sales_channel,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price *
            (1 - oi.discount / 100)
        ),
        2
    ) AS total_sales
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY o.sales_channel
ORDER BY total_sales DESC;

SELECT
    order_status,
    COUNT(*) AS order_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders),
        2
    ) AS percentage_of_orders
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;
