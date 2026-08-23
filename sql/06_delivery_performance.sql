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
