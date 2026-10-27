WITH customer_orders AS (
  SELECT 
    user_id,
    COUNT(DISTINCT order_id) AS total_orders
  FROM 
    `bigquery-public-data.thelook_ecommerce.orders`
  WHERE 
    status = 'Complete'
  GROUP BY 
    user_id
),
customer_segments AS (
  SELECT 
    user_id,
    total_orders,
    CASE 
      WHEN total_orders = 1 THEN 'One-time Customer'
      ELSE 'Repeat Customer'
    END AS customer_type
  FROM 
    customer_orders
)
SELECT 
  customer_type,
  COUNT(user_id) AS total_customers,
  ROUND(COUNT(user_id) * 100.0 / SUM(COUNT(user_id)) OVER(), 2) AS percentage_customers
FROM 
  customer_segments
GROUP BY 
  customer_type;
