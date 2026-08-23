SELECT
    p.payment_type,

    COUNT(DISTINCT p.order_id) AS total_orders,

    ROUND(
        SUM(p.payment_value),
        2
    ) AS total_payment_value,

    ROUND(
        AVG(p.payment_value),
        2
    ) AS average_payment_value

FROM `data-analyst-portfolio-505708.ecommerce_analysis.order_payments` p

JOIN `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
    USING (order_id)

WHERE o.order_status = 'delivered'

GROUP BY p.payment_type

ORDER BY total_payment_value DESC;
