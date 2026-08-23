SELECT
    CASE
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
            THEN 'Late delivery'
        ELSE 'On-time delivery'
    END AS delivery_status,

    COUNT(DISTINCT o.order_id) AS total_orders,

    ROUND(
        AVG(r.review_score),
        2
    ) AS average_review_score,

    ROUND(
        COUNTIF(r.review_score <= 2) * 100.0
        / COUNT(r.review_score),
        2
    ) AS negative_review_rate

FROM `data-analyst-portfolio-505708.ecommerce_analysis.orders` o

JOIN `data-analyst-portfolio-505708.ecommerce_analysis.order_reviews` r
    USING (order_id)

WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL

GROUP BY delivery_status

ORDER BY delivery_status;
