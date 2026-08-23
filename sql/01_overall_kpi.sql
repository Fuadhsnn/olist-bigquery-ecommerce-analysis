SELECT
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.customer_id) AS total_customers,
    ROUND(SUM(p.payment_value), 2) AS total_revenue,
    ROUND(
        SUM(p.payment_value) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
JOIN `data-analyst-portfolio-505708.ecommerce_analysis.order_payments` p
    USING (order_id)
WHERE o.order_status = 'delivered';
