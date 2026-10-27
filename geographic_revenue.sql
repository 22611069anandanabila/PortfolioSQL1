SELECT 
  u.country,
  COUNT(DISTINCT o.order_id) AS total_orders,
  COUNT(DISTINCT u.id) AS total_buyers,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue,
  ROUND(SUM(oi.sale_price) * 100.0 / SUM(SUM(oi.sale_price)) OVER(), 2) AS percentage_revenue
FROM 
  `bigquery-public-data.thelook_ecommerce.orders` AS o
JOIN 
  `bigquery-public-data.thelook_ecommerce.order_items` AS oi
  ON o.order_id = oi.order_id
JOIN 
  `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
WHERE 
  o.status = 'Complete'
GROUP BY 
  u.country
ORDER BY 
  total_revenue DESC;
