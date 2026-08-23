WITH customer_orders AS (
    SELECT
        o.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
    WHERE o.order_status = 'delivered'
    GROUP BY o.customer_unique_id
)

SELECT
    CASE
        WHEN total_orders = 1 THEN 'One-time customer'
        ELSE 'Repeat customer'
    END AS customer_type,

    COUNT(*) AS total_customers,

    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS customer_share_pct

FROM customer_orders

GROUP BY customer_type
ORDER BY total_customers DESC;
