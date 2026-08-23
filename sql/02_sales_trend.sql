SELECT
    DATE_TRUNC(DATE(o.order_purchase_timestamp), MONTH) AS month,
    ROUND(SUM(p.payment_value), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
JOIN `data-analyst-portfolio-505708.ecommerce_analysis.order_payments` p
    USING (order_id)
WHERE o.order_status = 'delivered'
GROUP BY month
ORDER BY month;
