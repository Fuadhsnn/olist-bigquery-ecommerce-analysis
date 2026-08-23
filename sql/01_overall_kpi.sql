SELECT
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT c.customer_unique_id) AS total_customers,
    ROUND(SUM(oi.price), 2) AS total_revenue,
    ROUND(SUM(oi.price) / COUNT(DISTINCT o.order_id), 2) AS average_order_value
FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
JOIN `data-analyst-portfolio-505708.ecommerce_analysis.customers` c
    ON o.customer_id = c.customer_id
JOIN `data-analyst-portfolio-505708.ecommerce_analysis.order_items` oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered';
