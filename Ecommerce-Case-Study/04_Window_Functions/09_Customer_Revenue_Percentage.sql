-- Calculate each customer's percentage contribution to total company revenue.
WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT cr.customer_id,
       c.customer_name,
       cr.total_revenue,
       ROUND(
           100.0 * cr.total_revenue /
           SUM(cr.total_revenue) OVER(),
           2
       ) AS revenue_percentage
FROM customer_revenue cr
JOIN customers c
ON cr.customer_id = c.customer_id
ORDER BY revenue_percentage DESC;