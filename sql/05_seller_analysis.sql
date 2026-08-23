SELECT
    oi.seller_id,

    COUNT(DISTINCT oi.order_id) AS total_orders,

    COUNT(*) AS total_items,

    ROUND(SUM(oi.price), 2) AS total_revenue,

    ROUND(AVG(oi.price), 2) AS average_item_price

FROM `data-analyst-portfolio-505708.ecommerce_analysis.order_items` oi

JOIN `data-analyst-portfolio-505708.ecommerce_analysis.orders` o
    USING (order_id)

WHERE o.order_status = 'delivered'

GROUP BY oi.seller_id

ORDER BY total_revenue DESC

LIMIT 20;
