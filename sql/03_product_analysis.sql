SELECT
    COALESCE(
        pct.product_category_name_english,
        p.product_category_name,
        'Unknown'
    ) AS product_category,

    COUNT(DISTINCT oi.order_id) AS total_orders,

    SUM(oi.order_item_id) AS total_items,

    ROUND(SUM(oi.price), 2) AS total_revenue

FROM `data-analyst-portfolio-505708.ecommerce_analysis.order_items` oi

JOIN `data-analyst-portfolio-505708.ecommerce_analysis.products` p
    USING (product_id)

LEFT JOIN `data-analyst-portfolio-505708.ecommerce_analysis.product_category_name_translation` pct
    ON p.product_category_name = pct.product_category_name

GROUP BY product_category
ORDER BY total_revenue DESC;
