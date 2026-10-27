SELECT 
  DATE_TRUNC(DATE(o.created_at), MONTH) AS order_month,
  COUNT(DISTINCT o.order_id) AS total_orders,
  COUNT(DISTINCT o.user_id) AS total_unique_buyers,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM 
  `bigquery-public-data.thelook_ecommerce.orders` AS o
JOIN 
  `bigquery-public-data.thelook_ecommerce.order_items` AS oi
  ON o.order_id = oi.order_id
WHERE 
  o.status = 'Complete' -- Fokus ke pesanan yang sukses
GROUP BY 
  order_month
ORDER BY 
  order_month ASC;
