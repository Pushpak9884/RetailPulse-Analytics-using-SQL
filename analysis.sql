SELECT
    payment_status,
    COUNT(*) AS payment_count,
    ROUND(SUM(amount), 2) AS payment_amount
FROM payments
GROUP BY payment_status
ORDER BY payment_amount DESC;

SELECT
    payment_method,
    COUNT(*) AS payment_count,
    ROUND(SUM(amount), 2) AS payment_amount
FROM payments
GROUP BY payment_method
ORDER BY payment_amount DESC;

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city
ORDER BY total_spent DESC;


SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY total_orders DESC, total_spent DESC;


USE retailpulse;

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS total_spent,

    CASE
        WHEN SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)) >= 10000
            THEN 'High Value'
        WHEN SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)) >= 3000
            THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment

FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id

WHERE o.order_status <> 'Cancelled'

GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name

ORDER BY total_spent DESC;


USE retailpulse;

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city
ORDER BY total_spent DESC
LIMIT 5;


USE retailpulse;

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,

    CASE
        WHEN COUNT(DISTINCT o.order_id) >= 3 THEN 'Frequent'
        WHEN COUNT(DISTINCT o.order_id) = 2 THEN 'Repeat'
        ELSE 'One-Time'
    END AS purchase_frequency

FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id

GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name

ORDER BY total_orders DESC, customer_name;


USE retailpulse;

SELECT
    ROUND(AVG(customer_spend), 2) AS average_customer_spend
FROM
(
    SELECT
        c.customer_id,
        SUM(
            oi.quantity * oi.unit_price * (1 - oi.discount / 100)
        ) AS customer_spend
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status <> 'Cancelled'
    GROUP BY c.customer_id
) AS customer_sales;

USE retailpulse;

SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price * (1 - oi.discount / 100)
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
    p.category
ORDER BY total_sales DESC;

USE retailpulse;

SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    ROUND(
        SUM(
            oi.quantity * oi.unit_price * (1 - oi.discount / 100)
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
    p.category
ORDER BY units_sold DESC
LIMIT 5;



USE retailpulse;

SELECT
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS gross_sales,
    ROUND(
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS net_sales,
    ROUND(
        SUM(oi.quantity * oi.unit_price)
        -
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount / 100)),
        2
    ) AS total_discount_amount,
    ROUND(AVG(oi.discount), 2) AS average_discount_percent
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status <> 'Cancelled';



USE retailpulse;

SELECT
    i.inventory_id,
    p.product_name,
    p.category,
    i.warehouse,
    i.stock_quantity,
    i.reorder_level,

    CASE
        WHEN i.stock_quantity <= i.reorder_level
            THEN 'Reorder Required'
        WHEN i.stock_quantity <= i.reorder_level + 10
            THEN 'Low Stock'
        ELSE 'Healthy Stock'
    END AS stock_status

FROM inventory i
JOIN products p
    ON i.product_id = p.product_id

ORDER BY i.stock_quantity ASC;



USE retailpulse;

SELECT
    p.product_id,
    p.product_name,
    p.category,
    i.warehouse,
    i.stock_quantity,
    i.reorder_level
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
WHERE i.stock_quantity <= i.reorder_level
ORDER BY i.stock_quantity ASC;

-- STEP 43: RETURN RATE

USE retailpulse;

SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    COALESCE(SUM(r.return_quantity), 0) AS units_returned,

    ROUND(
        COALESCE(SUM(r.return_quantity), 0) * 100.0
        / NULLIF(SUM(oi.quantity), 0),
        2
    ) AS return_rate_percent

FROM products p

JOIN order_items oi
    ON p.product_id = oi.product_id

JOIN orders o
    ON oi.order_id = o.order_id

LEFT JOIN returns r
    ON oi.product_id = r.product_id

WHERE o.order_status <> 'Cancelled'

GROUP BY
    p.product_id,
    p.product_name,
    p.category

ORDER BY return_rate_percent DESC;



USE retailpulse;

SELECT
    return_reason,
    COUNT(*) AS return_count,
    SUM(return_quantity) AS units_returned
FROM returns
GROUP BY return_reason
ORDER BY return_count DESC;


USE retailpulse;

SELECT
    o.order_status,
    p.payment_status,
    COUNT(*) AS transaction_count,
    ROUND(SUM(p.amount), 2) AS total_amount
FROM orders o
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY
    o.order_status,
    p.payment_status
ORDER BY
    o.order_status,
    total_amount DESC;
