SELECT
    COUNT(DISTINCT order_id) AS total_delivered_orders,

    COUNTIF(
        order_delivered_customer_date > order_estimated_delivery_date
    ) AS late_orders,

    ROUND(
        COUNTIF(
            order_delivered_customer_date > order_estimated_delivery_date
        ) * 100.0 / COUNT(DISTINCT order_id),
        2
    ) AS late_delivery_rate,

    ROUND(
        AVG(
            DATE_DIFF(
                DATE(order_delivered_customer_date),
                DATE(order_purchase_timestamp),
                DAY
            )
        ),
        2
    ) AS average_delivery_days

FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders`

WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
  AND order_estimated_delivery_date IS NOT NULL;

SELECT
    oi.seller_id,

    COUNT(DISTINCT o.order_id) AS total_orders,

    COUNTIF(
        o.order_delivered_customer_date > o.order_estimated_delivery_date
    ) AS late_orders,

    ROUND(
        COUNTIF(
            o.order_delivered_customer_date > o.order_estimated_delivery_date
        ) * 100.0 / COUNT(DISTINCT o.order_id),
        2
    ) AS late_delivery_rate,

    ROUND(
        AVG(
            DATE_DIFF(
                DATE(o.order_delivered_customer_date),
                DATE(o.order_purchase_timestamp),
                DAY
            )
        ),
        2
    ) AS avg_delivery_days

FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o

JOIN `data-analyst-portfolio-505708.ecommerce_analysis.order_items` oi
    USING (order_id)

WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL

GROUP BY oi.seller_id

HAVING COUNT(DISTINCT o.order_id) >= 50

ORDER BY late_delivery_rate DESC

LIMIT 20;
