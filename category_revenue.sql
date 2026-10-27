WITH category_revenue AS (
  SELECT 
    p.category,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    COUNT(oi.id) AS total_items_sold,
    ROUND(SUM(oi.sale_price), 2) AS total_revenue
  FROM 
    `bigquery-public-data.thelook_ecommerce.order_items` AS oi
  JOIN 
    `bigquery-public-data.thelook_ecommerce.products` AS p
    ON oi.product_id = p.id
  JOIN 
    `bigquery-public-data.thelook_ecommerce.orders` AS o
    ON oi.order_id = o.order_id
  WHERE 
    o.status = 'Complete'
  GROUP BY 
    p.category
)
SELECT 
  category,
  total_orders,
  total_items_sold,
  total_revenue,
  ROUND(total_revenue * 100.0 / SUM(total_revenue) OVER(), 2) AS percentage_revenue
FROM 
  category_revenue
ORDER BY 
  total_revenue DESC;
